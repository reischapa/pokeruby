#include "global.h"
#include "palette.h"

enum
{
    NORMAL_FADE,
    FAST_FADE,
    HARDWARE_FADE,
};

// These are structs for some unused palette system.
// The full functionality of this system is unknown.

struct PaletteStructTemplate
{
    u16 uid;
    u16 *src;
    u16 pst_field_8_0:1;
    u16 pst_field_8_1:9;
    u16 size:5;
    u16 pst_field_9_7:1;
    u8 pst_field_A;
    u8 srcCount:5;
    u8 pst_field_B_5:3;
    u8 pst_field_C;
};

struct PaletteStruct
{
    struct PaletteStructTemplate *base;
    u32 ps_field_4_0:1;
    u16 ps_field_4_1:1;
    u32 baseDestOffset:9;
    u16 destOffset:10;
    u16 srcIndex:7;
    u8 ps_field_8;
    u8 ps_field_9;
};

extern void sub_800D238(const void *src, void *dest);
extern void BlendPalette(u16, u16, u8, u16);

extern struct PaletteStruct gPaletteStructs[];

extern struct PaletteStructTemplate gDummyPaletteStructTemplate;

static void unused_sub_8073DFC(struct PaletteStruct *, u32 *);
static void unused_sub_8073F60(struct PaletteStruct *, u32 *);
static void unused_sub_8074020(struct PaletteStruct *);
static u8 GetPaletteNumByUid(u16);
static u8 UpdateNormalPaletteFade(void);
static void BeginFastPaletteFadeInternal(u8);
static u8 UpdateFastPaletteFade(void);
static u8 UpdateHardwarePaletteFade(void);
static void UpdateBlendRegisters(void);
static bool8 IsSoftwarePaletteFadeFinishing(void);

void LoadCompressedPalette(const void *src, u16 offset, u16 size)
{
    sub_800D238(src, gPaletteDecompressionBuffer);
    CpuCopy16(gPaletteDecompressionBuffer, gPlttBufferUnfaded + offset, size);
    CpuCopy16(gPaletteDecompressionBuffer, gPlttBufferFaded + offset, size);
}

void LoadPalette(const void *src, u16 offset, u16 size)
{
    CpuCopy16(src, gPlttBufferUnfaded + offset, size);
    CpuCopy16(src, gPlttBufferFaded + offset, size);
}

void FillPalette(u16 value, u16 offset, u16 size)
{
    CpuFill16(gPlttBufferUnfaded + offset, value, size);
    CpuFill16(gPlttBufferFaded + offset, value, size);
}

void TransferPlttBuffer(void)
{
    if (!gPaletteFade.bufferTransferDisabled)
    {
        void *src = gPlttBufferFaded;
        void *dest = (void *)PLTT;
        DmaCopy16(3, src, dest, PLTT_SIZE);
        gPlttBufferTransferPending = 0;
        if (gPaletteFade.mode == HARDWARE_FADE && gPaletteFade.active)
            UpdateBlendRegisters();
    }
}

u8 UpdatePaletteFade(void)
{
    u8 result;
    u8 dummy = 0;
 
    if (gPlttBufferTransferPending)
        return -1;

    if (gPaletteFade.mode == NORMAL_FADE)
        result = UpdateNormalPaletteFade();
    else if (gPaletteFade.mode == FAST_FADE)
        result = UpdateFastPaletteFade();
    else
        result = UpdateHardwarePaletteFade();

    gPlttBufferTransferPending = gPaletteFade.multipurpose1 | dummy;

    return result;
}

void ResetPaletteFade(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
        ResetPaletteStruct(i);

    ResetPaletteFadeControl();
}

void ReadPlttIntoBuffers(void)
{
    u16 i;
    u16 *pltt = (u16 *)PLTT;

    for (i = 0; i < PLTT_SIZE / 2; i++)
    {
        gPlttBufferUnfaded[i] = pltt[i];
        gPlttBufferFaded[i] = pltt[i];
    }
}

bool8 BeginNormalPaletteFade(u32 selectedPalettes, s8 delay, u8 startY, u8 targetY, u16 blendColor)
{
    u8 temp;
    register u32 _blendColor asm("r8") = blendColor;

    if (gPaletteFade.active)
    {
        return FALSE;
    }
    else
    {
        gPaletteFade.deltaY = 2;

        if (delay < 0)
        {
            gPaletteFade.deltaY += (delay * -1);
            delay = 0;
        }

        gPaletteFade_selectedPalettes = selectedPalettes;
        gPaletteFade.delayCounter = delay;
        gPaletteFade_delay = delay;
        gPaletteFade.y = startY;
        gPaletteFade.targetY = targetY;
        gPaletteFade.blendColor = _blendColor;
        gPaletteFade.active = 1;
        gPaletteFade.mode = NORMAL_FADE;

        if (startY < targetY)
            gPaletteFade.yDec = 0;
        else
            gPaletteFade.yDec = 1;

        UpdatePaletteFade();

        temp = gPaletteFade.bufferTransferDisabled;
        gPaletteFade.bufferTransferDisabled = 0;
        CpuCopy32(gPlttBufferFaded, (void *)PLTT, PLTT_SIZE);
        gPlttBufferTransferPending = 0;
        if (gPaletteFade.mode == HARDWARE_FADE && gPaletteFade.active)
            UpdateBlendRegisters();
        gPaletteFade.bufferTransferDisabled = temp;
        return TRUE;
    }
}

bool8 unref_sub_8073D3C(u32 a1, u8 a2, u8 a3, u8 a4, u16 a5)
{
    ReadPlttIntoBuffers();
    return BeginNormalPaletteFade(a1, a2, a3, a4, a5);
}

void unref_sub_8073D84(u8 a1, u32 *a2)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        struct PaletteStruct *palstruct = &gPaletteStructs[i];
        if (palstruct->ps_field_4_0)
        {
            if (palstruct->base->pst_field_8_0 == a1)
            {
                u8 val1 = palstruct->srcIndex;
                u8 val2 = palstruct->base->srcCount;
                if (val1 == val2)
                {
                    unused_sub_8074020(palstruct);
                    if (!palstruct->ps_field_4_0)
                        continue;
                }
                if (palstruct->ps_field_8 == 0)
                    unused_sub_8073DFC(palstruct, a2);
                else
                    palstruct->ps_field_8--;

                unused_sub_8073F60(palstruct, a2);
            }
        }
    }
}

static void unused_sub_8073DFC(struct PaletteStruct *a1, u32 *a2)
{
    s32 srcIndex;
    s32 srcCount;
    u8 i = 0;
    u16 srcOffset = a1->srcIndex * a1->base->size;

    if (!a1->base->pst_field_8_0)
    {
        while (i < a1->base->size)
        {
            gPlttBufferUnfaded[a1->destOffset] = a1->base->src[srcOffset];
            gPlttBufferFaded[a1->destOffset] = a1->base->src[srcOffset];
            i++;
            a1->destOffset++;
            srcOffset++;
        }
    }
    else
    {
        while (i < a1->base->size)
        {
            gPlttBufferFaded[a1->destOffset] = a1->base->src[srcOffset];
            i++;
            a1->destOffset++;
            srcOffset++;
        }
    }

    a1->destOffset = a1->baseDestOffset;
    a1->ps_field_8 = a1->base->pst_field_A;
    a1->srcIndex++;

    srcIndex = a1->srcIndex;
    srcCount = a1->base->srcCount;

    if (srcIndex >= srcCount)
    {
        if (a1->ps_field_9)
            a1->ps_field_9--;
        a1->srcIndex = 0;
    }
 
    *a2 |= 1 << (a1->baseDestOffset >> 4);
}

static void unused_sub_8073F60(struct PaletteStruct *a1, u32 *a2)
{
    if (gPaletteFade.active && ((1 << (a1->baseDestOffset >> 4)) & gPaletteFade_selectedPalettes))
    {
        if (!a1->base->pst_field_8_0)
        {
            if (gPaletteFade.delayCounter != gPaletteFade_delay)
            {
                BlendPalette(
                    a1->baseDestOffset,
                    a1->base->size,
                    gPaletteFade.y,
                    gPaletteFade.blendColor);
            }
        }
        else
        {
            if (!gPaletteFade.delayCounter)
            {
                if (a1->ps_field_8 != a1->base->pst_field_A)
                {
                    u32 srcOffset = a1->srcIndex * a1->base->size;
                    u8 i;

                    for (i = 0; i < a1->base->size; i++)
                        gPlttBufferFaded[a1->baseDestOffset + i] = a1->base->src[srcOffset + i];
                }
            }
        }
    }
}

static void unused_sub_8074020(struct PaletteStruct *a1)
{
    if (!a1->ps_field_9)
    {
        s32 val = a1->base->pst_field_B_5;

        if (!val)
        {
            a1->srcIndex = 0;
            a1->ps_field_8 = a1->base->pst_field_A;
            a1->ps_field_9 = a1->base->pst_field_C;
            a1->destOffset = a1->baseDestOffset;
        }
        else
        {
            if (val < 0)
                return;
            if (val > 2)
                return;
            ResetPaletteStructByUid(a1->base->uid);
        }
    }
    else
    {
        a1->ps_field_9--;
    }
}

void ResetPaletteStructByUid(u16 a1)
{
    u8 paletteNum = GetPaletteNumByUid(a1);
    if (paletteNum != 16)
        ResetPaletteStruct(paletteNum);
}

void ResetPaletteStruct(u8 paletteNum)
{
    gPaletteStructs[paletteNum].base = &gDummyPaletteStructTemplate;
    gPaletteStructs[paletteNum].ps_field_4_0 = 0;
    gPaletteStructs[paletteNum].baseDestOffset = 0;
    gPaletteStructs[paletteNum].destOffset = 0;
    gPaletteStructs[paletteNum].srcIndex = 0;
    gPaletteStructs[paletteNum].ps_field_4_1 = 0;
    gPaletteStructs[paletteNum].ps_field_8 = 0;
    gPaletteStructs[paletteNum].ps_field_9 = 0;
}

void ResetPaletteFadeControl()
{
    gPaletteFade.multipurpose1 = 0;
    gPaletteFade.multipurpose2 = 0;
    gPaletteFade.delayCounter = 0;
    gPaletteFade.y = 0;
    gPaletteFade.targetY = 0;
    gPaletteFade.blendColor = 0;
    gPaletteFade.active = 0;
    gPaletteFade.multipurpose2 = 0; // assign same value twice
    gPaletteFade.yDec = 0;
    gPaletteFade.bufferTransferDisabled = 0;
    gPaletteFade.shouldResetBlendRegisters = 0;
    gPaletteFade.hardwareFadeFinishing = 0;
    gPaletteFade.softwareFadeFinishing = 0;
    gPaletteFade.softwareFadeFinishingCounter = 0;
    gPaletteFade.objPaletteToggle = 0;
    gPaletteFade.deltaY = 2;
}

void unref_sub_8074168(u16 uid)
{
    u8 paletteNum = GetPaletteNumByUid(uid);
    if (paletteNum != 16)
        gPaletteStructs[paletteNum].ps_field_4_1 = 1;
}

void unref_sub_8074194(u16 uid)
{
    u8 paletteNum = GetPaletteNumByUid(uid);
    if (paletteNum != 16)
        gPaletteStructs[paletteNum].ps_field_4_1 = 0;
}

static u8 GetPaletteNumByUid(u16 uid)
{
    u8 i;

    for (i = 0; i < 16; i++)
        if (gPaletteStructs[i].base->uid == uid)
            return i;

    return 16;
}

static u8 UpdateNormalPaletteFade()
{
    u16 paletteOffset;
    u16 selectedPalettes;

    if (!gPaletteFade.active)
        return 0;

    if (IsSoftwarePaletteFadeFinishing())
    {
        return gPaletteFade.active;
    }
    else
    {
        if (!gPaletteFade.objPaletteToggle)
        {
            if (gPaletteFade.delayCounter < gPaletteFade_delay)
            {
                gPaletteFade.delayCounter++;
                return 2;
            }
            gPaletteFade.delayCounter = 0;
        }

        paletteOffset = 0;

        if (!gPaletteFade.objPaletteToggle)
        {
            selectedPalettes = gPaletteFade_selectedPalettes;
        }
        else
        {
            selectedPalettes = gPaletteFade_selectedPalettes >> 16;
            paletteOffset = 256;
        }

        while (selectedPalettes)
        {
            if (selectedPalettes & 1)
                BlendPalette(
                    paletteOffset,
                    16,
                    gPaletteFade.y,
                    gPaletteFade.blendColor);
            selectedPalettes >>= 1;
            paletteOffset += 16;
        }

        gPaletteFade.objPaletteToggle ^= 1;

        if (!gPaletteFade.objPaletteToggle)
        {
            if (gPaletteFade.y == gPaletteFade.targetY)
            {
                gPaletteFade_selectedPalettes = 0;
                gPaletteFade.softwareFadeFinishing = 1;
            }
            else
            {
                s8 val;
                
                if (!gPaletteFade.yDec)
                {
                    val = gPaletteFade.y;
                    val += gPaletteFade.deltaY;
                    if (val > gPaletteFade.targetY)
                        val = gPaletteFade.targetY;
                    gPaletteFade.y = val;
                }
                else
                {
                    val = gPaletteFade.y;
                    val -= gPaletteFade.deltaY;
                    if (val < gPaletteFade.targetY)
                        val = gPaletteFade.targetY;
                    gPaletteFade.y = val;
                }
            }
        }

        return gPaletteFade.active;
    }
}

void InvertPlttBuffer(u32 selectedPalettes)
{
    u16 paletteOffset = 0;
    
    while (selectedPalettes)
    {
        if (selectedPalettes & 1)
        {
            u8 i;
            for (i = 0; i < 16; i++)
                gPlttBufferFaded[paletteOffset + i] = ~gPlttBufferFaded[paletteOffset + i];
        }
        selectedPalettes >>= 1;
        paletteOffset += 16;
    }
}

void TintPlttBuffer(u32 selectedPalettes, s8 r, s8 g, s8 b)
{
    u16 paletteOffset = 0;
    
    while (selectedPalettes)
    {
        if (selectedPalettes & 1)
        {
            u8 i;
            for (i = 0; i < 16; i++)
            {
                struct PlttData *data = (struct PlttData *)&gPlttBufferFaded[paletteOffset + i];
                data->r += r;
                data->g += g;
                data->b += b;
            }
        }
        selectedPalettes >>= 1;
        paletteOffset += 16;
    }
}

void UnfadePlttBuffer(u32 selectedPalettes)
{
    u16 paletteOffset = 0;
    
    while (selectedPalettes)
    {
        if (selectedPalettes & 1)
        {
            u8 i;
            for (i = 0; i < 16; i++)
                gPlttBufferFaded[paletteOffset + i] = gPlttBufferUnfaded[paletteOffset + i];
        }
        selectedPalettes >>= 1;
        paletteOffset += 16;
    }
}

void BeginFastPaletteFade(u8 submode)
{
    gPaletteFade.deltaY = 2;
    BeginFastPaletteFadeInternal(submode);
}

static void BeginFastPaletteFadeInternal(u8 submode)
{
    gPaletteFade.y = 31;
    gPaletteFade_submode = submode & 0x3F;
    gPaletteFade.active = 1;
    gPaletteFade.mode = FAST_FADE;

    if (submode == FAST_FADE_IN_FROM_BLACK)
        CpuFill16(gPlttBufferFaded, RGB_BLACK, PLTT_SIZE);

    if (submode == FAST_FADE_IN_FROM_WHITE)
        CpuFill16(gPlttBufferFaded, RGB_WHITE, PLTT_SIZE);

    UpdatePaletteFade();
}

static u8 UpdateFastPaletteFade(void)
{
    u16 i;
    u16 paletteOffsetStart;
    u16 paletteOffsetEnd;
    s8 r0;
    s8 g0;
    s8 b0;
    s8 r;
    s8 g;
    s8 b;

    if (!gPaletteFade.active)
        return 0;

    if (IsSoftwarePaletteFadeFinishing())
        return gPaletteFade.active;

    if (gPaletteFade.objPaletteToggle)
    {
        paletteOffsetStart = 256;
        paletteOffsetEnd = 512;
    }
    else
    {
        paletteOffsetStart = 0;
        paletteOffsetEnd = 256;
    }

    switch (gPaletteFade_submode)
    {
    case FAST_FADE_IN_FROM_WHITE:
        for (i = paletteOffsetStart; i < paletteOffsetEnd; i++)
        {
            struct PlttData *unfaded;
            struct PlttData *faded;

            unfaded = (struct PlttData *)&gPlttBufferUnfaded[i];
            r0 = unfaded->r;
            g0 = unfaded->g;
            b0 = unfaded->b;

            faded = (struct PlttData *)&gPlttBufferFaded[i];
            r = faded->r - 2;
            g = faded->g - 2;
            b = faded->b - 2;

            if (r < r0)
                r = r0;
            if (g < g0)
                g = g0;
            if (b < b0)
                b = b0;

            gPlttBufferFaded[i] = r | (g << 5) | (b << 10);
        }
        break;
    case FAST_FADE_OUT_TO_WHTIE:
        for (i = paletteOffsetStart; i < paletteOffsetEnd; i++)
        {
            struct PlttData *data = (struct PlttData *)&gPlttBufferFaded[i];
            r = data->r + 2;
            g = data->g + 2;
            b = data->b + 2;

            if (r > 31)
                r = 31;
            if (g > 31)
                g = 31;
            if (b > 31)
                b = 31;

            gPlttBufferFaded[i] = r | (g << 5) | (b << 10);
        }
        break;
    case FAST_FADE_IN_FROM_BLACK:
        for (i = paletteOffsetStart; i < paletteOffsetEnd; i++)
        {
            struct PlttData *unfaded;
            struct PlttData *faded;

            unfaded = (struct PlttData *)&gPlttBufferUnfaded[i];
            r0 = unfaded->r;
            g0 = unfaded->g;
            b0 = unfaded->b;

            faded = (struct PlttData *)&gPlttBufferFaded[i];
            r = faded->r + 2;
            g = faded->g + 2;
            b = faded->b + 2;

            if (r > r0)
                r = r0;
            if (g > g0)
                g = g0;
            if (b > b0)
                b = b0;

            gPlttBufferFaded[i] = r | (g << 5) | (b << 10);
        }
        break;
    case FAST_FADE_OUT_TO_BLACK:
        for (i = paletteOffsetStart; i < paletteOffsetEnd; i++)
        {
            struct PlttData *data = (struct PlttData *)&gPlttBufferFaded[i];
            r = data->r - 2;
            g = data->g - 2;
            b = data->b - 2;

            if (r < 0)
                r = 0;
            if (g < 0)
                g = 0;
            if (b < 0)
                b = 0;

            gPlttBufferFaded[i] = r | (g << 5) | (b << 10);
        }
    }

    gPaletteFade.objPaletteToggle ^= 1;

    if (gPaletteFade.objPaletteToggle)
        return gPaletteFade.active;

    if (gPaletteFade.y - gPaletteFade.deltaY < 0)
        gPaletteFade.y = 0;
    else
        gPaletteFade.y -= gPaletteFade.deltaY;

    if (gPaletteFade.y == 0)
    {
        switch (gPaletteFade_submode)
        {
        case FAST_FADE_IN_FROM_WHITE:
        case FAST_FADE_IN_FROM_BLACK:
            CpuCopy32(gPlttBufferUnfaded, gPlttBufferFaded, PLTT_SIZE);
            break;
        case FAST_FADE_OUT_TO_WHTIE:
            CpuFill32(gPlttBufferFaded, 0xFFFFFFFF, PLTT_SIZE);
            break;
        case FAST_FADE_OUT_TO_BLACK:
            CpuFill32(gPlttBufferFaded, 0, PLTT_SIZE);
            break;
        }

        gPaletteFade.mode = NORMAL_FADE;
        gPaletteFade.softwareFadeFinishing = 1;
    }

    return gPaletteFade.active;
}

void BeginHardwarePaletteFade(u8 blendCnt, u8 delay, u8 y, u8 targetY, u8 shouldResetBlendRegisters)
{
    gPaletteFade_blendCnt = blendCnt;
    gPaletteFade.delayCounter = delay;
    gPaletteFade_delay = delay;
    gPaletteFade.y = y;
    gPaletteFade.targetY = targetY;
    gPaletteFade.active = 1;
    gPaletteFade.mode = HARDWARE_FADE;
    gPaletteFade.shouldResetBlendRegisters = shouldResetBlendRegisters & 1;
    gPaletteFade.hardwareFadeFinishing = 0;

    if (y < targetY)
        gPaletteFade.yDec = 0;
    else
        gPaletteFade.yDec = 1;
}

static u8 UpdateHardwarePaletteFade(void)
{
    if (!gPaletteFade.active)
        return 0;

    if (gPaletteFade.delayCounter < gPaletteFade_delay)
    {
        gPaletteFade.delayCounter++;
        return 2;
    }

    gPaletteFade.delayCounter = 0;

    if (!gPaletteFade.yDec)
    {
        gPaletteFade.y++;
        if (gPaletteFade.y > gPaletteFade.targetY)
        {
            gPaletteFade.hardwareFadeFinishing++;
            gPaletteFade.y--;
        }
    }
    else
    {
        s32 y = gPaletteFade.y--;
        if (y - 1 < gPaletteFade.targetY)
        {
            gPaletteFade.hardwareFadeFinishing++;
            gPaletteFade.y++;
        }
    }

    if (gPaletteFade.hardwareFadeFinishing)
    {
        if (gPaletteFade.shouldResetBlendRegisters)
        {
            gPaletteFade_blendCnt = 0;
            gPaletteFade.y = 0;
        }
        gPaletteFade.shouldResetBlendRegisters = 0;
    }

    return gPaletteFade.active;
}

static void UpdateBlendRegisters(void)
{
    REG_BLDCNT = gPaletteFade_blendCnt;
    REG_BLDY = gPaletteFade.y;
    if (gPaletteFade.hardwareFadeFinishing)
    {
        gPaletteFade.hardwareFadeFinishing = 0;
        gPaletteFade.mode = 0;
        gPaletteFade_blendCnt = 0;
        gPaletteFade.y = 0;
        gPaletteFade.active = 0;
    }
}

static bool8 IsSoftwarePaletteFadeFinishing(void)
{
    if (gPaletteFade.softwareFadeFinishing)
    {
        if (gPaletteFade.softwareFadeFinishingCounter == 4)
        {
            gPaletteFade.active = 0;
            gPaletteFade.softwareFadeFinishing = 0;
            gPaletteFade.softwareFadeFinishingCounter = 0;
        }
        else
        {
            gPaletteFade.softwareFadeFinishingCounter++;
        }

        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

void BlendPalettes(u32 selectedPalettes, u8 coeff, u16 color)
{
    u16 paletteOffset;

    for (paletteOffset = 0; selectedPalettes; paletteOffset += 16)
    {
        if (selectedPalettes & 1)
            BlendPalette(paletteOffset, 16, coeff, color);
        selectedPalettes >>= 1;
    }
}

void BlendPalettesUnfaded(u32 selectedPalettes, u8 coeff, u16 color)
{
    void *src = gPlttBufferUnfaded;
    void *dest = gPlttBufferFaded;
    DmaCopy32(3, src, dest, PLTT_SIZE);
    BlendPalettes(selectedPalettes, coeff, color);
}