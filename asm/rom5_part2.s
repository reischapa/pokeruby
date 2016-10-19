	.include "constants/gba_constants.s"
	.include "constants/species_constants.s"
	.include "asm/macros.s"

	.syntax unified

	.text

	thumb_func_start sub_808D344
sub_808D344: @ 808D344
	push {r4-r6,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _0808D364
	ldr r2, _0808D368
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x6
	bhi _0808D38C
	lsls r0, 2
	ldr r1, _0808D36C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808D364: .4byte gMain
_0808D368: .4byte 0x0000043c
_0808D36C: .4byte _0808D370
	.align 2, 0
_0808D370:
	.4byte _0808D38C
	.4byte _0808D49C
	.4byte _0808D4D8
	.4byte _0808D50C
	.4byte _0808D564
	.4byte _0808D590
	.4byte _0808D610
_0808D38C:
	ldr r0, _0808D3FC
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0
	beq _0808D39E
	b _0808D634
_0808D39E:
	movs r0, 0
	bl SetVBlankCallback
	ldr r4, _0808D400
	ldr r0, [r4]
	ldr r1, _0808D404
	adds r0, r1
	strb r5, [r0]
	movs r0, 0
	bl sub_8091060
	ldr r1, _0808D408
	ldr r0, [r4]
	ldr r2, _0808D40C
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r0, _0808D410
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, _0808D414
	ldr r1, _0808D418
	bl LZ77UnCompVram
	ldr r0, _0808D41C
	ldr r1, _0808D420
	bl LZ77UnCompVram
	ldr r1, _0808D424
	add r0, sp, 0x4
	strh r6, [r0]
	ldr r0, _0808D428
	add r2, sp, 0x4
	str r2, [r0]
	str r1, [r0, 0x4]
	ldr r1, _0808D42C
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	cmp r5, 0
	bne _0808D438
	ldr r0, _0808D430
	ldr r1, _0808D434
	bl LZ77UnCompVram
	b _0808D440
	.align 2, 0
_0808D3FC: .4byte gPaletteFade
_0808D400: .4byte gUnknown_0202FFB4
_0808D404: .4byte 0x0000064a
_0808D408: .4byte REG_BG2VOFS
_0808D40C: .4byte 0x0000062d
_0808D410: .4byte gPokedexMenu_Gfx
_0808D414: .4byte gUnknown_08E96738
_0808D418: .4byte 0x06006800
_0808D41C: .4byte gUnknown_08E9C6DC
_0808D420: .4byte 0x06007800
_0808D424: .4byte 0x06006000
_0808D428: .4byte 0x040000d4
_0808D42C: .4byte 0x81000280
_0808D430: .4byte gUnknown_08E96888
_0808D434: .4byte 0x06006500
_0808D438:
	ldr r0, _0808D45C
	ldr r1, _0808D460
	bl LZ77UnCompVram
_0808D440:
	bl ResetPaletteFade
	cmp r5, 0
	bne _0808D46C
	ldr r0, _0808D464
	ldr r1, [r0]
	ldr r0, _0808D468
	adds r1, r0
	ldrb r2, [r1]
	movs r0, 0x2
	negs r0, r0
	ands r0, r2
	b _0808D47A
	.align 2, 0
_0808D45C: .4byte gUnknown_08E96994
_0808D460: .4byte 0x06006500
_0808D464: .4byte gUnknown_0202FFB4
_0808D468: .4byte 0x0000064c
_0808D46C:
	ldr r0, _0808D48C
	ldr r1, [r0]
	ldr r2, _0808D490
	adds r1, r2
	ldrb r0, [r1]
	movs r2, 0x1
	orrs r0, r2
_0808D47A:
	strb r0, [r1]
	bl sub_808D640
	ldr r0, _0808D494
	ldr r1, _0808D498
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	b _0808D634
	.align 2, 0
_0808D48C: .4byte gUnknown_0202FFB4
_0808D490: .4byte 0x0000064c
_0808D494: .4byte gMain
_0808D498: .4byte 0x0000043c
_0808D49C:
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	ldr r1, _0808D4C4
	movs r0, 0x8
	strb r0, [r1]
	ldr r0, _0808D4C8
	bl LoadCompressedObjectPic
	ldr r0, _0808D4CC
	bl LoadSpritePalettes
	adds r0, r5, 0
	bl sub_808E978
	ldr r1, _0808D4D0
	ldr r2, _0808D4D4
	adds r1, r2
	b _0808D5E4
	.align 2, 0
_0808D4C4: .4byte gReservedSpritePaletteCount
_0808D4C8: .4byte gUnknown_083A05CC
_0808D4CC: .4byte gUnknown_083A05DC
_0808D4D0: .4byte gMain
_0808D4D4: .4byte 0x0000043c
_0808D4D8:
	ldr r4, _0808D4F8
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl InitMenuWindow
	ldr r0, _0808D4FC
	ldr r1, _0808D500
	bl LZ77UnCompVram
	ldr r1, _0808D504
	ldr r0, _0808D508
	adds r1, r0
	b _0808D5E4
	.align 2, 0
_0808D4F8: .4byte gWindowConfig_81E7048
_0808D4FC: .4byte gUnknown_0839FA7C
_0808D500: .4byte 0x0600ff80
_0808D504: .4byte gMain
_0808D508: .4byte 0x0000043c
_0808D50C:
	cmp r5, 0
	bne _0808D524
	ldr r0, _0808D550
	ldr r1, [r0]
	ldr r2, _0808D554
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, 0x4
	adds r1, r2
	ldrb r1, [r1]
	bl sub_808D690
_0808D524:
	ldr r4, _0808D550
	ldr r0, [r4]
	ldr r1, _0808D558
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0xE
	bl sub_808E0CC
	ldr r0, [r4]
	movs r2, 0xCA
	lsls r2, 3
	adds r0, r2
	movs r1, 0
	strb r1, [r0]
	ldr r0, [r4]
	adds r2, 0x4
	adds r0, r2
	strh r1, [r0]
	ldr r1, _0808D55C
	ldr r0, _0808D560
	adds r1, r0
	b _0808D5E4
	.align 2, 0
_0808D550: .4byte gUnknown_0202FFB4
_0808D554: .4byte 0x00000612
_0808D558: .4byte 0x0000060e
_0808D55C: .4byte gMain
_0808D560: .4byte 0x0000043c
_0808D564:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, _0808D584
	bl SetVBlankCallback
	ldr r1, _0808D588
	ldr r2, _0808D58C
	adds r1, r2
	b _0808D5E4
	.align 2, 0
_0808D584: .4byte sub_808C0B8
_0808D588: .4byte gMain
_0808D58C: .4byte 0x0000043c
_0808D590:
	ldr r1, _0808D5EC
	ldr r2, _0808D5F0
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0808D5F4
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _0808D5F8
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	subs r0, 0x2
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	adds r0, 0xA
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _0808D5FC
	ldr r2, _0808D600
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x4
	ldr r2, _0808D604
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x2
	movs r2, 0xC0
	lsls r2, 4
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x8
	ldr r2, _0808D608
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _0808D60C
	adds r1, r3, r0
_0808D5E4:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0808D634
	.align 2, 0
_0808D5EC: .4byte REG_WININ
_0808D5F0: .4byte 0x00003f3f
_0808D5F4: .4byte 0x00001d3f
_0808D5F8: .4byte REG_WIN0H
_0808D5FC: .4byte REG_BG3CNT
_0808D600: .4byte 0x00000f03
_0808D604: .4byte 0x00000d01
_0808D608: .4byte 0x00009f40
_0808D60C: .4byte 0x0000043c
_0808D610:
	ldr r0, _0808D62C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _0808D634
	ldr r1, _0808D630
	adds r0, r3, r1
	strb r2, [r0]
	movs r0, 0x1
	b _0808D636
	.align 2, 0
_0808D62C: .4byte gPaletteFade
_0808D630: .4byte 0x0000043c
_0808D634:
	movs r0, 0
_0808D636:
	add sp, 0x8
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_808D344

	thumb_func_start sub_808D640
sub_808D640: @ 808D640
	push {lr}
	ldr r0, _0808D658
	ldr r0, [r0]
	ldr r1, _0808D65C
	adds r0, r1
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0808D664
	ldr r0, _0808D660
	b _0808D66E
	.align 2, 0
_0808D658: .4byte gUnknown_0202FFB4
_0808D65C: .4byte 0x0000064c
_0808D660: .4byte gUnknown_0839F67C + 0x2
_0808D664:
	bl sub_806912C
	cmp r0, 0
	bne _0808D67C
	ldr r0, _0808D678
_0808D66E:
	movs r1, 0x1
	movs r2, 0xBE
	bl LoadPalette
	b _0808D686
	.align 2, 0
_0808D678: .4byte gPokedexMenu_Pal + 0x2
_0808D67C:
	ldr r0, _0808D68C
	movs r1, 0x1
	movs r2, 0xBE
	bl LoadPalette
_0808D686:
	pop {r0}
	bx r0
	.align 2, 0
_0808D68C: .4byte gUnknown_0839F73C + 0x2
	thumb_func_end sub_808D640

	thumb_func_start sub_808D690
sub_808D690: @ 808D690
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	ldr r0, _0808D6C4
	ldr r0, [r0]
	ldr r1, _0808D6C8
	adds r0, r1
	movs r5, 0
	strh r5, [r0]
	cmp r4, 0
	beq _0808D6B8
	cmp r4, 0x1
	beq _0808D6CC
_0808D6B8:
	mov r1, sp
	movs r0, 0xCA
	strh r0, [r1]
	movs r0, 0x1
	strh r0, [r1, 0x2]
	b _0808D6E8
	.align 2, 0
_0808D6C4: .4byte gUnknown_0202FFB4
_0808D6C8: .4byte 0x0000060c
_0808D6CC:
	bl sub_806912C
	cmp r0, 0
	beq _0808D6E0
	mov r0, sp
	movs r1, 0xC1
	lsls r1, 1
	strh r1, [r0]
	strh r5, [r0, 0x2]
	b _0808D6E8
_0808D6E0:
	mov r0, sp
	movs r1, 0xCA
	strh r1, [r0]
	strh r4, [r0, 0x2]
_0808D6E8:
	cmp r6, 0x5
	bls _0808D6EE
	b _0808DB70
_0808D6EE:
	lsls r0, r6, 2
	ldr r1, _0808D6F8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808D6F8: .4byte _0808D6FC
	.align 2, 0
_0808D6FC:
	.4byte _0808D714
	.4byte _0808D888
	.4byte _0808D934
	.4byte _0808D9C4
	.4byte _0808DA5C
	.4byte _0808DAEC
_0808D714:
	mov r0, sp
	ldrh r0, [r0, 0x2]
	cmp r0, 0
	beq _0808D7BC
	movs r4, 0
	mov r0, sp
	ldrh r0, [r0]
	cmp r4, r0
	blt _0808D728
	b _0808DB70
_0808D728:
	mov r5, sp
	ldr r2, _0808D7B4
	mov r8, r2
	movs r3, 0x1
	mov r9, r3
_0808D732:
	lsls r4, 16
	asrs r4, 16
	adds r7, r4, 0x1
	mov r10, r7
	lsls r0, r7, 16
	lsrs r6, r0, 16
	adds r0, r6, 0
	bl HoennToNationalOrder
	strh r0, [r5, 0x4]
	mov r2, r8
	ldr r1, [r2]
	lsls r4, 2
	adds r1, r4
	strh r0, [r1]
	ldrh r0, [r5, 0x4]
	movs r1, 0
	bl sub_8090D90
	mov r3, r8
	ldr r2, [r3]
	adds r2, r4
	mov r3, r9
	ands r3, r0
	ldrb r0, [r2, 0x2]
	movs r7, 0x2
	negs r7, r7
	adds r1, r7, 0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, 0x2]
	ldrh r0, [r5, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	mov r1, r8
	ldr r3, [r1]
	adds r3, r4
	mov r2, r9
	ands r2, r0
	lsls r2, 1
	ldrb r0, [r3, 0x2]
	subs r7, 0x1
	adds r1, r7, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0x2]
	mov r0, r8
	ldr r1, [r0]
	adds r4, r1, r4
	ldrb r0, [r4, 0x2]
	lsls r0, 31
	cmp r0, 0
	beq _0808D7A6
	ldr r2, _0808D7B8
	adds r0, r1, r2
	mov r3, r10
	strh r3, [r0]
_0808D7A6:
	adds r4, r6, 0
	lsls r0, r4, 16
	asrs r0, 16
	ldrh r7, [r5]
	cmp r0, r7
	blt _0808D732
	b _0808DB70
	.align 2, 0
_0808D7B4: .4byte gUnknown_0202FFB4
_0808D7B8: .4byte 0x0000060c
_0808D7BC:
	movs r4, 0
	movs r5, 0
	mov r10, r5
	mov r0, sp
	ldrh r0, [r0]
	cmp r4, r0
	blt _0808D7CC
	b _0808DB70
_0808D7CC:
	mov r6, sp
	ldr r0, _0808D880
	mov r8, r0
	movs r1, 0x1
	mov r9, r1
_0808D7D6:
	lsls r4, 16
	asrs r0, r4, 16
	adds r0, 0x1
	strh r0, [r6, 0x4]
	ldrh r0, [r6, 0x4]
	movs r1, 0
	bl sub_8090D90
	lsls r0, 24
	adds r7, r4, 0
	cmp r0, 0
	beq _0808D7F2
	movs r2, 0x1
	mov r10, r2
_0808D7F2:
	mov r3, r10
	cmp r3, 0
	beq _0808D86E
	mov r4, r8
	ldr r1, [r4]
	lsls r0, r5, 16
	asrs r5, r0, 16
	lsls r4, r5, 2
	adds r1, r4
	ldrh r0, [r6, 0x4]
	strh r0, [r1]
	ldrh r0, [r6, 0x4]
	movs r1, 0
	bl sub_8090D90
	mov r1, r8
	ldr r2, [r1]
	adds r2, r4
	mov r3, r9
	ands r3, r0
	mov r12, r3
	ldrb r0, [r2, 0x2]
	movs r3, 0x2
	negs r3, r3
	adds r1, r3, 0
	ands r0, r1
	mov r1, r12
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldrh r0, [r6, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	mov r2, r8
	ldr r3, [r2]
	adds r3, r4
	mov r2, r9
	ands r2, r0
	lsls r2, 1
	mov r12, r2
	ldrb r0, [r3, 0x2]
	movs r2, 0x3
	negs r2, r2
	adds r1, r2, 0
	ands r0, r1
	mov r1, r12
	orrs r0, r1
	strb r0, [r3, 0x2]
	mov r3, r8
	ldr r2, [r3]
	adds r4, r2, r4
	ldrb r0, [r4, 0x2]
	lsls r0, 31
	cmp r0, 0
	beq _0808D868
	adds r1, r5, 0x1
	ldr r4, _0808D884
	adds r0, r2, r4
	strh r1, [r0]
_0808D868:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
_0808D86E:
	movs r1, 0x80
	lsls r1, 9
	adds r0, r7, r1
	lsrs r4, r0, 16
	asrs r0, 16
	ldrh r2, [r6]
	cmp r0, r2
	blt _0808D7D6
	b _0808DB70
	.align 2, 0
_0808D880: .4byte gUnknown_0202FFB4
_0808D884: .4byte 0x0000060c
_0808D888:
	movs r4, 0
	mov r5, sp
	ldr r3, _0808D928
	mov r8, r3
	ldr r6, _0808D92C
	movs r7, 0x1
	mov r9, r7
_0808D896:
	ldr r1, _0808D930
	lsls r4, 16
	asrs r0, r4, 15
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r5, 0x4]
	ldrh r0, [r5, 0x4]
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	adds r7, r4, 0
	ldrh r1, [r5]
	cmp r0, r1
	bhi _0808D914
	ldrh r0, [r5, 0x4]
	movs r1, 0
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _0808D914
	mov r3, r8
	ldr r2, [r3]
	adds r3, r2, r6
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r2, r0
	ldrh r1, [r5, 0x4]
	strh r1, [r0]
	ldrh r0, [r3]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	mov r4, r9
	orrs r0, r4
	strb r0, [r2, 0x2]
	ldrh r0, [r5, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	mov r1, r8
	ldr r3, [r1]
	adds r1, r3, r6
	ldrh r1, [r1]
	lsls r1, 2
	adds r3, r1
	mov r2, r9
	ands r2, r0
	lsls r2, 1
	ldrb r0, [r3, 0x2]
	movs r4, 0x3
	negs r4, r4
	adds r1, r4, 0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, 0x2]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r6
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_0808D914:
	movs r2, 0x80
	lsls r2, 9
	adds r1, r7, r2
	lsrs r4, r1, 16
	movs r0, 0xCD
	lsls r0, 17
	cmp r1, r0
	ble _0808D896
	b _0808DB70
	.align 2, 0
_0808D928: .4byte gUnknown_0202FFB4
_0808D92C: .4byte 0x0000060c
_0808D930: .4byte gPokedexOrder_Alphabetical
_0808D934:
	ldr r4, _0808D9B0
	lsls r0, r4, 16
	mov r5, sp
	ldr r7, _0808D9B4
	ldr r6, _0808D9B8
_0808D93E:
	ldr r1, _0808D9BC
	asrs r0, 15
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r5, 0x4]
	ldrh r0, [r5, 0x4]
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	ldrh r3, [r5]
	cmp r0, r3
	bhi _0808D99E
	ldrh r0, [r5, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _0808D99E
	ldr r2, [r7]
	adds r3, r2, r6
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r2, r0
	ldrh r1, [r5, 0x4]
	strh r1, [r0]
	ldrh r0, [r3]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r2, [r7]
	adds r0, r2, r6
	ldrh r0, [r0]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r1, [r7]
	adds r1, r6
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_0808D99E:
	lsls r0, r4, 16
	ldr r4, _0808D9C0
	adds r0, r4
	lsrs r4, r0, 16
	lsls r0, r4, 16
	cmp r0, 0
	bge _0808D93E
	b _0808DB70
	.align 2, 0
_0808D9B0: .4byte 0x00000181
_0808D9B4: .4byte gUnknown_0202FFB4
_0808D9B8: .4byte 0x0000060c
_0808D9BC: .4byte gPokedexOrder_Weight
_0808D9C0: .4byte 0xffff0000
_0808D9C4:
	movs r4, 0
	mov r5, sp
	ldr r7, _0808DA4C
	mov r8, r7
	ldr r6, _0808DA50
	ldr r0, _0808DA54
	mov r9, r0
_0808D9D2:
	ldr r1, _0808DA58
	lsls r4, 16
	asrs r0, r4, 15
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r5, 0x4]
	ldrh r0, [r5, 0x4]
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	adds r7, r4, 0
	ldrh r1, [r5]
	cmp r0, r1
	bhi _0808DA3A
	ldrh r0, [r5, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _0808DA3A
	mov r3, r8
	ldr r2, [r3]
	adds r3, r2, r6
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r2, r0
	ldrh r1, [r5, 0x4]
	strh r1, [r0]
	ldrh r0, [r3]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	mov r4, r8
	ldr r2, [r4]
	adds r0, r2, r6
	ldrh r0, [r0]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r1, [r4]
	adds r1, r6
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_0808DA3A:
	movs r1, 0x80
	lsls r1, 9
	adds r0, r7, r1
	lsrs r4, r0, 16
	asrs r0, 16
	cmp r0, r9
	ble _0808D9D2
	b _0808DB70
	.align 2, 0
_0808DA4C: .4byte gUnknown_0202FFB4
_0808DA50: .4byte 0x0000060c
_0808DA54: .4byte 0x00000181
_0808DA58: .4byte gPokedexOrder_Weight
_0808DA5C:
	ldr r4, _0808DAD8
	lsls r0, r4, 16
	mov r5, sp
	ldr r7, _0808DADC
	ldr r6, _0808DAE0
_0808DA66:
	ldr r1, _0808DAE4
	asrs r0, 15
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r5, 0x4]
	ldrh r0, [r5, 0x4]
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	ldrh r2, [r5]
	cmp r0, r2
	bhi _0808DAC6
	ldrh r0, [r5, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _0808DAC6
	ldr r2, [r7]
	adds r3, r2, r6
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r2, r0
	ldrh r1, [r5, 0x4]
	strh r1, [r0]
	ldrh r0, [r3]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r2, [r7]
	adds r0, r2, r6
	ldrh r0, [r0]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r1, [r7]
	adds r1, r6
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_0808DAC6:
	lsls r0, r4, 16
	ldr r3, _0808DAE8
	adds r0, r3
	lsrs r4, r0, 16
	lsls r0, r4, 16
	cmp r0, 0
	bge _0808DA66
	b _0808DB70
	.align 2, 0
_0808DAD8: .4byte 0x00000181
_0808DADC: .4byte gUnknown_0202FFB4
_0808DAE0: .4byte 0x0000060c
_0808DAE4: .4byte gPokedexOrder_Height
_0808DAE8: .4byte 0xffff0000
_0808DAEC:
	movs r4, 0
	mov r5, sp
	ldr r7, _0808DBD4
	mov r8, r7
	ldr r6, _0808DBD8
	ldr r0, _0808DBDC
	mov r9, r0
_0808DAFA:
	ldr r1, _0808DBE0
	lsls r4, 16
	asrs r0, r4, 15
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r5, 0x4]
	ldrh r0, [r5, 0x4]
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	adds r7, r4, 0
	ldrh r1, [r5]
	cmp r0, r1
	bhi _0808DB62
	ldrh r0, [r5, 0x4]
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _0808DB62
	mov r3, r8
	ldr r2, [r3]
	adds r3, r2, r6
	ldrh r0, [r3]
	lsls r0, 2
	adds r0, r2, r0
	ldrh r1, [r5, 0x4]
	strh r1, [r0]
	ldrh r0, [r3]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x2]
	mov r4, r8
	ldr r2, [r4]
	adds r0, r2, r6
	ldrh r0, [r0]
	lsls r0, 2
	adds r2, r0
	ldrb r0, [r2, 0x2]
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r2, 0x2]
	ldr r1, [r4]
	adds r1, r6
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
_0808DB62:
	movs r1, 0x80
	lsls r1, 9
	adds r0, r7, r1
	lsrs r4, r0, 16
	asrs r0, 16
	cmp r0, r9
	ble _0808DAFA
_0808DB70:
	ldr r1, _0808DBD4
	ldr r0, [r1]
	ldr r2, _0808DBD8
	adds r0, r2
	ldrh r4, [r0]
	lsls r3, r4, 16
	asrs r0, r3, 16
	ldr r2, _0808DBDC
	cmp r0, r2
	bgt _0808DBC4
	adds r5, r1, 0
	movs r4, 0x2
	negs r4, r4
	mov r9, r4
	movs r7, 0x3
	negs r7, r7
	mov r8, r7
	adds r7, r2, 0
	ldr r0, _0808DBE4
	adds r6, r0, 0
_0808DB98:
	ldr r1, [r5]
	asrs r3, 16
	lsls r4, r3, 2
	adds r1, r4
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
	ldrb r2, [r1, 0x2]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, 0x2]
	ldr r1, [r5]
	adds r1, r4
	ldrb r2, [r1, 0x2]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, 0x2]
	adds r3, 0x1
	lsls r3, 16
	asrs r0, r3, 16
	cmp r0, r7
	ble _0808DB98
_0808DBC4:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DBD4: .4byte gUnknown_0202FFB4
_0808DBD8: .4byte 0x0000060c
_0808DBDC: .4byte 0x00000181
_0808DBE0: .4byte gPokedexOrder_Height
_0808DBE4: .4byte 0x0000ffff
	thumb_func_end sub_808D690

	thumb_func_start sub_808DBE8
sub_808DBE8: @ 808DBE8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r7, r2, 16
	cmp r0, 0x1
	beq _0808DCE0
	cmp r0, 0x1
	ble _0808DC0C
	cmp r0, 0x2
	bne _0808DC0C
	b _0808DDD8
_0808DC0C:
	subs r0, r1, 0x5
	lsls r0, 16
	lsrs r1, r0, 16
	movs r0, 0
	mov r9, r0
_0808DC16:
	lsls r0, r1, 16
	lsrs r5, r0, 16
	mov r10, r0
	ldr r1, _0808DC48
	cmp r5, r1
	bhi _0808DC36
	ldr r2, _0808DC4C
	mov r8, r2
	ldr r0, [r2]
	mov r3, r10
	asrs r6, r3, 14
	adds r0, r6
	ldrh r0, [r0]
	ldr r1, _0808DC50
	cmp r0, r1
	bne _0808DC54
_0808DC36:
	mov r2, r9
	lsls r1, r2, 25
	lsrs r1, 24
	movs r0, 0x11
	adds r2, r7, 0
	bl sub_808E090
	b _0808DCC8
	.align 2, 0
_0808DC48: .4byte 0x00000181
_0808DC4C: .4byte gUnknown_0202FFB4
_0808DC50: .4byte 0x0000ffff
_0808DC54:
	mov r3, r9
	lsls r0, r3, 25
	lsrs r4, r0, 24
	movs r0, 0x11
	adds r1, r4, 0
	adds r2, r7, 0
	bl sub_808E090
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6
	ldrb r0, [r0, 0x2]
	lsls r0, 31
	cmp r0, 0
	beq _0808DCA6
	adds r0, r5, 0
	movs r1, 0x12
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DEB0
	mov r2, r8
	ldr r0, [r2]
	adds r0, r6
	ldrb r0, [r0, 0x2]
	lsls r0, 30
	lsrs r0, 31
	movs r1, 0x11
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DF88
	mov r3, r8
	ldr r0, [r3]
	adds r0, r6
	ldrh r0, [r0]
	movs r1, 0x17
	adds r2, r4, 0
	bl sub_808DFE4
	b _0808DCC8
_0808DCA6:
	adds r0, r5, 0
	movs r1, 0x12
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DEB0
	movs r0, 0
	movs r1, 0x11
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DF88
	movs r0, 0
	movs r1, 0x17
	adds r2, r4, 0
	bl sub_808DFE4
_0808DCC8:
	movs r0, 0x80
	lsls r0, 9
	add r0, r10
	lsrs r1, r0, 16
	mov r0, r9
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	cmp r0, 0xA
	bls _0808DC16
	b _0808DEA2
_0808DCE0:
	subs r0, r1, 0x5
	lsls r1, r0, 16
	lsrs r5, r1, 16
	ldr r0, _0808DD10
	ldr r2, _0808DD14
	cmp r5, r0
	bhi _0808DCFE
	adds r6, r2, 0
	ldr r3, [r6]
	asrs r4, r1, 14
	adds r0, r3, r4
	ldrh r1, [r0]
	ldr r0, _0808DD18
	cmp r1, r0
	bne _0808DD1C
_0808DCFE:
	ldr r0, [r2]
	movs r1, 0xC6
	lsls r1, 3
	adds r0, r1
	movs r2, 0
	ldrsh r1, [r0, r2]
	lsls r1, 25
	b _0808DE16
	.align 2, 0
_0808DD10: .4byte 0x00000181
_0808DD14: .4byte gUnknown_0202FFB4
_0808DD18: .4byte 0x0000ffff
_0808DD1C:
	movs r1, 0xC6
	lsls r1, 3
	adds r0, r3, r1
	movs r2, 0
	ldrsh r1, [r0, r2]
	lsls r1, 25
	lsrs r1, 24
	movs r0, 0x11
	adds r2, r7, 0
	bl sub_808E090
	ldr r1, [r6]
	adds r0, r1, r4
	ldrb r0, [r0, 0x2]
	lsls r0, 31
	cmp r0, 0
	beq _0808DD8C
	movs r3, 0xC6
	lsls r3, 3
	adds r0, r1, r3
	movs r1, 0
	ldrsh r2, [r0, r1]
	lsls r2, 25
	lsrs r2, 24
	adds r0, r5, 0
	movs r1, 0x12
	adds r3, r7, 0
	bl sub_808DEB0
	ldr r1, [r6]
	adds r0, r1, r4
	ldrb r0, [r0, 0x2]
	lsls r0, 30
	lsrs r0, 31
	movs r2, 0xC6
	lsls r2, 3
	adds r1, r2
	movs r3, 0
	ldrsh r2, [r1, r3]
	lsls r2, 25
	lsrs r2, 24
	movs r1, 0x11
	adds r3, r7, 0
	bl sub_808DF88
	ldr r1, [r6]
	adds r0, r1, r4
	ldrh r0, [r0]
	movs r2, 0xC6
	lsls r2, 3
	adds r1, r2
	movs r3, 0
	ldrsh r2, [r1, r3]
	lsls r2, 25
	lsrs r2, 24
	b _0808DDD0
_0808DD8C:
	movs r2, 0xC6
	lsls r2, 3
	adds r0, r1, r2
	movs r3, 0
	ldrsh r2, [r0, r3]
	lsls r2, 25
	lsrs r2, 24
	adds r0, r5, 0
	movs r1, 0x12
	adds r3, r7, 0
	bl sub_808DEB0
	ldr r0, [r6]
	movs r1, 0xC6
	lsls r1, 3
	adds r0, r1
	movs r3, 0
	ldrsh r2, [r0, r3]
	lsls r2, 25
	lsrs r2, 24
	movs r0, 0
	movs r1, 0x11
	adds r3, r7, 0
	bl sub_808DF88
	ldr r0, [r6]
	movs r1, 0xC6
	lsls r1, 3
	adds r0, r1
	movs r3, 0
	ldrsh r2, [r0, r3]
	lsls r2, 25
	lsrs r2, 24
	movs r0, 0
_0808DDD0:
	movs r1, 0x17
	bl sub_808DFE4
	b _0808DEA2
_0808DDD8:
	adds r0, r1, 0x5
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _0808DE24
	mov r8, r0
	ldr r3, [r0]
	movs r2, 0xC6
	lsls r2, 3
	adds r0, r3, r2
	ldrh r0, [r0]
	adds r0, 0xA
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0xF
	bls _0808DDFE
	adds r0, r2, 0
	subs r0, 0x10
	lsls r0, 16
	lsrs r2, r0, 16
_0808DDFE:
	lsls r1, 16
	lsrs r5, r1, 16
	ldr r0, _0808DE28
	cmp r5, r0
	bhi _0808DE14
	asrs r6, r1, 14
	adds r0, r3, r6
	ldrh r1, [r0]
	ldr r0, _0808DE2C
	cmp r1, r0
	bne _0808DE30
_0808DE14:
	lsls r1, r2, 25
_0808DE16:
	lsrs r1, 24
	movs r0, 0x11
	adds r2, r7, 0
	bl sub_808E090
	b _0808DEA2
	.align 2, 0
_0808DE24: .4byte gUnknown_0202FFB4
_0808DE28: .4byte 0x00000181
_0808DE2C: .4byte 0x0000ffff
_0808DE30:
	lsls r0, r2, 25
	lsrs r4, r0, 24
	movs r0, 0x11
	adds r1, r4, 0
	adds r2, r7, 0
	bl sub_808E090
	mov r3, r8
	ldr r0, [r3]
	adds r0, r6
	ldrb r0, [r0, 0x2]
	lsls r0, 31
	cmp r0, 0
	beq _0808DE80
	adds r0, r5, 0
	movs r1, 0x12
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DEB0
	mov r1, r8
	ldr r0, [r1]
	adds r0, r6
	ldrb r0, [r0, 0x2]
	lsls r0, 30
	lsrs r0, 31
	movs r1, 0x11
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DF88
	mov r2, r8
	ldr r0, [r2]
	adds r0, r6
	ldrh r0, [r0]
	movs r1, 0x17
	adds r2, r4, 0
	bl sub_808DFE4
	b _0808DEA2
_0808DE80:
	adds r0, r5, 0
	movs r1, 0x12
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DEB0
	movs r0, 0
	movs r1, 0x11
	adds r2, r4, 0
	adds r3, r7, 0
	bl sub_808DF88
	movs r0, 0
	movs r1, 0x17
	adds r2, r4, 0
	bl sub_808DFE4
_0808DEA2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_808DBE8

	thumb_func_start sub_808DEB0
sub_808DEB0: @ 808DEB0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	lsls r0, 16
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	lsls r3, 16
	lsrs r3, 16
	mov r10, r3
	ldr r1, _0808DF7C
	ldr r1, [r1]
	lsrs r0, 14
	adds r0, r1, r0
	ldrh r7, [r0]
	ldr r0, _0808DF80
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, 0
	bne _0808DEEE
	adds r0, r7, 0
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r7, r0, 16
_0808DEEE:
	add r6, sp, 0x4
	movs r0, 0xFF
	lsls r0, 2
	strh r0, [r6]
	adds r0, 0x1
	strh r0, [r6, 0x2]
	mov r4, sp
	adds r0, r7, 0
	movs r1, 0x64
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r4]
	mov r5, sp
	adds r0, r7, 0
	movs r1, 0x64
	bl __umodsi3
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r4, 0
	movs r1, 0xA
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r5, 0x1]
	mov r5, sp
	adds r0, r4, 0
	movs r1, 0xA
	bl __umodsi3
	adds r0, 0xA1
	strb r0, [r5, 0x2]
	mov r1, sp
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	mov r1, r8
	lsls r2, r1, 1
	mov r3, r10
	lsls r0, r3, 11
	mov r3, r9
	lsls r1, r3, 6
	adds r0, r1
	adds r2, r0
	movs r0, 0xC0
	lsls r0, 19
	adds r1, r2, r0
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r1, _0808DF84
	adds r2, r1
	ldrh r0, [r6, 0x2]
	strh r0, [r2]
	mov r1, r8
	subs r1, 0xF
	lsls r1, 24
	lsrs r1, 24
	mov r0, sp
	mov r2, r9
	bl MenuPrint
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DF7C: .4byte gUnknown_0202FFB4
_0808DF80: .4byte 0x00000612
_0808DF84: .4byte 0x06000040
	thumb_func_end sub_808DEB0

	thumb_func_start sub_808DF88
sub_808DF88: @ 808DF88
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	lsls r3, 16
	lsrs r3, 16
	cmp r4, 0
	beq _0808DFB0
	mov r1, sp
	ldr r0, _0808DFAC
	strh r0, [r1]
	adds r0, 0x1
	strh r0, [r1, 0x2]
	b _0808DFB6
	.align 2, 0
_0808DFAC: .4byte 0x000003fe
_0808DFB0:
	mov r0, sp
	strh r4, [r0]
	strh r4, [r0, 0x2]
_0808DFB6:
	lsls r2, r5, 1
	lsls r0, r3, 11
	lsls r1, r6, 6
	adds r0, r1
	adds r2, r0
	movs r0, 0xC0
	lsls r0, 19
	adds r1, r2, r0
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _0808DFE0
	adds r2, r0
	mov r0, sp
	ldrh r0, [r0, 0x2]
	strh r0, [r2]
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808DFE0: .4byte 0x06000040
	thumb_func_end sub_808DF88

	thumb_func_start sub_808DFE4
sub_808DFE4: @ 808DFE4
	push {r4-r6,lr}
	sub sp, 0xC
	lsls r0, 16
	lsrs r3, r0, 16
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	movs r4, 0
	movs r1, 0
_0808DFF8:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bls _0808DFF8
	adds r0, r2, r4
	movs r1, 0xFF
	strb r1, [r0]
	adds r0, r3, 0
	bl NationalPokedexNumToSpecies
	adds r3, r0, 0
	cmp r3, 0
	beq _0808E058
	movs r4, 0
	ldr r2, _0808E054
	movs r0, 0xB
	adds r1, r3, 0
	muls r1, r0
	adds r0, r1, r2
	ldrb r0, [r0]
	subs r5, 0x11
	lsls r6, 19
	cmp r0, 0xFF
	beq _0808E070
	adds r3, r1, 0
_0808E032:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r4, r3
	adds r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, r3
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _0808E070
	cmp r4, 0x9
	bls _0808E032
	b _0808E070
	.align 2, 0
_0808E054: .4byte gSpeciesNames
_0808E058:
	movs r4, 0
	subs r5, 0x11
	lsls r6, 19
	movs r1, 0xAE
_0808E060:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bls _0808E060
_0808E070:
	lsls r1, r5, 27
	movs r0, 0xFC
	lsls r0, 24
	adds r1, r0
	lsrs r1, 24
	lsrs r2, r6, 16
	mov r0, sp
	movs r3, 0
	bl sub_80729D8
	adds r0, r4, 0
	add sp, 0xC
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_808DFE4

	thumb_func_start sub_808E090
sub_808E090: @ 808E090
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsls r2, 16
	movs r3, 0
	lsrs r2, 5
	lsrs r1, 18
	adds r4, r2, r1
	movs r2, 0
	movs r7, 0xC0
	lsls r7, 19
	ldr r6, _0808E0C8
_0808E0AA:
	adds r0, r5, r3
	lsls r0, 1
	adds r0, r4
	adds r1, r0, r7
	strh r2, [r1]
	adds r0, r6
	strh r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0xB
	bls _0808E0AA
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E0C8: .4byte 0x06000040
	thumb_func_end sub_808E090

	thumb_func_start sub_808E0CC
sub_808E0CC: @ 808E0CC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r1, 16
	lsrs r7, r1, 16
	movs r3, 0
	ldr r0, _0808E1E0
	mov r8, r0
	mov r6, r8
	ldr r2, _0808E1E4
	ldr r1, _0808E1E8
	adds r4, r1, 0
_0808E0E8:
	ldr r1, [r6]
	lsls r0, r3, 1
	adds r1, r2
	adds r1, r0
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _0808E0E8
	mov r4, r8
	ldr r0, [r4]
	ldr r2, _0808E1EC
	adds r0, r2
	ldr r1, _0808E1E8
	strh r1, [r0]
	movs r0, 0
	adds r1, r5, 0
	adds r2, r7, 0
	bl sub_808DBE8
	ldr r1, _0808E1F0
	ldr r0, [r4]
	ldr r2, _0808E1F4
	adds r0, r2
	ldrb r0, [r0]
	strh r0, [r1]
	subs r0, r5, 0x1
	lsls r0, 16
	lsrs r0, 16
	bl sub_808E888
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _0808E1E8
	cmp r0, r4
	beq _0808E15A
	movs r1, 0x60
	movs r2, 0x50
	bl sub_808E8C8
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r3, _0808E1F8
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r1, r0, r1
	ldr r2, _0808E1FC
	str r2, [r1]
	adds r0, r3
	ldr r1, _0808E200
	strh r1, [r0, 0x38]
_0808E15A:
	adds r0, r5, 0
	bl sub_808E888
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r4
	beq _0808E18C
	movs r1, 0x60
	movs r2, 0x50
	bl sub_808E8C8
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r3, _0808E1F8
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r1, r0, r1
	ldr r2, _0808E1FC
	str r2, [r1]
	adds r0, r3
	movs r1, 0
	strh r1, [r0, 0x38]
_0808E18C:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r0, 16
	bl sub_808E888
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r4
	beq _0808E1C2
	movs r1, 0x60
	movs r2, 0x50
	bl sub_808E8C8
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r3, _0808E1F8
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r1, r0, r1
	ldr r2, _0808E1FC
	str r2, [r1]
	adds r0, r3
	movs r1, 0x20
	strh r1, [r0, 0x38]
_0808E1C2:
	mov r1, r8
	ldr r0, [r1]
	movs r2, 0xC6
	lsls r2, 3
	adds r1, r0, r2
	movs r2, 0
	strh r2, [r1]
	ldr r1, _0808E204
	adds r0, r1
	strh r2, [r0]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E1E0: .4byte gUnknown_0202FFB4
_0808E1E4: .4byte 0x0000061e
_0808E1E8: .4byte 0x0000ffff
_0808E1EC: .4byte 0x00000626
_0808E1F0: .4byte REG_BG2VOFS
_0808E1F4: .4byte 0x0000062d
_0808E1F8: .4byte gSprites
_0808E1FC: .4byte sub_808EE28
_0808E200: .4byte 0x0000ffe0
_0808E204: .4byte 0x00000632
	thumb_func_end sub_808E0CC

	thumb_func_start sub_808E208
sub_808E208: @ 808E208
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	ldr r0, _0808E23C
	ldr r3, [r0]
	ldr r1, _0808E240
	adds r2, r3, r1
	ldrb r1, [r2]
	adds r7, r0, 0
	cmp r1, 0
	bne _0808E22C
	b _0808E36C
_0808E22C:
	subs r0, r1, 0x1
	strb r0, [r2]
	cmp r4, 0x1
	beq _0808E244
	cmp r4, 0x2
	beq _0808E2D8
	b _0808E34C
	.align 2, 0
_0808E23C: .4byte gUnknown_0202FFB4
_0808E240: .4byte 0x0000062e
_0808E244:
	movs r3, 0
	ldr r2, _0808E2BC
	mov r12, r2
	ldr r4, _0808E2C0
	mov r8, r4
	adds r2, r7, 0
_0808E250:
	ldr r0, [r2]
	lsls r1, r3, 1
	ldr r4, _0808E2C4
	adds r0, r4
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r12
	beq _0808E26E
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r8
	ldrh r0, [r1, 0x38]
	adds r0, r5
	strh r0, [r1, 0x38]
_0808E26E:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x3
	bls _0808E250
	ldr r4, [r7]
	ldr r5, _0808E2C8
	adds r0, r4, r5
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, 4
	adds r1, r6, 0
	bl __divsi3
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, _0808E2CC
	ldr r0, _0808E2D0
	adds r1, r4, r0
	adds r5, 0x4
	adds r0, r4, r5
	movs r5, 0
	ldrsh r0, [r0, r5]
	lsls r0, 4
	ldrb r1, [r1]
	adds r0, r1
	subs r0, r3
	strh r0, [r2]
	ldr r0, _0808E2D4
	adds r2, r4, r0
	movs r1, 0xC5
	lsls r1, 3
	adds r4, r1
	ldrb r1, [r4]
	ldrb r0, [r2]
	subs r0, r1
	strb r0, [r2]
	b _0808E34C
	.align 2, 0
_0808E2BC: .4byte 0x0000ffff
_0808E2C0: .4byte gSprites
_0808E2C4: .4byte 0x0000061e
_0808E2C8: .4byte 0x0000062e
_0808E2CC: .4byte REG_BG2VOFS
_0808E2D0: .4byte 0x0000062d
_0808E2D4: .4byte 0x0000062c
_0808E2D8:
	movs r3, 0
	ldr r2, _0808E350
	mov r12, r2
	ldr r4, _0808E354
	mov r8, r4
	adds r2, r7, 0
_0808E2E4:
	ldr r0, [r2]
	lsls r1, r3, 1
	ldr r4, _0808E358
	adds r0, r4
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r12
	beq _0808E302
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r8
	ldrh r0, [r1, 0x38]
	subs r0, r5
	strh r0, [r1, 0x38]
_0808E302:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x3
	bls _0808E2E4
	ldr r4, [r7]
	ldr r5, _0808E35C
	adds r0, r4, r5
	ldrb r0, [r0]
	subs r0, r6, r0
	lsls r0, 4
	adds r1, r6, 0
	bl __divsi3
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, _0808E360
	ldr r0, _0808E364
	adds r1, r4, r0
	adds r5, 0x4
	adds r0, r4, r5
	movs r5, 0
	ldrsh r0, [r0, r5]
	lsls r0, 4
	ldrb r1, [r1]
	adds r0, r1
	adds r0, r3
	strh r0, [r2]
	ldr r0, _0808E368
	adds r1, r4, r0
	movs r2, 0xC5
	lsls r2, 3
	adds r4, r2
	ldrb r0, [r4]
	ldrb r3, [r1]
	adds r0, r3
	strb r0, [r1]
_0808E34C:
	movs r0, 0
	b _0808E386
	.align 2, 0
_0808E350: .4byte 0x0000ffff
_0808E354: .4byte gSprites
_0808E358: .4byte 0x0000061e
_0808E35C: .4byte 0x0000062e
_0808E360: .4byte REG_BG2VOFS
_0808E364: .4byte 0x0000062d
_0808E368: .4byte 0x0000062c
_0808E36C:
	ldr r2, _0808E390
	ldr r4, _0808E394
	adds r1, r3, r4
	movs r5, 0xC6
	lsls r5, 3
	adds r0, r3, r5
	movs r3, 0
	ldrsh r0, [r0, r3]
	lsls r0, 4
	ldrb r1, [r1]
	adds r0, r1
	strh r0, [r2]
	movs r0, 0x1
_0808E386:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E390: .4byte REG_BG2VOFS
_0808E394: .4byte 0x0000062d
	thumb_func_end sub_808E208

	thumb_func_start sub_808E398
sub_808E398: @ 808E398
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	lsls r1, 16
	lsrs r3, r1, 16
	ldr r4, _0808E3C0
	ldr r0, [r4]
	movs r5, 0xC6
	lsls r5, 3
	adds r1, r0, r5
	ldrh r1, [r1]
	ldr r6, _0808E3C4
	adds r0, r6
	strh r1, [r0]
	cmp r2, 0x1
	beq _0808E3C8
	cmp r2, 0x2
	beq _0808E428
	b _0808E484
	.align 2, 0
_0808E3C0: .4byte gUnknown_0202FFB4
_0808E3C4: .4byte 0x00000632
_0808E3C8:
	subs r0, r3, 0x1
	lsls r0, 16
	lsrs r0, 16
	bl sub_808E888
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _0808E414
	cmp r1, r0
	beq _0808E402
	adds r0, r1, 0
	movs r1, 0x60
	movs r2, 0x50
	bl sub_808E8C8
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r3, _0808E418
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r1, r0, r1
	ldr r2, _0808E41C
	str r2, [r1]
	adds r0, r3
	ldr r1, _0808E420
	strh r1, [r0, 0x38]
_0808E402:
	ldr r0, [r4]
	adds r1, r0, r5
	ldrh r2, [r1]
	movs r3, 0
	ldrsh r0, [r1, r3]
	cmp r0, 0
	ble _0808E424
	subs r0, r2, 0x1
	b _0808E482
	.align 2, 0
_0808E414: .4byte 0x0000ffff
_0808E418: .4byte gSprites
_0808E41C: .4byte sub_808EE28
_0808E420: .4byte 0x0000ffc0
_0808E424:
	movs r0, 0xF
	b _0808E482
_0808E428:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r0, 16
	bl sub_808E888
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _0808E474
	cmp r1, r0
	beq _0808E462
	adds r0, r1, 0
	movs r1, 0x60
	movs r2, 0x50
	bl sub_808E8C8
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r3, _0808E478
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r1, r0, r1
	ldr r2, _0808E47C
	str r2, [r1]
	adds r0, r3
	movs r1, 0x40
	strh r1, [r0, 0x38]
_0808E462:
	ldr r0, [r4]
	adds r1, r0, r5
	ldrh r2, [r1]
	movs r6, 0
	ldrsh r0, [r1, r6]
	cmp r0, 0xE
	bgt _0808E480
	adds r0, r2, 0x1
	b _0808E482
	.align 2, 0
_0808E474: .4byte 0x0000ffff
_0808E478: .4byte gSprites
_0808E47C: .4byte sub_808EE28
_0808E480:
	movs r0, 0
_0808E482:
	strh r0, [r1]
_0808E484:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_808E398

	thumb_func_start sub_808E48C
sub_808E48C: @ 808E48C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r7, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	movs r0, 0
	mov r10, r0
	ldr r1, _0808E52C
	ldrh r2, [r1, 0x2C]
	movs r0, 0x40
	ands r0, r2
	adds r3, r1, 0
	cmp r0, 0
	beq _0808E4B6
	cmp r7, 0
	beq _0808E4B6
	b _0808E5E4
_0808E4B6:
	movs r0, 0x80
	ands r0, r2
	cmp r0, 0
	beq _0808E4CE
	ldr r0, _0808E530
	ldr r0, [r0]
	ldr r1, _0808E534
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r7, r0
	blt _0808E5C4
_0808E4CE:
	ldrh r1, [r3, 0x2E]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0808E53C
	cmp r7, 0
	beq _0808E53C
	adds r6, r7, 0
	movs r4, 0
_0808E4E0:
	ldr r5, _0808E530
	ldr r0, [r5]
	ldr r2, _0808E534
	adds r0, r2
	ldrh r3, [r0]
	subs r3, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0
	bl sub_8091818
	adds r7, r0, 0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x6
	bls _0808E4E0
	ldr r1, [r5]
	ldr r3, _0808E538
	adds r1, r3
	subs r0, r7, r6
	lsls r0, 4
	ldrb r2, [r1]
	adds r0, r2
	strb r0, [r1]
	bl sub_808E82C
	adds r0, r7, 0
	movs r1, 0xE
	bl sub_808E0CC
	movs r0, 0x6D
	bl PlaySE
	b _0808E5A2
	.align 2, 0
_0808E52C: .4byte gMain
_0808E530: .4byte gUnknown_0202FFB4
_0808E534: .4byte 0x0000060c
_0808E538: .4byte 0x0000062c
_0808E53C:
	ldrh r1, [r3, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0808E5A2
	ldr r0, _0808E5B8
	ldr r0, [r0]
	ldr r3, _0808E5BC
	adds r0, r3
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r7, r0
	bge _0808E5A2
	adds r6, r7, 0
	movs r4, 0
_0808E55A:
	ldr r5, _0808E5B8
	ldr r0, [r5]
	ldr r1, _0808E5BC
	adds r0, r1
	ldrh r3, [r0]
	subs r3, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0
	adds r1, r7, 0
	movs r2, 0
	bl sub_8091818
	adds r7, r0, 0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x6
	bls _0808E55A
	ldr r1, [r5]
	ldr r2, _0808E5C0
	adds r1, r2
	subs r0, r7, r6
	lsls r0, 4
	ldrb r3, [r1]
	adds r0, r3
	strb r0, [r1]
	bl sub_808E82C
	adds r0, r7, 0
	movs r1, 0xE
	bl sub_808E0CC
	movs r0, 0x6D
	bl PlaySE
_0808E5A2:
	mov r0, r10
	cmp r0, 0
	bne _0808E628
	ldr r0, _0808E5B8
	ldr r0, [r0]
	movs r1, 0xC7
	lsls r1, 3
	adds r0, r1
	mov r2, r10
	strh r2, [r0]
	b _0808E68E
	.align 2, 0
_0808E5B8: .4byte gUnknown_0202FFB4
_0808E5BC: .4byte 0x0000060c
_0808E5C0: .4byte 0x0000062c
_0808E5C4:
	movs r3, 0x2
	mov r10, r3
	lsls r3, r0, 16
	lsrs r3, 16
	movs r0, 0
	adds r1, r7, 0
	movs r2, 0
	bl sub_8091818
	adds r7, r0, 0
	movs r0, 0x2
	adds r1, r7, 0
	bl sub_808E398
	movs r0, 0x2
	b _0808E60E
_0808E5E4:
	movs r0, 0x1
	mov r10, r0
	ldr r0, _0808E620
	ldr r0, [r0]
	ldr r1, _0808E624
	adds r0, r1
	ldrh r3, [r0]
	subs r3, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0x1
	adds r1, r7, 0
	movs r2, 0
	bl sub_8091818
	adds r7, r0, 0
	movs r0, 0x1
	adds r1, r7, 0
	bl sub_808E398
	movs r0, 0x1
_0808E60E:
	adds r1, r7, 0
	adds r2, r4, 0
	bl sub_808DBE8
	movs r0, 0x6C
	bl PlaySE
	b _0808E5A2
	.align 2, 0
_0808E620: .4byte gUnknown_0202FFB4
_0808E624: .4byte 0x0000060c
_0808E628:
	ldr r1, _0808E6A0
	ldr r6, _0808E6A4
	ldr r2, [r6]
	movs r3, 0xC7
	lsls r3, 3
	mov r9, r3
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r0, 2
	adds r1, r0, r1
	ldrb r5, [r1]
	ldr r1, _0808E6A8
	adds r0, r1
	ldrb r3, [r0]
	ldr r0, _0808E6AC
	adds r2, r0
	strb r3, [r2]
	ldr r1, [r6]
	ldr r2, _0808E6B0
	mov r8, r2
	adds r0, r1, r2
	strh r3, [r0]
	ldr r4, _0808E6B4
	adds r0, r1, r4
	strh r5, [r0]
	ldr r3, _0808E6B8
	adds r1, r3
	mov r0, r10
	strb r0, [r1]
	ldr r2, [r6]
	lsrs r5, 1
	movs r1, 0xC5
	lsls r1, 3
	adds r0, r2, r1
	strh r5, [r0]
	adds r3, r2, r3
	ldrb r0, [r3]
	adds r4, r2, r4
	ldrb r1, [r4]
	add r2, r8
	ldrb r2, [r2]
	bl sub_808E208
	ldr r0, [r6]
	mov r2, r9
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, 0xB
	bhi _0808E68E
	adds r0, 0x1
	strh r0, [r1]
_0808E68E:
	adds r0, r7, 0
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E6A0: .4byte gUnknown_083A05EC
_0808E6A4: .4byte gUnknown_0202FFB4
_0808E6A8: .4byte gUnknown_083A05F1
_0808E6AC: .4byte 0x0000062e
_0808E6B0: .4byte 0x00000636
_0808E6B4: .4byte 0x00000634
_0808E6B8: .4byte 0x0000062f
	thumb_func_end sub_808E48C

	thumb_func_start sub_808E6BC
sub_808E6BC: @ 808E6BC
	push {r4-r7,lr}
	movs r4, 0
	ldr r0, _0808E708
	mov r12, r0
	ldr r6, _0808E70C
	ldr r5, _0808E710
_0808E6C8:
	mov r1, r12
	ldr r3, [r1]
	lsls r1, r4, 1
	ldr r2, _0808E714
	adds r0, r3, r2
	adds r0, r1
	ldrh r2, [r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r1, r0, r6
	movs r7, 0x24
	ldrsh r0, [r1, r7]
	cmp r0, 0
	bne _0808E6F8
	movs r7, 0x26
	ldrsh r0, [r1, r7]
	cmp r0, 0
	bne _0808E6F8
	cmp r2, r5
	beq _0808E6F8
	ldr r1, _0808E718
	adds r0, r3, r1
	strh r2, [r0]
_0808E6F8:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x3
	bls _0808E6C8
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E708: .4byte gUnknown_0202FFB4
_0808E70C: .4byte gSprites
_0808E710: .4byte 0x0000ffff
_0808E714: .4byte 0x0000061e
_0808E718: .4byte 0x00000626
	thumb_func_end sub_808E6BC

	thumb_func_start sub_808E71C
sub_808E71C: @ 808E71C
	push {r4-r6,lr}
	ldr r3, _0808E77C
	ldr r0, [r3]
	ldr r1, _0808E780
	adds r0, r1
	ldrh r4, [r0]
	ldr r2, _0808E784
	ldrh r1, [r2, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0808E7A4
	cmp r4, 0
	beq _0808E7A4
	adds r2, r4, 0
	adds r5, r3, 0
_0808E73C:
	ldr r0, [r5]
	ldr r1, _0808E788
	adds r0, r1
	ldrh r3, [r0]
	subs r3, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0x1
	adds r1, r2, 0
	movs r2, 0
	bl sub_8091818
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, [r5]
	lsls r1, r2, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r0, 31
	cmp r0, 0
	bne _0808E78C
	cmp r2, 0
	bne _0808E73C
_0808E76A:
	ldr r0, _0808E77C
	ldr r1, [r0]
	ldr r0, _0808E780
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r4
	bne _0808E790
	b _0808E824
	.align 2, 0
_0808E77C: .4byte gUnknown_0202FFB4
_0808E780: .4byte 0x0000060e
_0808E784: .4byte gMain
_0808E788: .4byte 0x0000060c
_0808E78C:
	adds r4, r2, 0
	b _0808E76A
_0808E790:
	strh r4, [r2]
	ldr r0, _0808E79C
	adds r1, r0
	ldrb r0, [r1]
	subs r0, 0x10
	b _0808E80C
	.align 2, 0
_0808E79C: .4byte 0x0000062c
_0808E7A0:
	adds r4, r2, 0
	b _0808E7F4
_0808E7A4:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0808E824
	ldr r0, [r3]
	ldr r1, _0808E814
	adds r0, r1
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r4, r0
	bge _0808E824
	adds r2, r4, 0
	adds r6, r3, 0
	adds r5, r1, 0
_0808E7C2:
	ldr r0, [r6]
	adds r0, r5
	ldrh r3, [r0]
	subs r3, 0x1
	lsls r3, 16
	lsrs r3, 16
	movs r0, 0
	adds r1, r2, 0
	movs r2, 0
	bl sub_8091818
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r1, [r6]
	lsls r0, r2, 2
	adds r0, r1, r0
	ldrb r0, [r0, 0x2]
	lsls r0, 31
	cmp r0, 0
	bne _0808E7A0
	adds r0, r1, r5
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r2, r0
	blt _0808E7C2
_0808E7F4:
	ldr r0, _0808E818
	ldr r1, [r0]
	ldr r0, _0808E81C
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r4
	beq _0808E824
	strh r4, [r2]
	ldr r0, _0808E820
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x10
_0808E80C:
	strb r0, [r1]
	movs r0, 0x1
	b _0808E826
	.align 2, 0
_0808E814: .4byte 0x0000060c
_0808E818: .4byte gUnknown_0202FFB4
_0808E81C: .4byte 0x0000060e
_0808E820: .4byte 0x0000062c
_0808E824:
	movs r0, 0
_0808E826:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_808E71C

	thumb_func_start sub_808E82C
sub_808E82C: @ 808E82C
	push {r4-r7,lr}
	movs r5, 0
	ldr r6, _0808E878
	ldr r7, _0808E87C
_0808E834:
	ldr r0, [r6]
	lsls r4, r5, 1
	ldr r1, _0808E880
	adds r0, r1
	adds r1, r0, r4
	ldrh r0, [r1]
	cmp r0, r7
	beq _0808E864
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0808E884
	adds r0, r1
	bl DestroySprite
	ldr r1, [r6]
	ldr r0, _0808E880
	adds r1, r0
	adds r1, r4
	ldrh r2, [r1]
	adds r0, r7, 0
	orrs r0, r2
	strh r0, [r1]
_0808E864:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x3
	bls _0808E834
	movs r0, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E878: .4byte gUnknown_0202FFB4
_0808E87C: .4byte 0x0000ffff
_0808E880: .4byte 0x0000061e
_0808E884: .4byte gSprites
	thumb_func_end sub_808E82C

	thumb_func_start sub_808E888
sub_808E888: @ 808E888
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, _0808E8A8
	cmp r2, r0
	bhi _0808E8A4
	ldr r0, _0808E8AC
	ldr r1, [r0]
	lsls r0, r2, 2
	adds r2, r1, r0
	ldrh r1, [r2]
	ldr r0, _0808E8B0
	cmp r1, r0
	bne _0808E8B4
_0808E8A4:
	ldr r0, _0808E8B0
	b _0808E8C2
	.align 2, 0
_0808E8A8: .4byte 0x00000181
_0808E8AC: .4byte gUnknown_0202FFB4
_0808E8B0: .4byte 0x0000ffff
_0808E8B4:
	ldrb r0, [r2, 0x2]
	lsls r0, 31
	cmp r0, 0
	bne _0808E8C0
	movs r0, 0
	b _0808E8C2
_0808E8C0:
	ldrh r0, [r2]
_0808E8C2:
	pop {r1}
	bx r1
	thumb_func_end sub_808E888

	thumb_func_start sub_808E8C8
sub_808E8C8: @ 808E8C8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r2, 16
	lsrs r2, 16
	movs r6, 0
	ldr r0, _0808E94C
	mov r9, r0
	ldr r3, _0808E950
	lsls r1, 16
_0808E8E4:
	mov r4, r9
	ldr r0, [r4]
	lsls r7, r6, 1
	ldr r4, _0808E954
	adds r0, r4
	adds r0, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808E95C
	lsls r2, 16
	mov r0, r8
	asrs r1, 16
	asrs r2, 16
	adds r3, r6, 0
	bl sub_80918EC
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r0, _0808E958
	lsls r4, r5, 4
	adds r4, r5
	lsls r4, 2
	adds r4, r0
	ldrb r1, [r4, 0x1]
	movs r2, 0x4
	negs r2, r2
	adds r0, r2, 0
	ands r1, r0
	movs r0, 0x1
	orrs r1, r0
	strb r1, [r4, 0x1]
	ldrb r0, [r4, 0x5]
	movs r1, 0xC
	orrs r0, r1
	strb r0, [r4, 0x5]
	movs r0, 0
	strh r0, [r4, 0x2E]
	strh r6, [r4, 0x30]
	mov r0, r8
	bl NationalPokedexNumToSpecies
	strh r0, [r4, 0x32]
	mov r4, r9
	ldr r0, [r4]
	ldr r1, _0808E954
	adds r0, r1
	adds r0, r7
	strh r5, [r0]
	adds r0, r5, 0
	b _0808E968
	.align 2, 0
_0808E94C: .4byte gUnknown_0202FFB4
_0808E950: .4byte 0x0000ffff
_0808E954: .4byte 0x0000061e
_0808E958: .4byte gSprites
_0808E95C:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x3
	bls _0808E8E4
	ldr r0, _0808E974
_0808E968:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808E974: .4byte 0x0000ffff
	thumb_func_end sub_808E8C8

	thumb_func_start sub_808E978
sub_808E978: @ 808E978
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r4, _0808EB3C
	adds r0, r4, 0
	movs r1, 0xB8
	movs r2, 0x4
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r1, _0808EB40
	mov r10, r1
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	add r0, r10
	movs r1, 0
	strh r1, [r0, 0x30]
	adds r0, r4, 0
	movs r1, 0xB8
	movs r2, 0x9C
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	add r0, r10
	movs r1, 0x1
	strh r1, [r0, 0x30]
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r2, 0x2
	orrs r1, r2
	strb r1, [r0]
	ldr r0, _0808EB44
	movs r1, 0xEA
	movs r2, 0x14
	movs r3, 0
	bl CreateSprite
	ldr r5, _0808EB48
	adds r0, r5, 0
	movs r1, 0x10
	movs r2, 0x8A
	movs r3, 0
	bl CreateSprite
	adds r0, r5, 0
	movs r1, 0x30
	movs r2, 0x8A
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	add r0, r10
	movs r1, 0x3
	bl StartSpriteAnim
	adds r0, r5, 0
	movs r1, 0x10
	movs r2, 0x9E
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	add r4, r10
	adds r0, r4, 0
	movs r1, 0x2
	bl StartSpriteAnim
	movs r0, 0x80
	mov r9, r0
	mov r1, r9
	strh r1, [r4, 0x32]
	adds r0, r5, 0
	movs r1, 0x30
	movs r2, 0x9E
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	add r0, r10
	movs r1, 0x1
	bl StartSpriteAnim
	ldr r6, _0808EB4C
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x50
	movs r3, 0x2
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, r7, 4
	adds r1, r7
	lsls r1, 2
	add r1, r10
	ldrb r2, [r1, 0x1]
	movs r4, 0x4
	negs r4, r4
	adds r0, r4, 0
	ands r0, r2
	movs r5, 0x1
	orrs r0, r5
	strb r0, [r1, 0x1]
	ldrb r2, [r1, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r2
	movs r2, 0x3C
	orrs r0, r2
	strb r0, [r1, 0x3]
	movs r0, 0x1E
	strh r0, [r1, 0x2E]
	movs r0, 0
	strh r0, [r1, 0x30]
	adds r0, r6, 0
	movs r1, 0
	movs r2, 0x50
	movs r3, 0x2
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, r7, 4
	adds r1, r7
	lsls r1, 2
	add r1, r10
	ldrb r0, [r1, 0x1]
	ands r4, r0
	orrs r4, r5
	strb r4, [r1, 0x1]
	ldrb r0, [r1, 0x3]
	movs r2, 0x3E
	orrs r0, r2
	strb r0, [r1, 0x3]
	movs r0, 0x1F
	strh r0, [r1, 0x2E]
	mov r0, r9
	strh r0, [r1, 0x30]
	mov r1, r8
	cmp r1, 0
	beq _0808EAC8
	b _0808ED5C
_0808EAC8:
	ldr r4, _0808EB50
	adds r0, r4, 0
	movs r1, 0x20
	movs r2, 0x28
	movs r3, 0x1
	bl CreateSprite
	adds r0, r4, 0
	movs r1, 0x20
	movs r2, 0x48
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	add r0, r10
	movs r1, 0x1
	bl StartSpriteAnim
	movs r0, 0
	mov r8, r0
	ldr r0, _0808EB54
	movs r1, 0x1C
	movs r2, 0x30
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _0808EB58
	ldr r0, [r0]
	ldr r1, _0808EB5C
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	mov r1, r10
	adds r4, r0, r1
	lsls r1, r5, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	cmp r5, 0
	beq _0808EB60
	movs r0, 0x1
	mov r8, r0
	b _0808EB6C
	.align 2, 0
_0808EB3C: .4byte gSpriteTemplate_83A053C
_0808EB40: .4byte gSprites
_0808EB44: .4byte gSpriteTemplate_83A0524
_0808EB48: .4byte gSpriteTemplate_83A0554
_0808EB4C: .4byte gSpriteTemplate_83A056C
_0808EB50: .4byte gSpriteTemplate_83A0584
_0808EB54: .4byte gSpriteTemplate_83A059C
_0808EB58: .4byte gUnknown_0202FFB4
_0808EB5C: .4byte 0x0000061a
_0808EB60:
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0808EB6C:
	ldr r0, _0808EBB8
	movs r1, 0x22
	movs r2, 0x30
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _0808EBBC
	ldr r0, [r0]
	ldr r1, _0808EBC0
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	bne _0808EBA4
	mov r0, r8
	cmp r0, 0
	beq _0808EBC8
_0808EBA4:
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r1, _0808EBC4
	adds r0, r1
	lsls r1, r5, 24
	lsrs r1, 24
	bl StartSpriteAnim
	b _0808EBDC
	.align 2, 0
_0808EBB8: .4byte gSpriteTemplate_83A059C
_0808EBBC: .4byte gUnknown_0202FFB4
_0808EBC0: .4byte 0x0000061a
_0808EBC4: .4byte gSprites
_0808EBC8:
	ldr r1, _0808EC60
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0808EBDC:
	ldr r6, _0808EC64
	adds r0, r6, 0
	movs r1, 0x28
	movs r2, 0x30
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r5, _0808EC68
	ldr r0, [r5]
	ldr r1, _0808EC6C
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	adds r1, r0, 0
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r4, _0808EC60
	adds r0, r4
	lsls r1, 24
	lsrs r1, 24
	bl StartSpriteAnim
	movs r0, 0
	mov r8, r0
	adds r0, r6, 0
	movs r1, 0x1C
	movs r2, 0x50
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, [r5]
	ldr r1, _0808EC70
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	adds r4, r0, r4
	lsls r1, r5, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	cmp r5, 0
	beq _0808EC74
	movs r0, 0x1
	mov r8, r0
	b _0808EC80
	.align 2, 0
_0808EC60: .4byte gSprites
_0808EC64: .4byte gSpriteTemplate_83A059C
_0808EC68: .4byte gUnknown_0202FFB4
_0808EC6C: .4byte 0x0000061a
_0808EC70: .4byte 0x0000061c
_0808EC74:
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0808EC80:
	ldr r0, _0808ECCC
	movs r1, 0x22
	movs r2, 0x50
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _0808ECD0
	ldr r0, [r0]
	ldr r1, _0808ECD4
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	bne _0808ECB8
	mov r0, r8
	cmp r0, 0
	beq _0808ECDC
_0808ECB8:
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r1, _0808ECD8
	adds r0, r1
	lsls r1, r5, 24
	lsrs r1, 24
	bl StartSpriteAnim
	b _0808ECF0
	.align 2, 0
_0808ECCC: .4byte gSpriteTemplate_83A059C
_0808ECD0: .4byte gUnknown_0202FFB4
_0808ECD4: .4byte 0x0000061c
_0808ECD8: .4byte gSprites
_0808ECDC:
	ldr r1, _0808ED48
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	adds r0, r1
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0808ECF0:
	ldr r0, _0808ED4C
	movs r1, 0x28
	movs r2, 0x50
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _0808ED50
	ldr r0, [r0]
	ldr r1, _0808ED54
	adds r0, r1
	ldrh r0, [r0]
	movs r1, 0x64
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xA
	bl __umodsi3
	adds r1, r0, 0
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	ldr r4, _0808ED48
	adds r0, r4
	lsls r1, 24
	lsrs r1, 24
	bl StartSpriteAnim
	ldr r0, _0808ED58
	movs r1, 0x8C
	movs r2, 0x60
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	adds r0, r4
	b _0808ED74
	.align 2, 0
_0808ED48: .4byte gSprites
_0808ED4C: .4byte gSpriteTemplate_83A059C
_0808ED50: .4byte gUnknown_0202FFB4
_0808ED54: .4byte 0x0000061c
_0808ED58: .4byte gSpriteTemplate_83A05B4
_0808ED5C:
	ldr r0, _0808ED8C
	movs r1, 0x8C
	movs r2, 0x50
	movs r3, 0x1
	bl CreateSprite
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r0, r7, 4
	adds r0, r7
	lsls r0, 2
	add r0, r10
_0808ED74:
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808ED8C: .4byte gSpriteTemplate_83A05B4
	thumb_func_end sub_808E978

	thumb_func_start nullsub_58
nullsub_58: @ 808ED90
	bx lr
	thumb_func_end nullsub_58

	thumb_func_start sub_808ED94
sub_808ED94: @ 808ED94
	push {lr}
	adds r1, r0, 0
	ldr r0, _0808EDB0
	ldr r0, [r0]
	ldr r2, _0808EDB4
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0808EDAC
	adds r0, r1, 0
	bl DestroySprite
_0808EDAC:
	pop {r0}
	bx r0
	.align 2, 0
_0808EDB0: .4byte gUnknown_0202FFB4
_0808EDB4: .4byte 0x0000064a
	thumb_func_end sub_808ED94

	thumb_func_start sub_808EDB8
sub_808EDB8: @ 808EDB8
	push {lr}
	adds r2, r0, 0
	ldrb r1, [r2, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x5]
	ldrb r1, [r2, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	strb r0, [r2, 0x1]
	movs r0, 0
	strh r0, [r2, 0x24]
	strh r0, [r2, 0x26]
	ldr r1, [r2, 0x20]
	ldr r0, _0808EE18
	cmp r1, r0
	beq _0808EE1C
	ldrh r1, [r2, 0x20]
	movs r3, 0x20
	ldrsh r0, [r2, r3]
	cmp r0, 0x30
	ble _0808EDEC
	subs r0, r1, 0x1
	strh r0, [r2, 0x20]
_0808EDEC:
	ldrh r1, [r2, 0x20]
	movs r3, 0x20
	ldrsh r0, [r2, r3]
	cmp r0, 0x2F
	bgt _0808EDFA
	adds r0, r1, 0x1
	strh r0, [r2, 0x20]
_0808EDFA:
	ldrh r1, [r2, 0x22]
	movs r3, 0x22
	ldrsh r0, [r2, r3]
	cmp r0, 0x38
	ble _0808EE08
	subs r0, r1, 0x1
	strh r0, [r2, 0x22]
_0808EE08:
	ldrh r1, [r2, 0x22]
	movs r3, 0x22
	ldrsh r0, [r2, r3]
	cmp r0, 0x37
	bgt _0808EE20
	adds r0, r1, 0x1
	strh r0, [r2, 0x22]
	b _0808EE20
	.align 2, 0
_0808EE18: .4byte 0x00380030
_0808EE1C:
	ldr r0, _0808EE24
	str r0, [r2, 0x1C]
_0808EE20:
	pop {r0}
	bx r0
	.align 2, 0
_0808EE24: .4byte nullsub_58
	thumb_func_end sub_808EDB8

	thumb_func_start sub_808EE28
sub_808EE28: @ 808EE28
	push {r4-r6,lr}
	sub sp, 0x4
	adds r4, r0, 0
	ldrh r0, [r4, 0x30]
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, _0808EE50
	ldr r0, [r5]
	ldr r1, _0808EE54
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0808EE58
	cmp r0, 0x3
	beq _0808EE58
	adds r0, r4, 0
	bl DestroySprite
	ldr r0, [r5]
	b _0808EF16
	.align 2, 0
_0808EE50: .4byte gUnknown_0202FFB4
_0808EE54: .4byte 0x0000064a
_0808EE58:
	ldr r2, _0808EEE4
	ldrh r0, [r4, 0x38]
	lsls r0, 24
	lsrs r0, 23
	adds r0, r2
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r0, 0x4C
	muls r0, r1
	cmp r0, 0
	bge _0808EE70
	adds r0, 0xFF
_0808EE70:
	asrs r0, 8
	strh r0, [r4, 0x26]
	movs r1, 0x38
	ldrsh r0, [r4, r1]
	adds r0, 0x40
	lsls r0, 1
	adds r0, r2
	movs r2, 0
	ldrsh r1, [r0, r2]
	movs r0, 0x80
	lsls r0, 9
	bl __divsi3
	adds r2, r0, 0
	ldr r0, _0808EEE8
	cmp r2, r0
	bls _0808EE94
	adds r2, r0, 0
_0808EE94:
	ldrh r0, [r4, 0x30]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x80
	lsls r1, 1
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp]
	movs r2, 0
	movs r3, 0
	bl SetOamMatrix
	adds r1, r6, 0x1
	movs r0, 0x1F
	ands r1, r0
	lsls r1, 1
	ldrb r2, [r4, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, 0x3]
	ldrh r0, [r4, 0x38]
	adds r0, 0x3F
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7E
	bhi _0808EEEC
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x5
	negs r1, r1
	ands r1, r0
	strb r1, [r2]
	movs r0, 0x1
	strh r0, [r4, 0x2E]
	b _0808EEF8
	.align 2, 0
_0808EEE4: .4byte gSineTable
_0808EEE8: .4byte 0x0000ffff
_0808EEEC:
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
_0808EEF8:
	ldrh r0, [r4, 0x38]
	adds r0, 0x3F
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x7E
	bls _0808EF22
	movs r3, 0x2E
	ldrsh r0, [r4, r3]
	cmp r0, 0
	beq _0808EF22
	adds r0, r4, 0
	bl DestroySprite
	ldr r0, _0808EF2C
	ldr r0, [r0]
_0808EF16:
	lsls r1, r6, 1
	ldr r2, _0808EF30
	adds r0, r2
	adds r0, r1
	ldr r1, _0808EF34
	strh r1, [r0]
_0808EF22:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808EF2C: .4byte gUnknown_0202FFB4
_0808EF30: .4byte 0x0000061e
_0808EF34: .4byte 0x0000ffff
	thumb_func_end sub_808EE28

	thumb_func_start sub_808EF38
sub_808EF38: @ 808EF38
	push {r4,lr}
	adds r4, r0, 0
	ldr r1, _0808EF58
	ldr r0, [r1]
	ldr r2, _0808EF5C
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0808EF60
	cmp r0, 0x3
	beq _0808EF60
	adds r0, r4, 0
	bl DestroySprite
	b _0808EF7C
	.align 2, 0
_0808EF58: .4byte gUnknown_0202FFB4
_0808EF5C: .4byte 0x0000064a
_0808EF60:
	ldr r2, [r1]
	ldr r1, _0808EF84
	adds r0, r2, r1
	ldrh r1, [r0]
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 3
	ldr r1, _0808EF88
	adds r2, r1
	ldrh r1, [r2]
	subs r1, 0x1
	bl __divsi3
	strh r0, [r4, 0x26]
_0808EF7C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0808EF84: .4byte 0x0000060e
_0808EF88: .4byte 0x0000060c
	thumb_func_end sub_808EF38

	thumb_func_start sub_808EF8C
sub_808EF8C: @ 808EF8C
	push {r4,r5,lr}
	adds r3, r0, 0
	ldr r1, _0808EFAC
	ldr r0, [r1]
	ldr r2, _0808EFB0
	adds r0, r2
	ldrb r0, [r0]
	adds r5, r1, 0
	cmp r0, 0
	beq _0808EFB4
	cmp r0, 0x3
	beq _0808EFB4
	adds r0, r3, 0
	bl DestroySprite
	b _0808F084
	.align 2, 0
_0808EFAC: .4byte gUnknown_0202FFB4
_0808EFB0: .4byte 0x0000064a
_0808EFB4:
	movs r1, 0x30
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _0808EFF6
	ldr r0, [r5]
	ldr r2, _0808EFDC
	adds r1, r0, r2
	ldrh r1, [r1]
	subs r2, 0x2
	adds r0, r2
	ldrh r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	bne _0808EFE0
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	b _0808EFEC
	.align 2, 0
_0808EFDC: .4byte 0x0000060e
_0808EFE0:
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
_0808EFEC:
	strb r1, [r0]
	adds r2, r0, 0
	ldrh r1, [r3, 0x32]
	lsls r0, r1, 24
	b _0808F02C
_0808EFF6:
	ldr r0, [r5]
	ldr r1, _0808F010
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _0808F014
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	b _0808F020
	.align 2, 0
_0808F010: .4byte 0x0000060e
_0808F014:
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r2, [r0]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
_0808F020:
	strb r1, [r0]
	adds r2, r0, 0
	ldrh r1, [r3, 0x32]
	adds r0, r1, 0
	subs r0, 0x80
	lsls r0, 24
_0808F02C:
	lsrs r0, 24
	adds r4, r1, 0
	ldr r1, _0808F078
	lsls r0, 1
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _0808F040
	adds r0, 0x3F
_0808F040:
	asrs r0, 6
	strh r0, [r3, 0x26]
	adds r0, r4, 0
	adds r0, 0x8
	strh r0, [r3, 0x32]
	ldr r1, [r5]
	movs r3, 0xCA
	lsls r3, 3
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0808F07C
	adds r3, 0x4
	adds r0, r1, r3
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _0808F07C
	ldrb r1, [r2]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	bne _0808F07C
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	b _0808F082
	.align 2, 0
_0808F078: .4byte gSineTable
_0808F07C:
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
_0808F082:
	strb r0, [r2]
_0808F084:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_808EF8C

	thumb_func_start sub_808F08C
sub_808F08C: @ 808F08C
	push {lr}
	adds r1, r0, 0
	ldr r0, _0808F0AC
	ldr r0, [r0]
	ldr r2, _0808F0B0
	adds r0, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0808F0A8
	cmp r0, 0x3
	beq _0808F0A8
	adds r0, r1, 0
	bl DestroySprite
_0808F0A8:
	pop {r0}
	bx r0
	.align 2, 0
_0808F0AC: .4byte gUnknown_0202FFB4
_0808F0B0: .4byte 0x0000064a
	thumb_func_end sub_808F08C

	thumb_func_start sub_808F0B4
sub_808F0B4: @ 808F0B4
	push {r4-r7,lr}
	sub sp, 0x4
	adds r6, r0, 0
	ldr r1, _0808F0D8
	ldr r0, [r1]
	ldr r2, _0808F0DC
	adds r0, r2
	ldrb r0, [r0]
	adds r7, r1, 0
	cmp r0, 0
	beq _0808F0E0
	cmp r0, 0x3
	beq _0808F0E0
	adds r0, r6, 0
	bl DestroySprite
	b _0808F158
	.align 2, 0
_0808F0D8: .4byte gUnknown_0202FFB4
_0808F0DC: .4byte 0x0000064a
_0808F0E0:
	ldr r0, [r7]
	ldr r5, _0808F160
	adds r0, r5
	ldrb r1, [r0]
	ldrh r0, [r6, 0x30]
	adds r1, r0
	lsls r1, 24
	lsrs r1, 24
	ldr r4, _0808F164
	lsls r0, r1, 1
	adds r0, r4
	ldrh r3, [r0]
	adds r1, 0x40
	lsls r1, 1
	adds r1, r4
	ldrh r0, [r6, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r1]
	lsls r3, 16
	lsrs r2, r3, 16
	negs r3, r3
	lsrs r3, 16
	str r1, [sp]
	bl SetOamMatrix
	ldr r1, [r7]
	adds r1, r5
	ldrh r0, [r6, 0x30]
	adds r0, 0x40
	ldrb r1, [r1]
	adds r0, r1
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r4
	ldrh r3, [r1]
	adds r0, 0x40
	lsls r0, 1
	adds r0, r4
	movs r2, 0
	ldrsh r1, [r0, r2]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	cmp r0, 0
	bge _0808F140
	adds r0, 0xFF
_0808F140:
	asrs r0, 8
	strh r0, [r6, 0x24]
	lsls r1, r3, 16
	asrs r1, 16
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	cmp r0, 0
	bge _0808F154
	adds r0, 0xFF
_0808F154:
	asrs r0, 8
	strh r0, [r6, 0x26]
_0808F158:
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F160: .4byte 0x0000062c
_0808F164: .4byte gSineTable
	thumb_func_end sub_808F0B4

	thumb_func_start sub_808F168
sub_808F168: @ 808F168
	push {r4,lr}
	adds r3, r0, 0
	ldr r1, _0808F188
	ldr r0, [r1]
	ldr r2, _0808F18C
	adds r0, r2
	ldrb r2, [r0]
	cmp r2, 0
	beq _0808F190
	cmp r2, 0x3
	beq _0808F190
	adds r0, r3, 0
	bl DestroySprite
	b _0808F208
	.align 2, 0
_0808F188: .4byte gUnknown_0202FFB4
_0808F18C: .4byte 0x0000064a
_0808F190:
	ldr r4, [r1]
	ldr r1, _0808F1F0
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, 0x60
	cmp r0, 0
	bne _0808F1A0
	movs r1, 0x50
_0808F1A0:
	movs r2, 0xCA
	lsls r2, 3
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0808F1FC
	adds r2, 0x4
	adds r0, r4, r2
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r0, r1
	bne _0808F1FC
	adds r2, r3, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0808F1F4
	adds r0, r4, r1
	ldrh r0, [r0]
	lsls r0, 4
	strh r0, [r3, 0x26]
	ldr r1, _0808F1F8
	ldrh r2, [r3, 0x32]
	lsls r0, r2, 24
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _0808F1E4
	adds r0, 0x3F
_0808F1E4:
	asrs r0, 6
	strh r0, [r3, 0x24]
	adds r0, r2, 0
	adds r0, 0x8
	strh r0, [r3, 0x32]
	b _0808F208
	.align 2, 0
_0808F1F0: .4byte 0x0000064a
_0808F1F4: .4byte 0x00000652
_0808F1F8: .4byte gSineTable
_0808F1FC:
	adds r0, r3, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_0808F208:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_808F168

	thumb_func_start sub_808F210
sub_808F210: @ 808F210
	push {r4,lr}
	lsls r4, r1, 24
	lsrs r4, 24
	ldr r1, _0808F244
	str r0, [r1]
	ldr r0, _0808F248
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0808F24C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r3, 0
	strh r3, [r1, 0x8]
	movs r2, 0x1
	strh r2, [r1, 0xA]
	strh r3, [r1, 0xC]
	strh r3, [r1, 0xE]
	strh r4, [r1, 0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0808F244: .4byte gUnknown_0202FFBC
_0808F248: .4byte sub_808F2B0
_0808F24C: .4byte gTasks
	thumb_func_end sub_808F210

	thumb_func_start sub_808F250
sub_808F250: @ 808F250
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0808F274
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0x8
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _0808F27C
	ldr r1, [r1]
	ldr r0, _0808F278
	cmp r1, r0
	bne _0808F27C
	movs r0, 0
	b _0808F27E
	.align 2, 0
_0808F274: .4byte gTasks
_0808F278: .4byte sub_808F6CC
_0808F27C:
	movs r0, 0x1
_0808F27E:
	pop {r1}
	bx r1
	thumb_func_end sub_808F250

	thumb_func_start sub_808F284
sub_808F284: @ 808F284
	adds r2, r0, 0
	lsls r0, r1, 24
	lsrs r0, 24
	ldr r1, _0808F2A8
	str r2, [r1]
	ldr r2, _0808F2AC
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r3, 0
	movs r2, 0x1
	strh r2, [r1, 0x8]
	strh r3, [r1, 0xA]
	strh r3, [r1, 0xC]
	strh r3, [r1, 0xE]
	bx lr
	.align 2, 0
_0808F2A8: .4byte gUnknown_0202FFBC
_0808F2AC: .4byte gTasks
	thumb_func_end sub_808F284

	thumb_func_start sub_808F2B0
sub_808F2B0: @ 808F2B0
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _0808F2D0
	ldr r2, _0808F2D4
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r5, r1, 0
	cmp r0, 0xA
	bhi _0808F308
	lsls r0, 2
	ldr r1, _0808F2D8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808F2D0: .4byte gMain
_0808F2D4: .4byte 0x0000043c
_0808F2D8: .4byte _0808F2DC
	.align 2, 0
_0808F2DC:
	.4byte _0808F308
	.4byte _0808F38C
	.4byte _0808F3D0
	.4byte _0808F3F4
	.4byte _0808F418
	.4byte _0808F52C
	.4byte _0808F578
	.4byte _0808F5D4
	.4byte _0808F614
	.4byte _0808F672
	.4byte _0808F694
_0808F308:
	ldr r0, _0808F370
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	beq _0808F31A
	b _0808F6B6
_0808F31A:
	ldr r1, _0808F374
	ldr r0, [r1]
	ldr r3, _0808F378
	adds r0, r3
	movs r6, 0x1
	strb r6, [r0]
	ldr r0, [r1]
	ldr r1, _0808F37C
	adds r0, r1
	strb r2, [r0]
	ldr r1, _0808F380
	ldr r0, [r5, 0xC]
	str r0, [r1]
	movs r0, 0
	bl SetVBlankCallback
	movs r2, 0
	ldr r1, _0808F384
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r1, r0, r1
	movs r3, 0xA
	ldrsh r0, [r1, r3]
	cmp r0, 0
	beq _0808F352
	movs r2, 0x80
	lsls r2, 5
_0808F352:
	movs r3, 0xC
	ldrsh r0, [r1, r3]
	cmp r0, 0
	beq _0808F362
	movs r1, 0x80
	lsls r1, 2
	adds r0, r1, 0
	orrs r2, r0
_0808F362:
	adds r0, r2, 0
	bl sub_8091060
	ldr r2, _0808F388
	adds r0, r5, r2
	strb r6, [r0]
	b _0808F6B6
	.align 2, 0
_0808F370: .4byte gPaletteFade
_0808F374: .4byte gUnknown_0202FFB4
_0808F378: .4byte 0x0000064a
_0808F37C: .4byte 0x0000064e
_0808F380: .4byte gUnknown_03005CEC
_0808F384: .4byte gTasks
_0808F388: .4byte 0x0000043c
_0808F38C:
	ldr r0, _0808F3B8
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, _0808F3BC
	ldr r1, _0808F3C0
	bl LZ77UnCompVram
	ldr r0, _0808F3C4
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r2, 0xFF
	lsls r2, 2
	movs r1, 0x2
	bl sub_8091738
	ldr r1, _0808F3C8
	ldr r3, _0808F3CC
	adds r1, r3
	b _0808F682
	.align 2, 0
_0808F3B8: .4byte gPokedexMenu_Gfx
_0808F3BC: .4byte gUnknown_08E96BD4
_0808F3C0: .4byte 0x06007800
_0808F3C4: .4byte gUnknown_0202FFBC
_0808F3C8: .4byte gMain
_0808F3CC: .4byte 0x0000043c
_0808F3D0:
	movs r0, 0xD
	bl sub_80904FC
	ldr r0, _0808F3EC
	ldr r0, [r0]
	ldr r1, _0808F3F0
	adds r0, r1
	ldrb r0, [r0]
	movs r1, 0xD
	bl sub_8090584
	bl sub_808D640
	b _0808F67C
	.align 2, 0
_0808F3EC: .4byte gUnknown_0202FFB4
_0808F3F0: .4byte 0x0000064d
_0808F3F4:
	ldr r4, _0808F40C
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl InitMenuWindow
	ldr r1, _0808F410
	ldr r3, _0808F414
	adds r1, r3
	b _0808F682
	.align 2, 0
_0808F40C: .4byte gWindowConfig_81E7064
_0808F410: .4byte gMain
_0808F414: .4byte 0x0000043c
_0808F418:
	ldr r0, _0808F440
	ldr r0, [r0]
	ldr r1, _0808F444
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _0808F44C
	ldr r0, _0808F448
	ldr r0, [r0]
	ldrh r0, [r0]
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xD
	movs r2, 0x3
	bl sub_8091154
	b _0808F45A
	.align 2, 0
_0808F440: .4byte gUnknown_0202FFB4
_0808F444: .4byte 0x00000612
_0808F448: .4byte gUnknown_0202FFBC
_0808F44C:
	ldr r0, _0808F4F8
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, 0xD
	movs r2, 0x3
	bl sub_8091154
_0808F45A:
	ldr r5, _0808F4F8
	ldr r0, [r5]
	ldrh r0, [r0]
	movs r1, 0x10
	movs r2, 0x3
	bl sub_80911C8
	ldr r0, _0808F4FC
	movs r1, 0xB
	movs r2, 0x5
	bl MenuPrint
	ldr r0, _0808F500
	movs r1, 0x10
	movs r2, 0x7
	bl MenuPrint
	ldr r0, _0808F504
	movs r1, 0x10
	movs r2, 0x9
	bl MenuPrint
	ldr r2, [r5]
	ldrb r1, [r2, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0808F50C
	ldrh r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r4, _0808F508
	adds r0, r4
	movs r1, 0xB
	movs r2, 0x5
	bl sub_8091304
	ldr r0, [r5]
	ldrh r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0xC]
	movs r1, 0x10
	movs r2, 0x7
	bl sub_8091458
	ldr r0, [r5]
	ldrh r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r0, [r0, 0xE]
	movs r1, 0x10
	movs r2, 0x9
	bl sub_8091564
	ldr r0, [r5]
	ldrh r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r4, 0x10
	adds r0, r4
	ldr r0, [r0]
	movs r1, 0x2
	movs r2, 0xD
	bl MenuPrint
	movs r1, 0xFF
	lsls r1, 2
	movs r0, 0xE
	bl sub_80917CC
	b _0808F67C
	.align 2, 0
_0808F4F8: .4byte gUnknown_0202FFBC
_0808F4FC: .4byte gDexText_UnknownPoke
_0808F500: .4byte gDexText_UnknownHeight
_0808F504: .4byte gDexText_UnknownWeight
_0808F508: .4byte gPokedexEntries
_0808F50C:
	ldr r0, _0808F524
	movs r1, 0x2
	movs r2, 0xD
	bl MenuPrint
	ldr r0, _0808F528
	movs r1, 0x31
	movs r2, 0x1E
	bl LoadPalette
	b _0808F67C
	.align 2, 0
_0808F524: .4byte gUnknown_083A05F8
_0808F528: .4byte gPlttBufferUnfaded + 0x2
_0808F52C:
	ldr r0, _0808F56C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r4, r1, r0
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	cmp r0, 0
	beq _0808F540
	b _0808F67C
_0808F540:
	ldr r0, _0808F570
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, 0x30
	movs r2, 0x38
	movs r3, 0
	bl sub_80918EC
	strh r0, [r4, 0x10]
	ldr r2, _0808F574
	movs r1, 0x10
	ldrsh r0, [r4, r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x5]
	b _0808F67C
	.align 2, 0
_0808F56C: .4byte gTasks
_0808F570: .4byte gUnknown_0202FFBC
_0808F574: .4byte gSprites
_0808F578:
	movs r3, 0
	ldr r0, _0808F5C8
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	movs r2, 0xC
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _0808F58E
	movs r3, 0x14
_0808F58E:
	movs r2, 0xA
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _0808F5B0
	ldr r2, _0808F5CC
	movs r0, 0x10
	ldrsh r1, [r1, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x5]
	lsrs r1, 4
	adds r1, 0x10
	movs r0, 0x1
	lsls r0, r1
	orrs r3, r0
_0808F5B0:
	mvns r0, r3
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, _0808F5D0
	ldr r0, [r0]
	bl SetVBlankCallback
	b _0808F67C
	.align 2, 0
_0808F5C8: .4byte gTasks
_0808F5CC: .4byte gSprites
_0808F5D0: .4byte gUnknown_03005CEC
_0808F5D4:
	ldr r0, _0808F604
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _0808F608
	ldr r3, _0808F60C
	adds r0, r3, 0
	strh r0, [r1]
	subs r1, 0x4
	movs r2, 0xD0
	lsls r2, 4
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0xA
	movs r3, 0xF2
	lsls r3, 5
	adds r0, r3, 0
	strh r0, [r1]
	ldr r0, _0808F610
	adds r1, r5, r0
	b _0808F682
	.align 2, 0
_0808F604: .4byte REG_BLDCNT
_0808F608: .4byte REG_BG3CNT
_0808F60C: .4byte 0x00000f03
_0808F610: .4byte 0x0000043c
_0808F614:
	ldr r0, _0808F65C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0808F6B6
	ldr r1, _0808F660
	adds r2, r5, r1
	ldrb r0, [r2]
	adds r3, r0, 0x1
	strb r3, [r2]
	ldr r1, _0808F664
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0xE
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _0808F66C
	bl StopCryAndClearCrySongs
	ldr r0, _0808F668
	ldr r0, [r0]
	ldrh r0, [r0]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0
	movs r2, 0x7D
	movs r3, 0xA
	bl PlayCry2
	b _0808F6B6
	.align 2, 0
_0808F65C: .4byte gPaletteFade
_0808F660: .4byte 0x0000043c
_0808F664: .4byte gTasks
_0808F668: .4byte gUnknown_0202FFBC
_0808F66C:
	adds r0, r3, 0x1
	strb r0, [r2]
	b _0808F6B6
_0808F672:
	bl IsCryPlayingOrClearCrySongs
	lsls r0, 24
	cmp r0, 0
	bne _0808F6B6
_0808F67C:
	ldr r1, _0808F68C
	ldr r2, _0808F690
	adds r1, r2
_0808F682:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0808F6B6
	.align 2, 0
_0808F68C: .4byte gMain
_0808F690: .4byte 0x0000043c
_0808F694:
	ldr r1, _0808F6C0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r2, 0
	movs r1, 0
	strh r1, [r0, 0x8]
	strh r1, [r0, 0xA]
	movs r1, 0x1
	strh r1, [r0, 0xC]
	strh r1, [r0, 0xE]
	ldr r1, _0808F6C4
	str r1, [r0]
	ldr r3, _0808F6C8
	adds r0, r5, r3
	strb r2, [r0]
_0808F6B6:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F6C0: .4byte gTasks
_0808F6C4: .4byte sub_808F6CC
_0808F6C8: .4byte 0x0000043c
	thumb_func_end sub_808F2B0

	thumb_func_start sub_808F6CC
sub_808F6CC: @ 808F6CC
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0808F704
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r5, r1, r2
	movs r0, 0x8
	ldrsh r4, [r5, r0]
	cmp r4, 0
	beq _0808F70C
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808F708
	str r0, [r5]
	movs r0, 0x6C
	bl PlaySE
	b _0808F874
	.align 2, 0
_0808F704: .4byte gTasks
_0808F708: .4byte sub_808F888
_0808F70C:
	ldr r1, _0808F73C
	ldrh r2, [r1, 0x2E]
	movs r6, 0x2
	adds r0, r6, 0
	ands r0, r2
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	beq _0808F744
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808F740
	str r0, [r5]
	movs r0, 0x3
	bl PlaySE
	b _0808F874
	.align 2, 0
_0808F73C: .4byte gMain
_0808F740: .4byte sub_808F8B8
_0808F744:
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	beq _0808F7E8
	ldr r0, _0808F764
	ldr r0, [r0]
	ldr r1, _0808F768
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0808F77C
	cmp r0, 0x1
	bgt _0808F76C
	cmp r0, 0
	beq _0808F776
	b _0808F874
	.align 2, 0
_0808F764: .4byte gUnknown_0202FFB4
_0808F768: .4byte 0x0000064d
_0808F76C:
	cmp r0, 0x2
	beq _0808F794
	cmp r0, 0x3
	beq _0808F7AC
	b _0808F874
_0808F776:
	bl sub_8090C68
	b _0808F874
_0808F77C:
	movs r0, 0x15
	negs r0, r0
	str r3, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808F790
	b _0808F7DA
	.align 2, 0
_0808F790: .4byte sub_808F8D8
_0808F794:
	movs r0, 0x15
	negs r0, r0
	str r3, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808F7A8
	b _0808F7DA
	.align 2, 0
_0808F7A8: .4byte sub_808FA64
_0808F7AC:
	ldr r0, _0808F7C4
	ldr r0, [r0]
	ldrb r1, [r0, 0x2]
	adds r0, r6, 0
	ands r0, r1
	cmp r0, 0
	bne _0808F7C8
	movs r0, 0x20
	bl PlaySE
	b _0808F874
	.align 2, 0
_0808F7C4: .4byte gUnknown_0202FFBC
_0808F7C8:
	movs r0, 0x15
	negs r0, r0
	str r3, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808F7E4
_0808F7DA:
	str r0, [r5]
	movs r0, 0x15
	bl PlaySE
	b _0808F874
	.align 2, 0
_0808F7E4: .4byte sub_8090070
_0808F7E8:
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	bne _0808F802
	movs r0, 0x80
	lsls r0, 2
	ands r0, r2
	cmp r0, 0
	beq _0808F834
	ldr r0, _0808F828
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0808F834
_0808F802:
	ldr r3, _0808F82C
	ldr r0, [r3]
	ldr r4, _0808F830
	adds r2, r0, r4
	ldrb r0, [r2]
	cmp r0, 0
	beq _0808F834
	subs r0, 0x1
	strb r0, [r2]
	ldr r0, [r3]
	adds r0, r4
	ldrb r0, [r0]
	movs r1, 0xD
	bl sub_8090584
	movs r0, 0x6D
	bl PlaySE
	b _0808F874
	.align 2, 0
_0808F828: .4byte gSaveBlock2
_0808F82C: .4byte gUnknown_0202FFB4
_0808F830: .4byte 0x0000064d
_0808F834:
	ldrh r1, [r1, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0808F850
	movs r0, 0x80
	lsls r0, 1
	ands r0, r1
	cmp r0, 0
	beq _0808F874
	ldr r0, _0808F87C
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0808F874
_0808F850:
	ldr r2, _0808F880
	ldr r0, [r2]
	ldr r3, _0808F884
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _0808F874
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, r3
	ldrb r0, [r0]
	movs r1, 0xD
	bl sub_8090584
	movs r0, 0x6D
	bl PlaySE
_0808F874:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808F87C: .4byte gSaveBlock2
_0808F880: .4byte gUnknown_0202FFB4
_0808F884: .4byte 0x0000064d
	thumb_func_end sub_808F6CC

	thumb_func_start sub_808F888
sub_808F888: @ 808F888
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _0808F8AC
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0808F8A8
	ldr r0, _0808F8B0
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _0808F8B4
	str r0, [r1]
_0808F8A8:
	pop {r0}
	bx r0
	.align 2, 0
_0808F8AC: .4byte gPaletteFade
_0808F8B0: .4byte gTasks
_0808F8B4: .4byte sub_808F2B0
	thumb_func_end sub_808F888

	thumb_func_start sub_808F8B8
sub_808F8B8: @ 808F8B8
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _0808F8D4
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0808F8D0
	adds r0, r2, 0
	bl DestroyTask
_0808F8D0:
	pop {r0}
	bx r0
	.align 2, 0
_0808F8D4: .4byte gPaletteFade
	thumb_func_end sub_808F8B8

	thumb_func_start sub_808F8D8
sub_808F8D8: @ 808F8D8
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r2, _0808F92C
	ldr r0, _0808F930
	adds r6, r2, r0
	ldrb r0, [r6]
	cmp r0, 0x1
	beq _0808F948
	cmp r0, 0x1
	ble _0808F8F2
	cmp r0, 0x2
	beq _0808F970
_0808F8F2:
	ldr r0, _0808F934
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0808F9AA
	ldr r4, _0808F938
	ldr r0, [r4]
	ldr r1, _0808F93C
	adds r0, r1
	movs r1, 0x5
	strb r1, [r0]
	ldr r1, _0808F940
	ldr r0, [r2, 0xC]
	str r0, [r1]
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x80
	lsls r0, 2
	bl sub_8091060
	ldr r0, [r4]
	ldr r2, _0808F944
	adds r0, r2
	movs r1, 0x1
	strb r1, [r0]
	strb r1, [r6]
	b _0808F9AA
	.align 2, 0
_0808F92C: .4byte gMain
_0808F930: .4byte 0x0000043c
_0808F934: .4byte gPaletteFade
_0808F938: .4byte gUnknown_0202FFB4
_0808F93C: .4byte 0x0000064a
_0808F940: .4byte gUnknown_03005CEC
_0808F944: .4byte 0x0000064d
_0808F948:
	movs r0, 0xD
	bl sub_8090540
	movs r0, 0x1
	movs r1, 0xD
	bl sub_8090644
	bl sub_808D640
	ldr r1, _0808F96C
	movs r2, 0xD0
	lsls r2, 4
	adds r0, r2, 0
	strh r0, [r1]
	ldrb r0, [r6]
	adds r0, 0x1
	strb r0, [r6]
	b _0808F9AA
	.align 2, 0
_0808F96C: .4byte REG_BG1CNT
_0808F970:
	ldr r0, _0808F9B0
	ldr r0, [r0]
	ldrh r0, [r0]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r0, 16
	ldr r5, _0808F9B4
	ldr r1, [r5]
	ldr r4, _0808F9B8
	adds r1, r4
	bl sub_81113AC
	ldr r0, _0808F9BC
	ldr r0, [r0]
	bl SetVBlankCallback
	ldr r0, [r5]
	adds r0, r4
	movs r1, 0
	strb r1, [r0]
	strb r1, [r6]
	ldr r1, _0808F9C0
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	ldr r1, _0808F9C4
	str r1, [r0]
_0808F9AA:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F9B0: .4byte gUnknown_0202FFBC
_0808F9B4: .4byte gUnknown_0202FFB4
_0808F9B8: .4byte 0x0000064f
_0808F9BC: .4byte gUnknown_03005CEC
_0808F9C0: .4byte gTasks
_0808F9C4: .4byte sub_808F9C8
	thumb_func_end sub_808F8D8

	thumb_func_start sub_808F9C8
sub_808F9C8: @ 808F9C8
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _0808F9F0
	ldr r0, [r0]
	ldr r1, _0808F9F4
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0808F9EA
	ldr r0, _0808F9F8
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _0808F9FC
	str r0, [r1]
_0808F9EA:
	pop {r0}
	bx r0
	.align 2, 0
_0808F9F0: .4byte gUnknown_0202FFB4
_0808F9F4: .4byte 0x0000064f
_0808F9F8: .4byte gTasks
_0808F9FC: .4byte sub_808FA00
	thumb_func_end sub_808F9C8

	thumb_func_start sub_808FA00
sub_808FA00: @ 808FA00
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _0808FA34
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0808FA56
	ldr r0, _0808FA38
	ldr r0, [r0]
	ldr r1, _0808FA3C
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _0808FA24
	cmp r0, 0x2
	beq _0808FA48
_0808FA24:
	ldr r0, _0808FA40
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _0808FA44
	b _0808FA54
	.align 2, 0
_0808FA34: .4byte gPaletteFade
_0808FA38: .4byte gUnknown_0202FFB4
_0808FA3C: .4byte 0x0000064f
_0808FA40: .4byte gTasks
_0808FA44: .4byte sub_808F2B0
_0808FA48:
	ldr r0, _0808FA5C
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _0808FA60
_0808FA54:
	str r0, [r1]
_0808FA56:
	pop {r0}
	bx r0
	.align 2, 0
_0808FA5C: .4byte gTasks
_0808FA60: .4byte sub_808FA64
	thumb_func_end sub_808FA00

	thumb_func_start sub_808FA64
sub_808FA64: @ 808FA64
	push {r4,r5,lr}
	sub sp, 0x18
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _0808FA84
	ldr r2, _0808FA88
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, r1, 0
	cmp r0, 0xA
	bhi _0808FABC
	lsls r0, 2
	ldr r1, _0808FA8C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808FA84: .4byte gMain
_0808FA88: .4byte 0x0000043c
_0808FA8C: .4byte _0808FA90
	.align 2, 0
_0808FA90:
	.4byte _0808FABC
	.4byte _0808FB28
	.4byte _0808FB58
	.4byte _0808FB9C
	.4byte _0808FBC4
	.4byte _0808FBF8
	.4byte _0808FC54
	.4byte _0808FCD4
	.4byte _0808FD40
	.4byte _0808FD6C
	.4byte _0808FDBC
_0808FABC:
	ldr r0, _0808FB08
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0808FACA
	b _0808FDDC
_0808FACA:
	ldr r0, _0808FB0C
	bl m4aMPlayStop
	ldr r5, _0808FB10
	ldr r0, [r5]
	ldr r3, _0808FB14
	adds r0, r3
	movs r1, 0x6
	strb r1, [r0]
	ldr r1, _0808FB18
	ldr r4, _0808FB1C
	ldr r0, [r4, 0xC]
	str r0, [r1]
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x80
	lsls r0, 2
	bl sub_8091060
	ldr r0, [r5]
	ldr r1, _0808FB20
	adds r0, r1
	movs r1, 0x2
	strb r1, [r0]
	ldr r2, _0808FB24
	adds r4, r2
	movs r0, 0x1
	strb r0, [r4]
	b _0808FDDC
	.align 2, 0
_0808FB08: .4byte gPaletteFade
_0808FB0C: .4byte gMPlay_BGM
_0808FB10: .4byte gUnknown_0202FFB4
_0808FB14: .4byte 0x0000064a
_0808FB18: .4byte gUnknown_03005CEC
_0808FB1C: .4byte gMain
_0808FB20: .4byte 0x0000064d
_0808FB24: .4byte 0x0000043c
_0808FB28:
	ldr r0, _0808FB44
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, _0808FB48
	ldr r1, _0808FB4C
	bl LZ77UnCompVram
	ldr r1, _0808FB50
	ldr r3, _0808FB54
	adds r1, r3
	b _0808FDA0
	.align 2, 0
_0808FB44: .4byte gPokedexMenu_Gfx
_0808FB48: .4byte gUnknown_0839F8A0
_0808FB4C: .4byte 0x06007000
_0808FB50: .4byte gMain
_0808FB54: .4byte 0x0000043c
_0808FB58:
	movs r0, 0xD
	bl sub_8090540
	movs r0, 0x2
	movs r1, 0xD
	bl sub_8090644
	bl sub_808D640
	ldr r2, _0808FB88
	add r1, sp, 0x4
	movs r0, 0
	strh r0, [r1]
	ldr r0, _0808FB8C
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _0808FB90
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	ldr r1, _0808FB94
	ldr r4, _0808FB98
	adds r1, r4
	b _0808FDA0
	.align 2, 0
_0808FB88: .4byte 0x0600f800
_0808FB8C: .4byte 0x040000d4
_0808FB90: .4byte 0x81000280
_0808FB94: .4byte gMain
_0808FB98: .4byte 0x0000043c
_0808FB9C:
	ldr r4, _0808FBB8
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl InitMenuWindow
	bl ResetPaletteFade
	ldr r1, _0808FBBC
	ldr r0, _0808FBC0
	adds r1, r0
	b _0808FDA0
	.align 2, 0
_0808FBB8: .4byte gWindowConfig_81E702C
_0808FBBC: .4byte gMain
_0808FBC0: .4byte 0x0000043c
_0808FBC4:
	ldr r0, _0808FBE8
	movs r1, 0xA
	movs r2, 0x4
	bl MenuPrint
	ldr r0, _0808FBEC
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, 0xA
	movs r2, 0x6
	movs r3, 0x2
	bl sub_8091260
	ldr r1, _0808FBF0
	ldr r2, _0808FBF4
	adds r1, r2
	b _0808FDA0
	.align 2, 0
_0808FBE8: .4byte gDexText_CryOf
_0808FBEC: .4byte gUnknown_0202FFBC
_0808FBF0: .4byte gMain
_0808FBF4: .4byte 0x0000043c
_0808FBF8:
	ldr r0, _0808FC3C
	ldr r0, [r0]
	ldrh r0, [r0]
	movs r1, 0x30
	movs r2, 0x38
	movs r3, 0
	bl sub_80918EC
	ldr r2, _0808FC40
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r2
	movs r3, 0
	strh r0, [r1, 0x10]
	ldr r2, _0808FC44
	movs r4, 0x10
	ldrsh r0, [r1, r4]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x5]
	ldr r0, _0808FC48
	strb r3, [r0]
	ldr r1, _0808FC4C
	ldr r0, _0808FC50
	adds r1, r0
	b _0808FDA0
	.align 2, 0
_0808FC3C: .4byte gUnknown_0202FFBC
_0808FC40: .4byte gTasks
_0808FC44: .4byte gSprites
_0808FC48: .4byte gUnknown_03005E98
_0808FC4C: .4byte gMain
_0808FC50: .4byte 0x0000043c
_0808FC54:
	ldr r1, _0808FCB0
	ldr r0, [sp, 0x8]
	ands r0, r1
	ldr r1, _0808FCB4
	orrs r0, r1
	ldr r1, _0808FCB8
	ands r0, r1
	movs r1, 0xF8
	lsls r1, 13
	orrs r0, r1
	ldr r1, _0808FCBC
	ands r0, r1
	movs r1, 0x80
	lsls r1, 20
	orrs r0, r1
	str r0, [sp, 0x8]
	ldr r2, _0808FCC0
	add r0, sp, 0x8
	ldr r1, [r0, 0x4]
	ands r1, r2
	movs r2, 0xF0
	lsls r2, 5
	orrs r1, r2
	ldr r2, _0808FCC4
	ands r1, r2
	movs r2, 0xC
	orrs r1, r2
	str r1, [r0, 0x4]
	movs r1, 0
	bl sub_8119E3C
	lsls r0, 24
	cmp r0, 0
	bne _0808FC9A
	b _0808FDDC
_0808FC9A:
	ldr r1, _0808FCC8
	ldr r2, _0808FCCC
	adds r1, r2
	ldrb r0, [r1]
	adds r0, 0x1
	movs r2, 0
	strb r0, [r1]
	ldr r0, _0808FCD0
	strb r2, [r0]
	b _0808FDDC
	.align 2, 0
_0808FCB0: .4byte 0xffff0000
_0808FCB4: .4byte 0x00004020
_0808FCB8: .4byte 0xff00ffff
_0808FCBC: .4byte 0x00ffffff
_0808FCC0: .4byte 0xffff00ff
_0808FCC4: .4byte 0xffffff00
_0808FCC8: .4byte gMain
_0808FCCC: .4byte 0x0000043c
_0808FCD0: .4byte gUnknown_03005E98
_0808FCD4:
	ldr r1, _0808FD24
	ldr r0, [sp, 0x10]
	ands r0, r1
	movs r1, 0xC0
	lsls r1, 6
	orrs r0, r1
	ldr r1, _0808FD28
	ands r0, r1
	movs r1, 0xE0
	lsls r1, 12
	orrs r0, r1
	ldr r1, _0808FD2C
	ands r0, r1
	movs r1, 0x90
	lsls r1, 20
	orrs r0, r1
	str r0, [sp, 0x10]
	ldr r2, _0808FD30
	add r0, sp, 0x10
	ldr r1, [r0, 0x4]
	ands r1, r2
	movs r2, 0x12
	orrs r1, r2
	ldr r2, _0808FD34
	ands r1, r2
	movs r2, 0xC0
	lsls r2, 2
	orrs r1, r2
	str r1, [r0, 0x4]
	movs r1, 0x1
	bl sub_811A3CC
	lsls r0, 24
	cmp r0, 0
	beq _0808FDDC
	ldr r1, _0808FD38
	ldr r3, _0808FD3C
	adds r1, r3
	b _0808FDA0
	.align 2, 0
_0808FD24: .4byte 0xffff0000
_0808FD28: .4byte 0xff00ffff
_0808FD2C: .4byte 0x00ffffff
_0808FD30: .4byte 0xffffff00
_0808FD34: .4byte 0xffff00ff
_0808FD38: .4byte gMain
_0808FD3C: .4byte 0x0000043c
_0808FD40:
	movs r0, 0x15
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, _0808FD60
	ldr r0, [r0]
	bl SetVBlankCallback
	ldr r1, _0808FD64
	ldr r4, _0808FD68
	adds r1, r4
	b _0808FDA0
	.align 2, 0
_0808FD60: .4byte gUnknown_03005CEC
_0808FD64: .4byte gMain
_0808FD68: .4byte 0x0000043c
_0808FD6C:
	ldr r0, _0808FDA8
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _0808FDAC
	ldr r3, _0808FDB0
	adds r0, r3, 0
	strh r0, [r1]
	subs r1, 0x4
	ldr r4, _0808FDB4
	adds r0, r4, 0
	strh r0, [r1]
	adds r1, 0x2
	movs r3, 0xD0
	lsls r3, 4
	adds r0, r3, 0
	strh r0, [r1]
	subs r1, 0xA
	adds r4, 0x39
	adds r0, r4, 0
	strh r0, [r1]
	ldr r0, _0808FDB8
	adds r1, r2, r0
_0808FDA0:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0808FDDC
	.align 2, 0
_0808FDA8: .4byte REG_BLDCNT
_0808FDAC: .4byte REG_BG2CNT
_0808FDB0: .4byte 0x00000e02
_0808FDB4: .4byte 0x00001f07
_0808FDB8: .4byte 0x0000043c
_0808FDBC:
	ldr r0, _0808FDE4
	ldr r0, [r0]
	ldr r1, _0808FDE8
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r3, _0808FDEC
	adds r0, r2, r3
	strb r1, [r0]
	ldr r1, _0808FDF0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0808FDF4
	str r1, [r0]
_0808FDDC:
	add sp, 0x18
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FDE4: .4byte gUnknown_0202FFB4
_0808FDE8: .4byte 0x0000064f
_0808FDEC: .4byte 0x0000043c
_0808FDF0: .4byte gTasks
_0808FDF4: .4byte sub_808FDF8
	thumb_func_end sub_808FA64

	thumb_func_start sub_808FDF8
sub_808FDF8: @ 808FDF8
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0
	bl sub_8119F88
	bl IsCryPlaying
	lsls r0, 24
	cmp r0, 0
	beq _0808FE18
	movs r0, 0x1
	bl sub_8090040
	b _0808FE1E
_0808FE18:
	movs r0, 0
	bl sub_8090040
_0808FE1E:
	ldr r1, _0808FE48
	ldrh r2, [r1, 0x2E]
	movs r0, 0x1
	ands r0, r2
	adds r5, r1, 0
	cmp r0, 0
	beq _0808FE50
	movs r0, 0x1
	bl sub_8090040
	ldr r0, _0808FE4C
	ldr r0, [r0]
	ldrh r0, [r0]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r0, 16
	bl sub_811A050
	b _0808FF9E
	.align 2, 0
_0808FE48: .4byte gMain
_0808FE4C: .4byte gUnknown_0202FFBC
_0808FE50:
	ldr r0, _0808FEA8
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	beq _0808FE62
	b _0808FF9E
_0808FE62:
	movs r0, 0x2
	ands r0, r2
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	beq _0808FEC0
	movs r0, 0x15
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808FEAC
	bl m4aMPlayContinue
	ldr r0, _0808FEB0
	ldr r0, [r0]
	ldr r1, _0808FEB4
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, _0808FEB8
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0808FEBC
	str r1, [r0]
	movs r0, 0x3
	bl PlaySE
	b _0808FF9E
	.align 2, 0
_0808FEA8: .4byte gPaletteFade
_0808FEAC: .4byte gMPlay_BGM
_0808FEB0: .4byte gUnknown_0202FFB4
_0808FEB4: .4byte 0x0000064f
_0808FEB8: .4byte gTasks
_0808FEBC: .4byte sub_808FFBC
_0808FEC0:
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	bne _0808FEDA
	movs r0, 0x80
	lsls r0, 2
	ands r0, r2
	cmp r0, 0
	beq _0808FF2C
	ldr r0, _0808FF14
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0808FF2C
_0808FEDA:
	movs r0, 0x15
	negs r0, r0
	str r3, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808FF18
	bl m4aMPlayContinue
	ldr r0, _0808FF1C
	ldr r0, [r0]
	ldr r1, _0808FF20
	adds r0, r1
	movs r1, 0x2
	strb r1, [r0]
	ldr r1, _0808FF24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0808FF28
	str r1, [r0]
	movs r0, 0x6D
	bl PlaySE
	b _0808FF9E
	.align 2, 0
_0808FF14: .4byte gSaveBlock2
_0808FF18: .4byte gMPlay_BGM
_0808FF1C: .4byte gUnknown_0202FFB4
_0808FF20: .4byte 0x0000064f
_0808FF24: .4byte gTasks
_0808FF28: .4byte sub_808FFBC
_0808FF2C:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0808FF48
	movs r0, 0x80
	lsls r0, 1
	ands r0, r1
	cmp r0, 0
	beq _0808FF9E
	ldr r0, _0808FF60
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0808FF9E
_0808FF48:
	ldr r0, _0808FF64
	ldr r0, [r0]
	ldrb r1, [r0, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _0808FF68
	movs r0, 0x20
	bl PlaySE
	b _0808FF9E
	.align 2, 0
_0808FF60: .4byte gSaveBlock2
_0808FF64: .4byte gUnknown_0202FFBC
_0808FF68:
	movs r0, 0x15
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _0808FFA8
	bl m4aMPlayContinue
	ldr r0, _0808FFAC
	ldr r0, [r0]
	ldr r1, _0808FFB0
	adds r0, r1
	movs r1, 0x3
	strb r1, [r0]
	ldr r1, _0808FFB4
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0808FFB8
	str r1, [r0]
	movs r0, 0x6D
	bl PlaySE
_0808FF9E:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FFA8: .4byte gMPlay_BGM
_0808FFAC: .4byte gUnknown_0202FFB4
_0808FFB0: .4byte 0x0000064f
_0808FFB4: .4byte gTasks
_0808FFB8: .4byte sub_808FFBC
	thumb_func_end sub_808FDF8

	thumb_func_start sub_808FFBC
sub_808FFBC: @ 808FFBC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _0808FFF8
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08090032
	bl sub_811A4F8
	ldr r0, _0808FFFC
	ldr r0, [r0]
	ldr r1, _08090000
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x2
	beq _0809000C
	cmp r0, 0x2
	ble _0808FFE8
	cmp r0, 0x3
	beq _08090024
_0808FFE8:
	ldr r0, _08090004
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, _08090008
	b _08090030
	.align 2, 0
_0808FFF8: .4byte gPaletteFade
_0808FFFC: .4byte gUnknown_0202FFB4
_08090000: .4byte 0x0000064f
_08090004: .4byte gTasks
_08090008: .4byte sub_808F2B0
_0809000C:
	ldr r0, _0809001C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, _08090020
	b _08090030
	.align 2, 0
_0809001C: .4byte gTasks
_08090020: .4byte sub_808F8D8
_08090024:
	ldr r0, _08090038
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, _0809003C
_08090030:
	str r0, [r1]
_08090032:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08090038: .4byte gTasks
_0809003C: .4byte sub_8090070
	thumb_func_end sub_808FFBC

	thumb_func_start sub_8090040
sub_8090040: @ 8090040
	push {lr}
	sub sp, 0x4
	lsls r0, 24
	cmp r0, 0
	beq _08090054
	ldr r1, _08090050
	b _08090056
	.align 2, 0
_08090050: .4byte 0x00000392
_08090054:
	ldr r1, _0809006C
_08090056:
	mov r0, sp
	strh r1, [r0]
	mov r0, sp
	movs r1, 0x5D
	movs r2, 0x2
	bl LoadPalette
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_0809006C: .4byte 0x000002af
	thumb_func_end sub_8090040

	thumb_func_start sub_8090070
sub_8090070: @ 8090070
	push {r4,r5,lr}
	sub sp, 0x2C
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r1, _08090090
	ldr r2, _08090094
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r5, r1, 0
	cmp r0, 0x9
	bhi _080900C4
	lsls r0, 2
	ldr r1, _08090098
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090090: .4byte gMain
_08090094: .4byte 0x0000043c
_08090098: .4byte _0809009C
	.align 2, 0
_0809009C:
	.4byte _080900C4
	.4byte _08090120
	.4byte _08090150
	.4byte _08090174
	.4byte _080901C0
	.4byte _080901D4
	.4byte _08090278
	.4byte _08090318
	.4byte _08090344
	.4byte _08090380
_080900C4:
	ldr r0, _08090108
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080900D2
	b _080903AE
_080900D2:
	ldr r4, _0809010C
	ldr r0, [r4]
	ldr r1, _08090110
	adds r0, r1
	movs r1, 0x7
	strb r1, [r0]
	ldr r1, _08090114
	ldr r0, [r5, 0xC]
	str r0, [r1]
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x80
	lsls r0, 2
	bl sub_8091060
	ldr r0, [r4]
	ldr r2, _08090118
	adds r0, r2
	movs r1, 0x3
	strb r1, [r0]
	ldr r0, _0809011C
	adds r1, r5, r0
	movs r0, 0x1
	strb r0, [r1]
	b _080903AE
	.align 2, 0
_08090108: .4byte gPaletteFade
_0809010C: .4byte gUnknown_0202FFB4
_08090110: .4byte 0x0000064a
_08090114: .4byte gUnknown_03005CEC
_08090118: .4byte 0x0000064d
_0809011C: .4byte 0x0000043c
_08090120:
	ldr r0, _0809013C
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, _08090140
	ldr r1, _08090144
	bl LZ77UnCompVram
	ldr r1, _08090148
	ldr r2, _0809014C
	adds r1, r2
	b _08090368
	.align 2, 0
_0809013C: .4byte gPokedexMenu_Gfx
_08090140: .4byte gUnknown_0839F988
_08090144: .4byte 0x06007000
_08090148: .4byte gMain
_0809014C: .4byte 0x0000043c
_08090150:
	movs r0, 0xD
	bl sub_8090540
	movs r0, 0x3
	movs r1, 0xD
	bl sub_8090644
	bl sub_808D640
	ldr r1, _0809016C
	ldr r0, _08090170
	adds r1, r0
	b _08090368
	.align 2, 0
_0809016C: .4byte gMain
_08090170: .4byte 0x0000043c
_08090174:
	ldr r4, _080901AC
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl InitMenuWindow
	add r1, sp, 0x4
	movs r0, 0xFF
	strb r0, [r1]
	ldr r1, _080901B0
	add r0, sp, 0x4
	bl StringAppend
	ldr r1, _080901B4
	add r0, sp, 0x4
	bl StringAppend
	add r0, sp, 0x4
	movs r1, 0x3
	movs r2, 0xF
	movs r3, 0xC0
	bl sub_8072BD8
	ldr r1, _080901B8
	ldr r2, _080901BC
	adds r1, r2
	b _08090368
	.align 2, 0
_080901AC: .4byte gWindowConfig_81E702C
_080901B0: .4byte gDexText_SizeComparedTo
_080901B4: .4byte gSaveBlock2
_080901B8: .4byte gMain
_080901BC: .4byte 0x0000043c
_080901C0:
	bl ResetPaletteFade
	ldr r1, _080901CC
	ldr r0, _080901D0
	adds r1, r0
	b _08090368
	.align 2, 0
_080901CC: .4byte gMain
_080901D0: .4byte 0x0000043c
_080901D4:
	ldr r0, _0809025C
	ldrb r0, [r0, 0x8]
	movs r1, 0x98
	movs r2, 0x38
	movs r3, 0
	bl sub_8091A4C
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _08090260
	lsls r4, r1, 4
	adds r4, r1
	lsls r4, 2
	adds r4, r0
	ldrb r1, [r4, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r1
	movs r1, 0x2
	orrs r0, r1
	strb r0, [r4, 0x3]
	ldrb r1, [r4, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	strb r0, [r4, 0x5]
	ldr r3, _08090264
	ldr r0, _08090268
	ldr r2, [r0]
	ldrh r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r0, [r0, 0x20]
	strh r0, [r4, 0x26]
	ldrh r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r0, 0x1E]
	str r1, [sp]
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl SetOamMatrix
	ldr r0, _0809026C
	ldrb r1, [r4, 0x5]
	lsrs r1, 4
	adds r1, 0x10
	lsls r1, 4
	movs r2, 0x20
	bl LoadPalette
	ldr r1, _08090270
	ldr r2, _08090274
	adds r1, r2
	b _08090368
	.align 2, 0
_0809025C: .4byte gSaveBlock2
_08090260: .4byte gSprites
_08090264: .4byte gPokedexEntries
_08090268: .4byte gUnknown_0202FFBC
_0809026C: .4byte gUnknown_083B4EC4
_08090270: .4byte gMain
_08090274: .4byte 0x0000043c
_08090278:
	ldr r5, _08090300
	ldr r0, [r5]
	ldrh r0, [r0]
	movs r1, 0x58
	movs r2, 0x38
	movs r3, 0x1
	bl sub_80918EC
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _08090304
	lsls r4, r1, 4
	adds r4, r1
	lsls r4, 2
	adds r4, r0
	ldrb r1, [r4, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldrb r1, [r4, 0x3]
	movs r0, 0x3F
	negs r0, r0
	ands r0, r1
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r4, 0x3]
	ldrb r1, [r4, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	strb r0, [r4, 0x5]
	ldr r3, _08090308
	ldr r2, [r5]
	ldrh r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r0, [r0, 0x1C]
	strh r0, [r4, 0x26]
	ldrh r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r0, 0x1A]
	str r1, [sp]
	movs r0, 0x2
	movs r2, 0
	movs r3, 0
	bl SetOamMatrix
	ldr r0, _0809030C
	ldrb r1, [r4, 0x5]
	lsrs r1, 4
	adds r1, 0x10
	lsls r1, 4
	movs r2, 0x20
	bl LoadPalette
	ldr r1, _08090310
	ldr r0, _08090314
	adds r1, r0
	b _08090368
	.align 2, 0
_08090300: .4byte gUnknown_0202FFBC
_08090304: .4byte gSprites
_08090308: .4byte gPokedexEntries
_0809030C: .4byte gUnknown_083B4EC4
_08090310: .4byte gMain
_08090314: .4byte 0x0000043c
_08090318:
	movs r0, 0x15
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, _08090338
	ldr r0, [r0]
	bl SetVBlankCallback
	ldr r1, _0809033C
	ldr r2, _08090340
	adds r1, r2
	b _08090368
	.align 2, 0
_08090338: .4byte gUnknown_03005CEC
_0809033C: .4byte gMain
_08090340: .4byte 0x0000043c
_08090344:
	ldr r0, _08090370
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _08090374
	ldr r2, _08090378
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0xC
	movs r2, 0xF2
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _0809037C
	adds r1, r5, r0
_08090368:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080903AE
	.align 2, 0
_08090370: .4byte REG_BLDCNT
_08090374: .4byte REG_BG2CNT
_08090378: .4byte 0x00000e03
_0809037C: .4byte 0x0000043c
_08090380:
	ldr r0, _080903B8
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _080903AE
	ldr r0, _080903BC
	ldr r0, [r0]
	ldr r1, _080903C0
	adds r0, r1
	strb r2, [r0]
	ldr r1, _080903C4
	adds r0, r5, r1
	strb r2, [r0]
	ldr r1, _080903C8
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	adds r0, r1
	ldr r1, _080903CC
	str r1, [r0]
_080903AE:
	add sp, 0x2C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080903B8: .4byte gPaletteFade
_080903BC: .4byte gUnknown_0202FFB4
_080903C0: .4byte 0x0000064f
_080903C4: .4byte 0x0000043c
_080903C8: .4byte gTasks
_080903CC: .4byte sub_80903D0
	thumb_func_end sub_8090070

	thumb_func_start sub_80903D0
sub_80903D0: @ 80903D0
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	ldr r0, _0809041C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0
	beq _08090430
	movs r0, 0x15
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _08090420
	ldr r0, [r0]
	ldr r1, _08090424
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, _08090428
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809042C
	str r1, [r0]
	movs r0, 0x3
	bl PlaySE
	b _0809047A
	.align 2, 0
_0809041C: .4byte gMain
_08090420: .4byte gUnknown_0202FFB4
_08090424: .4byte 0x0000064f
_08090428: .4byte gTasks
_0809042C: .4byte sub_8090498
_08090430:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0809044A
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	beq _0809047A
	ldr r0, _08090484
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0809047A
_0809044A:
	movs r0, 0x15
	negs r0, r0
	str r2, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _08090488
	ldr r0, [r0]
	ldr r1, _0809048C
	adds r0, r1
	movs r1, 0x2
	strb r1, [r0]
	ldr r1, _08090490
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _08090494
	str r1, [r0]
	movs r0, 0x6D
	bl PlaySE
_0809047A:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08090484: .4byte gSaveBlock2
_08090488: .4byte gUnknown_0202FFB4
_0809048C: .4byte 0x0000064f
_08090490: .4byte gTasks
_08090494: .4byte sub_8090498
	thumb_func_end sub_80903D0

	thumb_func_start sub_8090498
sub_8090498: @ 8090498
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _080904CC
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080904EE
	ldr r0, _080904D0
	ldr r0, [r0]
	ldr r1, _080904D4
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x1
	beq _080904BC
	cmp r0, 0x2
	beq _080904E0
_080904BC:
	ldr r0, _080904D8
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _080904DC
	b _080904EC
	.align 2, 0
_080904CC: .4byte gPaletteFade
_080904D0: .4byte gUnknown_0202FFB4
_080904D4: .4byte 0x0000064f
_080904D8: .4byte gTasks
_080904DC: .4byte sub_808F2B0
_080904E0:
	ldr r0, _080904F4
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _080904F8
_080904EC:
	str r0, [r1]
_080904EE:
	pop {r0}
	bx r0
	.align 2, 0
_080904F4: .4byte gTasks
_080904F8: .4byte sub_808FA64
	thumb_func_end sub_8090498

	thumb_func_start sub_80904FC
sub_80904FC: @ 80904FC
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 16
	ldr r0, _08090530
	lsrs r4, 5
	movs r2, 0xC0
	lsls r2, 19
	adds r1, r4, r2
	bl LZ77UnCompVram
	ldr r0, _08090534
	adds r4, r0
	mov r1, sp
	movs r0, 0
	strh r0, [r1]
	ldr r0, _08090538
	str r1, [r0]
	str r4, [r0, 0x4]
	ldr r1, _0809053C
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08090530: .4byte gUnknown_08E96ACC
_08090534: .4byte 0x060000c0
_08090538: .4byte 0x040000d4
_0809053C: .4byte 0x81000220
	thumb_func_end sub_80904FC

	thumb_func_start sub_8090540
sub_8090540: @ 8090540
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 16
	ldr r0, _08090574
	lsrs r4, 5
	movs r2, 0xC0
	lsls r2, 19
	adds r1, r4, r2
	bl LZ77UnCompVram
	ldr r0, _08090578
	adds r4, r0
	mov r1, sp
	movs r0, 0
	strh r0, [r1]
	ldr r0, _0809057C
	str r1, [r0]
	str r4, [r0, 0x4]
	ldr r1, _08090580
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08090574: .4byte gUnknown_08E96B58
_08090578: .4byte 0x060000c0
_0809057C: .4byte 0x040000d4
_08090580: .4byte 0x81000220
	thumb_func_end sub_8090540

	thumb_func_start sub_8090584
sub_8090584: @ 8090584
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	movs r1, 0
_0809059C:
	lsls r0, r1, 2
	adds r0, r1
	adds r0, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	movs r6, 0x80
	lsls r6, 7
	cmp r1, r10
	bne _080905B2
	movs r6, 0x80
	lsls r6, 6
_080905B2:
	movs r3, 0
	mov r0, r9
	lsls r0, 11
	mov r12, r0
	adds r1, 0x1
	mov r8, r1
	mov r5, r12
	ldr r4, _08090634
_080905C2:
	adds r0, r7, r3
	lsls r0, 1
	adds r0, r5, r0
	movs r2, 0xC0
	lsls r2, 19
	adds r1, r0, r2
	ldrh r2, [r1]
	ands r2, r4
	orrs r2, r6
	strh r2, [r1]
	ldr r1, _08090638
	adds r0, r1
	ldrh r2, [r0]
	ands r2, r4
	orrs r2, r6
	strh r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x4
	bls _080905C2
	mov r2, r8
	lsls r0, r2, 24
	lsrs r1, r0, 24
	cmp r1, 0x3
	bls _0809059C
	movs r6, 0x80
	lsls r6, 7
	movs r3, 0
	mov r5, r12
	ldr r4, _08090634
_08090600:
	lsls r0, r3, 1
	adds r0, r5, r0
	ldr r2, _0809063C
	adds r1, r0, r2
	ldrh r2, [r1]
	ands r2, r4
	orrs r2, r6
	strh r2, [r1]
	ldr r1, _08090640
	adds r0, r1
	ldrh r2, [r0]
	ands r2, r4
	orrs r2, r6
	strh r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x4
	bls _08090600
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090634: .4byte 0x00000fff
_08090638: .4byte 0x06000040
_0809063C: .4byte 0x06000032
_08090640: .4byte 0x06000072
	thumb_func_end sub_8090584

	thumb_func_start sub_8090644
sub_8090644: @ 8090644
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	movs r1, 0
_0809065C:
	lsls r0, r1, 2
	adds r0, r1
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	cmp r1, r10
	beq _08090670
	cmp r1, 0
	bne _08090676
_08090670:
	movs r5, 0x80
	lsls r5, 6
	b _0809067A
_08090676:
	movs r5, 0x80
	lsls r5, 7
_0809067A:
	movs r3, 0
	mov r0, r9
	lsls r7, r0, 11
	adds r1, 0x1
	mov r12, r1
	adds r6, r7, 0
	ldr r4, _080906FC
_08090688:
	mov r1, r8
	adds r0, r1, r3
	lsls r0, 1
	adds r0, r6, r0
	movs r2, 0xC0
	lsls r2, 19
	adds r1, r0, r2
	ldrh r2, [r1]
	ands r2, r4
	orrs r2, r5
	strh r2, [r1]
	ldr r1, _08090700
	adds r0, r1
	ldrh r2, [r0]
	ands r2, r4
	orrs r2, r5
	strh r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x4
	bls _08090688
	mov r2, r12
	lsls r0, r2, 24
	lsrs r1, r0, 24
	cmp r1, 0x3
	bls _0809065C
	movs r5, 0x80
	lsls r5, 7
	movs r3, 0
	adds r6, r7, 0
	ldr r4, _080906FC
_080906C8:
	lsls r0, r3, 1
	adds r0, r6, r0
	ldr r2, _08090704
	adds r1, r0, r2
	ldrh r2, [r1]
	ands r2, r4
	orrs r2, r5
	strh r2, [r1]
	ldr r1, _08090708
	adds r0, r1
	ldrh r2, [r0]
	ands r2, r4
	orrs r2, r5
	strh r2, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x4
	bls _080906C8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080906FC: .4byte 0x00000fff
_08090700: .4byte 0x06000040
_08090704: .4byte 0x06000032
_08090708: .4byte 0x06000072
	thumb_func_end sub_8090644

	thumb_func_start sub_809070C
sub_809070C: @ 809070C
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _08090748
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0809074C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0
	strh r2, [r1, 0x8]
	strh r4, [r1, 0xA]
	strh r5, [r1, 0x20]
	lsrs r5, 16
	strh r5, [r1, 0x22]
	strh r6, [r1, 0x24]
	lsrs r6, 16
	strh r6, [r1, 0x26]
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08090748: .4byte sub_8090750
_0809074C: .4byte gTasks
	thumb_func_end sub_809070C

	thumb_func_start sub_8090750
sub_8090750: @ 8090750
	push {r4-r7,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r1, _08090778
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	ldrh r6, [r0, 0xA]
	movs r2, 0x8
	ldrsh r0, [r0, r2]
	adds r4, r1, 0
	cmp r0, 0x6
	bhi _0809079C
	lsls r0, 2
	ldr r1, _0809077C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08090778: .4byte gTasks
_0809077C: .4byte _08090780
	.align 2, 0
_08090780:
	.4byte _0809079C
	.4byte _080907E0
	.4byte _0809085C
	.4byte _080908A0
	.4byte _08090960
	.4byte _080909B8
	.4byte _080909F4
_0809079C:
	ldr r0, _080907D0
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080907AA
	b _08090A26
_080907AA:
	ldr r1, _080907D4
	ldr r0, _080907D8
	ldr r0, [r0, 0xC]
	str r0, [r1]
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0x80
	lsls r0, 1
	bl sub_8091060
	ldr r1, _080907DC
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	b _08090A26
	.align 2, 0
_080907D0: .4byte gPaletteFade
_080907D4: .4byte gUnknown_03005CEC
_080907D8: .4byte gMain
_080907DC: .4byte gTasks
_080907E0:
	ldr r0, _08090840
	ldr r1, _08090844
	bl LZ77UnCompVram
	ldr r0, _08090848
	ldr r4, _0809084C
	adds r1, r4, 0
	bl LZ77UnCompVram
	movs r2, 0
	lsls r5, r7, 2
	mov r12, r5
	movs r0, 0x80
	lsls r0, 6
	adds r6, r0, 0
	ldr r3, _08090850
_08090800:
	lsls r0, r2, 1
	adds r0, r4
	ldrh r5, [r0]
	adds r1, r6, r5
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, r3
	bls _08090800
	ldr r0, _08090854
	mov r1, r12
	adds r4, r1, r7
	lsls r4, 3
	adds r4, r0
	ldrh r0, [r4, 0xA]
	movs r2, 0xFF
	lsls r2, 2
	movs r1, 0x2
	bl sub_8091738
	bl ResetPaletteFade
	ldr r0, _08090858
	movs r1, 0x21
	movs r2, 0x9E
	bl LoadPalette
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _08090A26
	.align 2, 0
_08090840: .4byte gPokedexMenu_Gfx
_08090844: .4byte 0x06004000
_08090848: .4byte gUnknown_08E96BD4
_0809084C: .4byte 0x06007800
_08090850: .4byte 0x0000027f
_08090854: .4byte gTasks
_08090858: .4byte gPokedexMenu_Pal + 0x2
_0809085C:
	ldr r4, _0809088C
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl InitMenuWindow
	ldr r2, _08090890
	add r1, sp, 0x4
	movs r0, 0
	strh r0, [r1]
	ldr r0, _08090894
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _08090898
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	ldr r1, _0809089C
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	b _080909E0
	.align 2, 0
_0809088C: .4byte gWindowConfig_81E7064
_08090890: .4byte 0x0600c000
_08090894: .4byte 0x040000d4
_08090898: .4byte 0x81000100
_0809089C: .4byte gTasks
_080908A0:
	ldr r0, _080908C8
	movs r1, 0x2
	movs r2, 0
	movs r3, 0xD0
	bl sub_8072BD8
	bl sub_806912C
	cmp r0, 0
	bne _080908CC
	adds r0, r6, 0
	bl NationalToHoennOrder
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xD
	movs r2, 0x3
	bl sub_8091154
	b _080908D6
	.align 2, 0
_080908C8: .4byte gDexText_RegisterComplete
_080908CC:
	adds r0, r6, 0
	movs r1, 0xD
	movs r2, 0x3
	bl sub_8091154
_080908D6:
	adds r0, r6, 0
	movs r1, 0x10
	movs r2, 0x3
	bl sub_80911C8
	ldr r0, _0809094C
	movs r1, 0xB
	movs r2, 0x5
	bl MenuPrint
	ldr r0, _08090950
	movs r1, 0x10
	movs r2, 0x7
	bl MenuPrint
	ldr r0, _08090954
	movs r1, 0x10
	movs r2, 0x9
	bl MenuPrint
	lsls r4, r6, 3
	adds r4, r6
	lsls r4, 2
	ldr r6, _08090958
	adds r5, r4, r6
	adds r0, r5, 0
	movs r1, 0xB
	movs r2, 0x5
	bl sub_8091304
	ldrh r0, [r5, 0xC]
	movs r1, 0x10
	movs r2, 0x7
	bl sub_8091458
	ldrh r0, [r5, 0xE]
	movs r1, 0x10
	movs r2, 0x9
	bl sub_8091564
	adds r6, 0x10
	adds r4, r6
	ldr r0, [r4]
	movs r1, 0x2
	movs r2, 0xD
	bl MenuPrint
	movs r1, 0xFF
	lsls r1, 2
	movs r0, 0xE
	bl sub_80917CC
	ldr r1, _0809095C
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	b _080909E0
	.align 2, 0
_0809094C: .4byte gDexText_UnknownPoke
_08090950: .4byte gDexText_UnknownHeight
_08090954: .4byte gDexText_UnknownWeight
_08090958: .4byte gPokedexEntries
_0809095C: .4byte gTasks
_08090960:
	adds r0, r6, 0
	movs r1, 0x30
	movs r2, 0x38
	movs r3, 0
	bl sub_80918EC
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080909AC
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	strb r0, [r1, 0x5]
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, _080909B0
	ldr r0, [r0]
	bl SetVBlankCallback
	ldr r1, _080909B4
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	strh r4, [r0, 0xE]
	b _080909E0
	.align 2, 0
_080909AC: .4byte gSprites
_080909B0: .4byte gUnknown_03005CEC
_080909B4: .4byte gTasks
_080909B8:
	ldr r0, _080909E8
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _080909EC
	ldr r2, _080909F0
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0xE
	movs r5, 0xE2
	lsls r5, 5
	adds r0, r5, 0
	strh r0, [r1]
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r4
_080909E0:
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _08090A26
	.align 2, 0
_080909E8: .4byte REG_BLDCNT
_080909EC: .4byte REG_BG3CNT
_080909F0: .4byte 0x00000f07
_080909F4:
	ldr r0, _08090A30
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _08090A26
	adds r0, r6, 0
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0
	bl PlayCry1
	ldr r1, _08090A34
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0xC]
	strh r5, [r0, 0x10]
	ldr r1, _08090A38
	str r1, [r0]
_08090A26:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090A30: .4byte gPaletteFade
_08090A34: .4byte gTasks
_08090A38: .4byte sub_8090A3C
	thumb_func_end sub_8090750

	thumb_func_start sub_8090A3C
sub_8090A3C: @ 8090A3C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _08090A8C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0
	beq _08090AA4
	ldr r0, _08090A90
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r3, _08090A94
	ldr r0, _08090A98
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 3
	adds r1, r0
	movs r0, 0xE
	ldrsh r2, [r1, r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r3, 0x1C
	adds r0, r3
	ldr r2, _08090A9C
	str r2, [r0]
	ldr r0, _08090AA0
	str r0, [r1]
	b _08090B7A
	.align 2, 0
_08090A8C: .4byte gMain
_08090A90: .4byte 0x0000fffc
_08090A94: .4byte gSprites
_08090A98: .4byte gTasks
_08090A9C: .4byte sub_8090C28
_08090AA0: .4byte sub_8090B8C
_08090AA4:
	movs r0, 0x1
	mov r8, r0
	ands r0, r1
	lsls r7, r6, 2
	cmp r0, 0
	beq _08090B44
	ldr r0, _08090B00
	adds r1, r7, r6
	lsls r1, 3
	adds r5, r1, r0
	movs r1, 0x10
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _08090B0C
	ldrh r4, [r5, 0xA]
	movs r0, 0x2
	movs r1, 0xD
	movs r2, 0x1B
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r1, _08090B04
	lsls r0, r4, 3
	adds r0, r4
	lsls r0, 2
	adds r1, 0x14
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x2
	movs r2, 0xD
	bl MenuPrint
	ldr r1, _08090B08
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	adds r1, 0x40
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	mov r0, r8
	strh r0, [r5, 0x10]
	movs r0, 0x15
	bl PlaySE
	b _08090B44
	.align 2, 0
_08090B00: .4byte gTasks
_08090B04: .4byte gPokedexEntries
_08090B08: .4byte 0x06007aca
_08090B0C:
	ldr r0, _08090B34
	str r2, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r2, _08090B38
	movs r0, 0xE
	ldrsh r1, [r5, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r2, 0x1C
	adds r0, r2
	ldr r1, _08090B3C
	str r1, [r0]
	ldr r0, _08090B40
	str r0, [r5]
	b _08090B7A
	.align 2, 0
_08090B34: .4byte 0x0000fffc
_08090B38: .4byte gSprites
_08090B3C: .4byte sub_8090C28
_08090B40: .4byte sub_8090B8C
_08090B44:
	ldr r1, _08090B68
	adds r0, r7, r6
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0xC]
	adds r1, 0x1
	strh r1, [r0, 0xC]
	movs r0, 0x10
	ands r1, r0
	cmp r1, 0
	beq _08090B70
	ldr r0, _08090B6C
	movs r1, 0x51
	movs r2, 0xE
	bl LoadPalette
	b _08090B7A
	.align 2, 0
_08090B68: .4byte gTasks
_08090B6C: .4byte gPokedexMenu_Pal + 0x2
_08090B70:
	ldr r0, _08090B88
	movs r1, 0x51
	movs r2, 0xE
	bl LoadPalette
_08090B7A:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090B88: .4byte gPokedexMenu2_Pal + 0x2
	thumb_func_end sub_8090A3C

	thumb_func_start sub_8090B8C
sub_8090B8C: @ 8090B8C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _08090C14
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08090C0C
	movs r1, 0x80
	lsls r1, 19
	movs r2, 0xCA
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _08090C18
	ldr r1, _08090C1C
	movs r2, 0x80
	lsls r2, 4
	bl CpuSet
	bl sub_800D74C
	ldr r0, _08090C20
	lsls r4, r6, 2
	adds r4, r6
	lsls r4, 3
	adds r4, r0
	ldrh r0, [r4, 0xA]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r0, 16
	ldrh r1, [r4, 0x22]
	lsls r1, 16
	ldrh r2, [r4, 0x20]
	orrs r1, r2
	ldrh r2, [r4, 0x26]
	lsls r2, 16
	ldrh r3, [r4, 0x24]
	orrs r2, r3
	ldr r5, _08090C24
	movs r3, 0xE
	ldrsh r4, [r4, r3]
	lsls r3, r4, 4
	adds r3, r4
	lsls r3, 2
	adds r3, r5
	ldrb r4, [r3, 0x5]
	lsrs r4, 4
	bl species_and_otid_get_pal
	lsls r4, 4
	movs r2, 0x80
	lsls r2, 1
	adds r1, r2, 0
	orrs r4, r1
	adds r1, r4, 0
	movs r2, 0x20
	bl LoadCompressedPalette
	adds r0, r6, 0
	bl DestroyTask
_08090C0C:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08090C14: .4byte gPaletteFade
_08090C18: .4byte gUnknown_08D00524
_08090C1C: .4byte 0x0600c000
_08090C20: .4byte gTasks
_08090C24: .4byte gSprites
	thumb_func_end sub_8090B8C

	thumb_func_start sub_8090C28
sub_8090C28: @ 8090C28
	push {lr}
	adds r1, r0, 0
	ldrh r2, [r1, 0x20]
	movs r3, 0x20
	ldrsh r0, [r1, r3]
	cmp r0, 0x77
	bgt _08090C3A
	adds r0, r2, 0x2
	strh r0, [r1, 0x20]
_08090C3A:
	ldrh r2, [r1, 0x20]
	movs r3, 0x20
	ldrsh r0, [r1, r3]
	cmp r0, 0x78
	ble _08090C48
	subs r0, r2, 0x2
	strh r0, [r1, 0x20]
_08090C48:
	ldrh r2, [r1, 0x22]
	movs r3, 0x22
	ldrsh r0, [r1, r3]
	cmp r0, 0x4F
	bgt _08090C56
	adds r0, r2, 0x1
	strh r0, [r1, 0x22]
_08090C56:
	ldrh r2, [r1, 0x22]
	movs r3, 0x22
	ldrsh r0, [r1, r3]
	cmp r0, 0x50
	ble _08090C64
	subs r0, r2, 0x1
	strh r0, [r1, 0x22]
_08090C64:
	pop {r0}
	bx r0
	thumb_func_end sub_8090C28

	thumb_func_start sub_8090C68
sub_8090C68: @ 8090C68
	push {r4,r5,lr}
	ldr r4, _08090CD0
	ldr r0, [r4]
	ldrb r1, [r0, 0x2]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08090D2A
	ldr r5, _08090CD4
	ldr r0, [r5]
	ldr r1, _08090CD8
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _08090CE4
	movs r0, 0x2
	movs r1, 0xD
	movs r2, 0x1B
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r2, _08090CDC
	ldr r0, [r4]
	ldrh r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r2, 0x14
	adds r0, r2
	ldr r0, [r0]
	movs r1, 0x2
	movs r2, 0xD
	bl MenuPrint
	ldr r0, [r5]
	ldr r1, _08090CD8
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, _08090CE0
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	adds r1, 0x40
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	movs r0, 0x15
	bl PlaySE
	b _08090D2A
	.align 2, 0
_08090CD0: .4byte gUnknown_0202FFBC
_08090CD4: .4byte gUnknown_0202FFB4
_08090CD8: .4byte 0x0000064e
_08090CDC: .4byte gPokedexEntries
_08090CE0: .4byte 0x06007aca
_08090CE4:
	movs r0, 0x2
	movs r1, 0xD
	movs r2, 0x1B
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r2, _08090D30
	ldr r0, [r4]
	ldrh r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r2, 0x10
	adds r0, r2
	ldr r0, [r0]
	movs r1, 0x2
	movs r2, 0xD
	bl MenuPrint
	ldr r0, [r5]
	ldr r1, _08090D34
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	ldr r1, _08090D38
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	adds r1, 0x40
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	movs r0, 0x15
	bl PlaySE
_08090D2A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08090D30: .4byte gPokedexEntries
_08090D34: .4byte 0x0000064e
_08090D38: .4byte 0x06007aca
	thumb_func_end sub_8090C68

	thumb_func_start GetPokemonCategory
GetPokemonCategory: @ 8090D3C
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r1, _08090D50
	adds r0, r1
	bx lr
	.align 2, 0
_08090D50: .4byte gPokedexEntries
	thumb_func_end GetPokemonCategory

	thumb_func_start sub_8090D54
sub_8090D54: @ 8090D54
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0
	beq _08090D6A
	cmp r1, 0x1
	beq _08090D7C
	movs r0, 0x1
	b _08090D88
_08090D6A:
	ldr r0, _08090D78
	lsls r1, r2, 3
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0xC]
	b _08090D88
	.align 2, 0
_08090D78: .4byte gPokedexEntries
_08090D7C:
	ldr r0, _08090D8C
	lsls r1, r2, 3
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0xE]
_08090D88:
	pop {r1}
	bx r1
	.align 2, 0
_08090D8C: .4byte gPokedexEntries
	thumb_func_end sub_8090D54

	thumb_func_start sub_8090D90
sub_8090D90: @ 8090D90
	push {r4-r7,lr}
	lsls r0, 16
	lsls r1, 24
	lsrs r2, r1, 24
	adds r3, r2, 0
	ldr r1, _08090DC4
	adds r0, r1
	lsrs r1, r0, 16
	lsrs r0, 19
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x7
	ands r1, r0
	movs r0, 0x80
	lsls r0, 17
	lsls r0, r1
	lsrs r5, r0, 24
	movs r6, 0
	cmp r2, 0x1
	beq _08090E24
	cmp r2, 0x1
	bgt _08090DC8
	cmp r2, 0
	beq _08090DD4
	b _08090F0A
	.align 2, 0
_08090DC4: .4byte 0xffff0000
_08090DC8:
	cmp r3, 0x2
	beq _08090EBC
	cmp r3, 0x3
	bne _08090DD2
	b _08090EFC
_08090DD2:
	b _08090F0A
_08090DD4:
	ldr r1, _08090E14
	adds r0, r1, 0
	adds r0, 0x5C
	adds r0, r4, r0
	ldrb r2, [r0]
	ands r2, r5
	adds r7, r1, 0
	cmp r2, 0
	bne _08090DE8
	b _08090F0A
_08090DE8:
	ldr r0, _08090E18
	ldr r3, _08090E1C
	adds r1, r0, r3
	adds r1, r4, r1
	ldrb r1, [r1]
	ands r1, r5
	adds r6, r0, 0
	cmp r2, r1
	bne _08090E08
	ldr r1, _08090E20
	adds r0, r6, r1
	adds r0, r4, r0
	ldrb r0, [r0]
	ands r0, r5
	cmp r2, r0
	beq _08090E62
_08090E08:
	adds r1, r7, 0
	adds r1, 0x5C
	adds r1, r4, r1
	mvns r3, r5
	b _08090E8E
	.align 2, 0
_08090E14: .4byte gSaveBlock2
_08090E18: .4byte gSaveBlock1
_08090E1C: .4byte 0x00000938
_08090E20: .4byte 0x00003a8c
_08090E24:
	ldr r1, _08090E68
	adds r0, r1, 0
	adds r0, 0x28
	adds r0, r4, r0
	ldrb r2, [r0]
	ands r2, r5
	adds r7, r1, 0
	cmp r2, 0
	beq _08090F0A
	adds r0, r7, 0
	adds r0, 0x5C
	adds r0, r4, r0
	ldrb r0, [r0]
	ands r0, r5
	ldr r6, _08090E6C
	cmp r2, r0
	bne _08090E78
	ldr r3, _08090E70
	adds r0, r6, r3
	adds r0, r4, r0
	ldrb r0, [r0]
	ands r0, r5
	cmp r2, r0
	bne _08090E78
	ldr r1, _08090E74
	adds r0, r6, r1
	adds r0, r4, r0
	ldrb r0, [r0]
	ands r0, r5
	cmp r2, r0
	bne _08090E78
_08090E62:
	movs r6, 0x1
	b _08090F0A
	.align 2, 0
_08090E68: .4byte gSaveBlock2
_08090E6C: .4byte gSaveBlock1
_08090E70: .4byte 0x00000938
_08090E74: .4byte 0x00003a8c
_08090E78:
	adds r1, r7, 0
	adds r1, 0x28
	adds r1, r4, r1
	mvns r3, r5
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	adds r1, r7, 0
	adds r1, 0x5C
	adds r1, r4, r1
_08090E8E:
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldr r0, _08090EB4
	adds r1, r6, r0
	adds r1, r4, r1
	ldrb r2, [r1]
	adds r0, r3, 0
	ands r0, r2
	strb r0, [r1]
	ldr r1, _08090EB8
	adds r0, r6, r1
	adds r0, r4, r0
	ldrb r1, [r0]
	ands r3, r1
	strb r3, [r0]
	movs r6, 0
	b _08090F0A
	.align 2, 0
_08090EB4: .4byte 0x00000938
_08090EB8: .4byte 0x00003a8c
_08090EBC:
	ldr r1, _08090EEC
	adds r1, 0x5C
	adds r1, r4, r1
	ldrb r2, [r1]
	adds r0, r5, 0
	orrs r0, r2
	strb r0, [r1]
	ldr r1, _08090EF0
	ldr r3, _08090EF4
	adds r2, r1, r3
	adds r2, r4, r2
	ldrb r3, [r2]
	adds r0, r5, 0
	orrs r0, r3
	strb r0, [r2]
	ldr r0, _08090EF8
	adds r1, r0
	adds r1, r4, r1
	ldrb r2, [r1]
	adds r0, r5, 0
	orrs r0, r2
	strb r0, [r1]
	b _08090F0A
	.align 2, 0
_08090EEC: .4byte gSaveBlock2
_08090EF0: .4byte gSaveBlock1
_08090EF4: .4byte 0x00000938
_08090EF8: .4byte 0x00003a8c
_08090EFC:
	ldr r0, _08090F14
	adds r0, 0x28
	adds r0, r4, r0
	ldrb r2, [r0]
	adds r1, r5, 0
	orrs r1, r2
	strb r1, [r0]
_08090F0A:
	adds r0, r6, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08090F14: .4byte gSaveBlock2
	thumb_func_end sub_8090D90

	thumb_func_start pokedex_count
pokedex_count: @ 8090F18
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r5, 0
	movs r0, 0
	ldr r7, _08090F30
_08090F24:
	cmp r6, 0
	beq _08090F34
	cmp r6, 0x1
	beq _08090F3E
	adds r4, r0, 0x1
	b _08090F56
	.align 2, 0
_08090F30: .4byte 0x00000181
_08090F34:
	adds r4, r0, 0x1
	lsls r0, r4, 16
	lsrs r0, 16
	movs r1, 0
	b _08090F46
_08090F3E:
	adds r4, r0, 0x1
	lsls r0, r4, 16
	lsrs r0, 16
	movs r1, 0x1
_08090F46:
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _08090F56
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
_08090F56:
	lsls r0, r4, 16
	lsrs r0, 16
	cmp r0, r7
	bls _08090F24
	adds r0, r5, 0
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end pokedex_count

	thumb_func_start sub_8090F68
sub_8090F68: @ 8090F68
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r5, 0
	movs r0, 0
_08090F72:
	cmp r6, 0
	beq _08090F7E
	cmp r6, 0x1
	beq _08090F90
	adds r4, r0, 0x1
	b _08090FB0
_08090F7E:
	adds r4, r0, 0x1
	lsls r0, r4, 16
	lsrs r0, 16
	bl HoennToNationalOrder
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0
	b _08090FA0
_08090F90:
	adds r4, r0, 0x1
	lsls r0, r4, 16
	lsrs r0, 16
	bl HoennToNationalOrder
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
_08090FA0:
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _08090FB0
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
_08090FB0:
	lsls r0, r4, 16
	lsrs r0, 16
	cmp r0, 0xC9
	bls _08090F72
	adds r0, r5, 0
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8090F68

	thumb_func_start sub_8090FC0
sub_8090FC0: @ 8090FC0
	push {r4,lr}
	movs r0, 0
_08090FC4:
	adds r0, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	bl HoennToNationalOrder
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	bne _08090FE4
	movs r0, 0
	b _08090FEC
_08090FE4:
	adds r0, r4, 0
	cmp r0, 0xC7
	bls _08090FC4
	movs r0, 0x1
_08090FEC:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8090FC0

	thumb_func_start sub_8090FF4
sub_8090FF4: @ 8090FF4
	push {r4,r5,lr}
	movs r0, 0
_08090FF8:
	adds r0, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _08091046
	adds r0, r4, 0
	cmp r0, 0x95
	bls _08090FF8
	movs r0, 0x98
_08091014:
	adds r0, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	beq _08091046
	adds r0, r4, 0
	cmp r0, 0xF9
	bls _08091014
	movs r0, 0xFC
	ldr r5, _0809104C
_08091032:
	adds r0, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_8090D90
	lsls r0, 24
	cmp r0, 0
	bne _08091050
_08091046:
	movs r0, 0
	b _08091058
	.align 2, 0
_0809104C: .4byte 0x0000017f
_08091050:
	adds r0, r4, 0
	cmp r0, r5
	bls _08091032
	movs r0, 0x1
_08091058:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8090FF4

	thumb_func_start sub_8091060
sub_8091060: @ 8091060
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	adds r5, r4, 0
	movs r0, 0x80
	lsls r0, 1
	ands r0, r4
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	bne _0809108E
	movs r2, 0x80
	lsls r2, 19
	ldrh r1, [r2]
	ldr r0, _0809112C
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08091130
	strh r3, [r0]
	adds r0, 0x8
	strh r3, [r0]
	adds r0, 0x2
	strh r3, [r0]
_0809108E:
	movs r0, 0x80
	lsls r0, 2
	ands r0, r4
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	bne _080910B4
	movs r2, 0x80
	lsls r2, 19
	ldrh r1, [r2]
	ldr r0, _08091134
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08091138
	strh r3, [r0]
	adds r0, 0xA
	strh r3, [r0]
	adds r0, 0x2
	strh r3, [r0]
_080910B4:
	movs r0, 0x80
	lsls r0, 3
	ands r0, r4
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	bne _080910DA
	movs r2, 0x80
	lsls r2, 19
	ldrh r1, [r2]
	ldr r0, _0809113C
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08091140
	strh r3, [r0]
	adds r0, 0xC
	strh r3, [r0]
	adds r0, 0x2
	strh r3, [r0]
_080910DA:
	movs r0, 0x80
	lsls r0, 4
	ands r0, r4
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	bne _08091100
	movs r2, 0x80
	lsls r2, 19
	ldrh r1, [r2]
	ldr r0, _08091144
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08091148
	strh r3, [r0]
	adds r0, 0xE
	strh r3, [r0]
	adds r0, 0x2
	strh r3, [r0]
_08091100:
	movs r0, 0x80
	lsls r0, 5
	ands r5, r0
	cmp r5, 0
	bne _08091124
	movs r2, 0x80
	lsls r2, 19
	ldrh r1, [r2]
	ldr r0, _0809114C
	ands r0, r1
	strh r0, [r2]
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	ldr r1, _08091150
	movs r0, 0x8
	strb r0, [r1]
_08091124:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809112C: .4byte 0x0000feff
_08091130: .4byte REG_BG0CNT
_08091134: .4byte 0x0000fdff
_08091138: .4byte REG_BG1CNT
_0809113C: .4byte 0x0000fbff
_08091140: .4byte REG_BG2CNT
_08091144: .4byte 0x0000f7ff
_08091148: .4byte REG_BG3CNT
_0809114C: .4byte 0x0000efff
_08091150: .4byte gReservedSpritePaletteCount
	thumb_func_end sub_8091060

	thumb_func_start sub_8091154
sub_8091154: @ 8091154
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	adds r4, r0, 0
	adds r6, r1, 0
	mov r8, r2
	lsls r4, 16
	lsrs r4, 16
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	mov r5, sp
	adds r0, r4, 0
	movs r1, 0x64
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r5]
	mov r5, sp
	adds r0, r4, 0
	movs r1, 0x64
	bl __umodsi3
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r4, 0
	movs r1, 0xA
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r5, 0x1]
	mov r5, sp
	adds r0, r4, 0
	movs r1, 0xA
	bl __umodsi3
	adds r0, 0xA1
	strb r0, [r5, 0x2]
	mov r1, sp
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	mov r0, sp
	adds r1, r6, 0
	mov r2, r8
	bl MenuPrint
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8091154

	thumb_func_start sub_80911C8
sub_80911C8: @ 80911C8
	push {r4-r6,lr}
	sub sp, 0xC
	lsls r0, 16
	lsrs r3, r0, 16
	lsls r1, 24
	lsrs r6, r1, 24
	lsls r2, 24
	lsrs r5, r2, 24
	movs r4, 0
	movs r2, 0xFF
_080911DC:
	mov r1, sp
	adds r0, r1, r4
	ldrb r1, [r0]
	orrs r1, r2
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xA
	bls _080911DC
	adds r0, r3, 0
	bl NationalPokedexNumToSpecies
	adds r3, r0, 0
	cmp r3, 0
	beq _08091238
	movs r4, 0
	ldr r2, _08091234
	movs r0, 0xB
	adds r1, r3, 0
	muls r1, r0
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _0809124C
	adds r3, r2, 0
	adds r2, r1, 0
_08091212:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r4, r2
	adds r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, r2
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _0809124C
	cmp r4, 0x9
	bls _08091212
	b _0809124C
	.align 2, 0
_08091234: .4byte gSpeciesNames
_08091238:
	movs r4, 0
	movs r1, 0xAE
_0809123C:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bls _0809123C
_0809124C:
	mov r0, sp
	adds r1, r6, 0
	adds r2, r5, 0
	bl MenuPrint
	adds r0, r4, 0
	add sp, 0xC
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80911C8

	thumb_func_start sub_8091260
sub_8091260: @ 8091260
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x28
	adds r4, r3, 0
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080912CC
	mov r0, sp
	bl StringCopy
	adds r6, r0, 0
	mov r0, sp
	strb r4, [r0, 0x2]
	adds r0, r5, 0
	bl NationalPokedexNumToSpecies
	adds r5, r0, 0
	cmp r5, 0
	beq _080912D4
	movs r4, 0
	ldr r2, _080912D0
	movs r0, 0xB
	adds r1, r5, 0
	muls r1, r0
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _080912E6
	adds r3, r2, 0
	adds r2, r1, 0
_080912AC:
	adds r1, r6, r4
	adds r0, r4, r2
	adds r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, r2
	adds r0, r3
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _080912E6
	cmp r4, 0x9
	bls _080912AC
	b _080912E6
	.align 2, 0
_080912CC: .4byte gUnknown_083B5558
_080912D0: .4byte gSpeciesNames
_080912D4:
	movs r4, 0
	movs r1, 0xAE
_080912D8:
	adds r0, r6, r4
	strb r1, [r0]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bls _080912D8
_080912E6:
	adds r1, r6, r4
	movs r0, 0xFF
	strb r0, [r1]
	mov r0, sp
	mov r1, r8
	adds r2, r7, 0
	bl MenuPrint
	adds r0, r4, 0
	add sp, 0x28
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8091260

	thumb_func_start sub_8091304
sub_8091304: @ 8091304
	push {r4-r7,lr}
	sub sp, 0x20
	adds r3, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r12, r1
	lsls r2, 24
	lsrs r7, r2, 24
	movs r4, 0
	ldrb r0, [r3]
	ldr r6, _08091340
	cmp r0, 0xFF
	beq _0809133A
_0809131E:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r3, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _0809133A
	cmp r4, 0xA
	bls _0809131E
_0809133A:
	movs r3, 0
	ldrb r0, [r6]
	b _0809134E
	.align 2, 0
_08091340: .4byte gDexText_UnknownPoke
_08091344:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r3, r6
	ldrb r0, [r0]
_0809134E:
	cmp r0, 0xAC
	beq _08091344
	cmp r0, 0
	beq _08091344
	subs r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _08091388
	adds r5, r6, 0
_08091366:
	adds r1, r4, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	mov r0, sp
	adds r2, r0, r1
	adds r1, r3, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r1, r5
	ldrb r0, [r1]
	strb r0, [r2]
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, 0xFF
	bne _08091366
_08091388:
	mov r0, sp
	adds r1, r0, r4
	movs r0, 0xFF
	strb r0, [r1]
	mov r0, sp
	mov r1, r12
	adds r2, r7, 0
	adds r3, r6, 0
	bl sub_8072B80
	add sp, 0x20
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8091304

	thumb_func_start unref_sub_80913A4
unref_sub_80913A4: @ 80913A4
	push {r4-r7,lr}
	sub sp, 0x8
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	movs r5, 0
	movs r1, 0xFA
	lsls r1, 2
	adds r0, r4, 0
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _080913CE
	mov r0, sp
	strb r5, [r0]
	b _080913D6
_080913CE:
	mov r1, sp
	adds r0, 0xA1
	strb r0, [r1]
	movs r5, 0x1
_080913D6:
	movs r1, 0xFA
	lsls r1, 2
	adds r0, r4, 0
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _080913FC
	cmp r5, 0
	bne _080913FC
	mov r0, sp
	strb r5, [r0, 0x1]
	b _08091402
_080913FC:
	mov r1, sp
	adds r0, 0xA1
	strb r0, [r1, 0x1]
_08091402:
	mov r5, sp
	movs r1, 0xFA
	lsls r1, 2
	adds r0, r4, 0
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x64
	bl __umodsi3
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r4, 0
	movs r1, 0xA
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r5, 0x2]
	mov r1, sp
	movs r0, 0xAD
	strb r0, [r1, 0x3]
	mov r5, sp
	adds r0, r4, 0
	movs r1, 0xA
	bl __umodsi3
	adds r0, 0xA1
	strb r0, [r5, 0x4]
	mov r1, sp
	movs r0, 0xFF
	strb r0, [r1, 0x5]
	mov r0, sp
	adds r1, r7, 0
	adds r2, r6, 0
	bl MenuPrint
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_80913A4

	thumb_func_start sub_8091458
sub_8091458: @ 8091458
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	lsls r0, 16
	lsrs r0, 16
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	ldr r1, _080914D4
	muls r0, r1
	movs r1, 0xFE
	bl __divsi3
	adds r7, r0, 0
	movs r1, 0xA
	bl __umodsi3
	cmp r0, 0x4
	bls _0809148A
	adds r7, 0xA
_0809148A:
	adds r0, r7, 0
	movs r1, 0x78
	bl __udivsi3
	adds r6, r0, 0
	lsls r0, r6, 4
	subs r0, r6
	lsls r0, 3
	subs r0, r7, r0
	movs r1, 0xA
	bl __udivsi3
	adds r7, r0, 0
	mov r1, sp
	movs r0, 0xFC
	strb r0, [r1]
	adds r1, 0x1
	movs r0, 0x13
	strb r0, [r1]
	adds r0, r6, 0
	movs r1, 0xA
	bl __udivsi3
	adds r2, r0, 0
	cmp r2, 0
	bne _080914D8
	mov r1, sp
	adds r1, 0x2
	movs r0, 0x12
	strb r0, [r1]
	movs r5, 0x4
	adds r1, 0x1
	adds r0, r6, 0
	adds r0, 0xA1
	strb r0, [r1]
	b _080914F8
	.align 2, 0
_080914D4: .4byte 0x00002710
_080914D8:
	mov r1, sp
	adds r1, 0x2
	movs r0, 0xC
	strb r0, [r1]
	adds r1, 0x1
	adds r0, r2, 0
	adds r0, 0xA1
	strb r0, [r1]
	movs r5, 0x5
	add r4, sp, 0x4
	adds r0, r6, 0
	movs r1, 0xA
	bl __umodsi3
	adds r0, 0xA1
	strb r0, [r4]
_080914F8:
	adds r1, r5, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r2, r5, 0
	add r1, sp
	movs r0, 0xB4
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r6, r5, 0
	mov r0, sp
	adds r4, r0, r2
	adds r0, r7, 0
	movs r1, 0xA
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r4]
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	mov r1, sp
	adds r4, r1, r6
	adds r0, r7, 0
	movs r1, 0xA
	bl __umodsi3
	adds r0, 0xA1
	strb r0, [r4]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	adds r2, r1, r5
	movs r1, 0xB2
	strb r1, [r2]
	mov r2, sp
	adds r1, r2, r0
	movs r0, 0xFF
	strb r0, [r1]
	mov r0, sp
	mov r1, r9
	mov r2, r8
	bl MenuPrint
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8091458

	thumb_func_start sub_8091564
sub_8091564: @ 8091564
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	lsls r0, 16
	lsrs r0, 16
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x10]
	ldr r7, _080915BC
	muls r0, r7
	ldr r1, _080915C0
	bl __divsi3
	adds r6, r0, 0
	movs r1, 0xA
	bl __umodsi3
	cmp r0, 0x4
	bls _08091598
	adds r6, 0xA
_08091598:
	movs r5, 0
	mov r4, sp
	adds r0, r6, 0
	adds r1, r7, 0
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xA1
	bne _080915C4
	mov r0, sp
	strb r5, [r0]
	movs r7, 0x2
	adds r0, 0x1
	strb r5, [r0]
	b _080915C8
	.align 2, 0
_080915BC: .4byte 0x000186a0
_080915C0: .4byte 0x000011b8
_080915C4:
	movs r5, 0x1
	movs r7, 0x1
_080915C8:
	ldr r1, _0809160C
	adds r0, r6, 0
	bl __umodsi3
	adds r6, r0, 0
	mov r0, sp
	adds r4, r0, r7
	ldr r1, _08091610
	adds r0, r6, 0
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xA1
	bne _08091614
	cmp r5, 0
	bne _08091614
	adds r1, r7, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r2, r7, 0
	mov r3, sp
	adds r0, r3, r1
	strb r5, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r0, r3, r2
	strb r5, [r0]
	b _0809161C
	.align 2, 0
_0809160C: .4byte 0x000186a0
_08091610: .4byte 0x00002710
_08091614:
	movs r5, 0x1
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0809161C:
	ldr r1, _08091660
	adds r0, r6, 0
	bl __umodsi3
	adds r6, r0, 0
	mov r0, sp
	adds r4, r0, r7
	movs r1, 0xFA
	lsls r1, 2
	adds r0, r6, 0
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xA1
	bne _08091664
	cmp r5, 0
	bne _08091664
	adds r1, r7, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r2, r7, 0
	mov r3, sp
	adds r0, r3, r1
	strb r5, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r0, r3, r2
	strb r5, [r0]
	b _0809166A
	.align 2, 0
_08091660: .4byte 0x00002710
_08091664:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_0809166A:
	movs r1, 0xFA
	lsls r1, 2
	adds r0, r6, 0
	bl __umodsi3
	adds r6, r0, 0
	adds r1, r7, 0
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r5, r7, 0
	mov r0, sp
	adds r4, r0, r1
	adds r0, r6, 0
	movs r1, 0x64
	bl __udivsi3
	adds r0, 0xA1
	movs r1, 0
	mov r9, r1
	strb r0, [r4]
	adds r0, r6, 0
	movs r1, 0x64
	bl __umodsi3
	adds r6, r0, 0
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r1, r7, 0
	mov r2, sp
	adds r0, r2, r5
	movs r3, 0xAD
	mov r8, r3
	mov r2, r8
	strb r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r5, r7, 0
	mov r3, sp
	adds r4, r3, r1
	adds r0, r6, 0
	movs r1, 0xA
	bl __udivsi3
	adds r0, 0xA1
	strb r0, [r4]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r1, r7, 0
	mov r2, sp
	adds r0, r2, r5
	mov r3, r9
	strb r3, [r0]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r2, r7, 0
	add r1, sp
	movs r0, 0xE0
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r3, r7, 0
	mov r0, sp
	adds r1, r0, r2
	movs r0, 0xD6
	strb r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	adds r2, r7, 0
	mov r0, sp
	adds r1, r0, r3
	movs r0, 0xE7
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r3, sp
	adds r1, r3, r2
	mov r2, r8
	strb r2, [r1]
	adds r1, r3, r0
	movs r0, 0xFF
	strb r0, [r1]
	mov r0, sp
	mov r1, r10
	ldr r2, [sp, 0x10]
	bl MenuPrint
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8091564

	thumb_func_start sub_8091738
sub_8091738: @ 8091738
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x80
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	ldr r6, _080917C8
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r0, 14
	adds r0, r6
	ldr r0, [r0]
	mov r12, r0
	movs r7, 0
	movs r1, 0
	lsls r4, 14
	mov r8, r4
	lsls r5, 5
_0809176A:
	mov r2, r12
	adds r0, r2, r1
	ldrb r3, [r0]
	movs r6, 0
	adds r4, r1, 0x1
_08091774:
	lsls r1, r6, 1
	adds r2, r3, 0
	asrs r2, r1
	movs r0, 0x1
	ands r2, r0
	movs r0, 0x2
	lsls r0, r1
	ands r0, r3
	cmp r0, 0
	beq _0809178C
	movs r0, 0x10
	orrs r2, r0
_0809178C:
	mov r1, sp
	adds r0, r1, r7
	strb r2, [r0]
	adds r0, r7, 0x1
	lsls r0, 16
	lsrs r7, r0, 16
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x3
	bls _08091774
	lsls r0, r4, 16
	lsrs r1, r0, 16
	cmp r1, 0x1F
	bls _0809176A
	movs r1, 0xC0
	lsls r1, 19
	adds r1, r5, r1
	add r1, r8
	mov r0, sp
	movs r2, 0x40
	bl CpuSet
	add sp, 0x80
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080917C8: .4byte gMonFootprintTable
	thumb_func_end sub_8091738

	thumb_func_start sub_80917CC
sub_80917CC: @ 80917CC
	push {r4,lr}
	lsls r0, 16
	lsls r1, 16
	lsrs r1, 16
	lsrs r0, 5
	ldr r2, _08091808
	adds r3, r0, r2
	movs r4, 0xF0
	lsls r4, 8
	adds r2, r1, r4
	strh r2, [r3]
	ldr r2, _0809180C
	adds r3, r0, r2
	adds r4, 0x1
	adds r2, r1, r4
	strh r2, [r3]
	ldr r2, _08091810
	adds r3, r0, r2
	adds r4, 0x1
	adds r2, r1, r4
	strh r2, [r3]
	ldr r2, _08091814
	adds r0, r2
	adds r4, 0x1
	adds r1, r4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08091808: .4byte 0x06000232
_0809180C: .4byte 0x06000234
_08091810: .4byte 0x06000272
_08091814: .4byte 0x06000274
	thumb_func_end sub_80917CC

	thumb_func_start sub_8091818
sub_8091818: @ 8091818
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	lsls r1, 16
	lsrs r0, r1, 16
	lsls r2, 16
	lsrs r2, 16
	lsls r3, 16
	lsrs r3, 16
	cmp r4, 0x1
	beq _08091844
	cmp r4, 0x1
	bgt _0809183A
	cmp r4, 0
	beq _0809184C
	b _0809186C
_0809183A:
	cmp r5, 0x2
	beq _0809185E
	cmp r5, 0x3
	beq _08091852
	b _0809186C
_08091844:
	cmp r0, r2
	bls _0809186C
	subs r0, 0x1
	b _08091864
_0809184C:
	cmp r0, r3
	bcs _0809186C
	b _08091862
_08091852:
	cmp r0, r2
	bls _0809185A
	subs r0, 0x1
	b _08091864
_0809185A:
	adds r0, r3, 0
	b _0809186C
_0809185E:
	cmp r0, r3
	bcs _0809186A
_08091862:
	adds r0, 0x1
_08091864:
	lsls r0, 16
	lsrs r0, 16
	b _0809186C
_0809186A:
	adds r0, r2, 0
_0809186C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8091818

	thumb_func_start nullsub_59
nullsub_59: @ 8091874
	bx lr
	thumb_func_end nullsub_59

	thumb_func_start sub_8091878
sub_8091878: @ 8091878
	push {r4-r7,lr}
	lsls r1, 24
	ldr r4, _080918A0
	adds r3, r4, 0
	ldr r2, _080918A4
	ldm r2!, {r5-r7}
	stm r3!, {r5-r7}
	ldm r2!, {r5-r7}
	stm r3!, {r5-r7}
	strh r0, [r4, 0x2]
	ldr r0, _080918A8
	lsrs r1, 22
	adds r1, r0
	ldr r0, [r1]
	str r0, [r4, 0xC]
	ldr r0, _080918AC
	str r0, [r4, 0x8]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080918A0: .4byte gUnknown_02024E8C
_080918A4: .4byte gUnknown_083B57A4
_080918A8: .4byte gUnknown_083B5794
_080918AC: .4byte gSpriteAnimTable_81E7C64
	thumb_func_end sub_8091878

	thumb_func_start sub_80918B0
sub_80918B0: @ 80918B0
	push {r4-r7,lr}
	lsls r1, 24
	ldr r4, _080918DC
	adds r3, r4, 0
	ldr r2, _080918E0
	ldm r2!, {r5-r7}
	stm r3!, {r5-r7}
	ldm r2!, {r5-r7}
	stm r3!, {r5-r7}
	strh r0, [r4, 0x2]
	ldr r0, _080918E4
	lsrs r1, 22
	adds r1, r0
	ldr r0, [r1]
	str r0, [r4, 0xC]
	ldr r0, _080918E8
	ldr r0, [r0]
	str r0, [r4, 0x8]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080918DC: .4byte gUnknown_02024E8C
_080918E0: .4byte gUnknown_083B57A4
_080918E4: .4byte gUnknown_083B5794
_080918E8: .4byte gUnknown_081EC2A4
	thumb_func_end sub_80918B0

	thumb_func_start sub_80918EC
sub_80918EC: @ 80918EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	lsls r0, 16
	lsrs r7, r0, 16
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	lsls r2, 16
	lsrs r2, 16
	mov r10, r2
	lsls r3, 16
	lsrs r3, 16
	mov r8, r3
	adds r0, r7, 0
	bl NationalPokedexNumToSpecies
	adds r7, r0, 0
	cmp r7, SPECIES_UNOWN
	beq _0809199C
	movs r0, 0x9A
	lsls r0, 1
	cmp r7, r0
	beq _08091958
	lsls r6, r7, 3
	ldr r0, _0809194C
	adds r0, r6, r0
	ldr r1, _08091950
	lsls r2, r7, 2
	adds r2, r1
	ldrb r1, [r2]
	ldrb r2, [r2, 0x1]
	movs r3, 0x80
	lsls r3, 18
	ldr r4, _08091954
	mov r12, r4
	mov r5, r8
	lsls r4, r5, 2
	add r4, r12
	ldr r4, [r4]
	str r4, [sp]
	str r7, [sp, 0x4]
	bl DecompressPicFromTable_2
	b _080919CE
	.align 2, 0
_0809194C: .4byte gMonFrontPicTable
_08091950: .4byte gMonFrontPicCoords
_08091954: .4byte gUnknown_083B5584
_08091958:
	lsls r6, r7, 3
	ldr r0, _0809198C
	adds r0, r6
	ldr r2, _08091990
	lsls r1, r7, 2
	adds r2, r1
	ldrb r1, [r2]
	ldrb r2, [r2, 0x1]
	movs r3, 0x80
	lsls r3, 18
	ldr r4, _08091994
	mov r12, r4
	mov r5, r8
	lsls r4, r5, 2
	add r4, r12
	ldr r4, [r4]
	str r4, [sp]
	str r7, [sp, 0x4]
	ldr r4, _08091998
	ldr r4, [r4, 0x20]
	str r4, [sp, 0x8]
	movs r4, 0x1
	str r4, [sp, 0xC]
	bl sub_800D378
	b _080919CE
	.align 2, 0
_0809198C: .4byte gMonFrontPicTable
_08091990: .4byte gMonFrontPicCoords
_08091994: .4byte gUnknown_083B5584
_08091998: .4byte gSaveBlock2
_0809199C:
	lsls r6, r7, 3
	ldr r0, _08091A30
	adds r0, r6
	ldr r2, _08091A34
	lsls r1, r7, 2
	adds r2, r1
	ldrb r1, [r2]
	ldrb r2, [r2, 0x1]
	movs r3, 0x80
	lsls r3, 18
	ldr r4, _08091A38
	mov r12, r4
	mov r5, r8
	lsls r4, r5, 2
	add r4, r12
	ldr r4, [r4]
	str r4, [sp]
	str r7, [sp, 0x4]
	ldr r4, _08091A3C
	ldr r4, [r4, 0x1C]
	str r4, [sp, 0x8]
	movs r4, 0x1
	str r4, [sp, 0xC]
	bl sub_800D378
_080919CE:
	ldr r0, _08091A40
	adds r0, r6, r0
	ldr r0, [r0]
	mov r1, r8
	lsls r4, r1, 4
	movs r2, 0x80
	lsls r2, 1
	adds r1, r4, r2
	lsls r1, 16
	lsrs r1, 16
	movs r2, 0x20
	bl LoadCompressedPalette
	mov r3, r8
	lsls r1, r3, 24
	lsrs r1, 24
	mov r0, r8
	bl sub_8091878
	ldr r0, _08091A44
	mov r5, r9
	lsls r1, r5, 16
	asrs r1, 16
	mov r3, r10
	lsls r2, r3, 16
	asrs r2, 16
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _08091A48
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r1
	ldrb r3, [r2, 0x5]
	movs r1, 0xF
	ands r1, r3
	orrs r1, r4
	strb r1, [r2, 0x5]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08091A30: .4byte gMonFrontPicTable
_08091A34: .4byte gMonFrontPicCoords
_08091A38: .4byte gUnknown_083B5584
_08091A3C: .4byte gSaveBlock2
_08091A40: .4byte gMonPaletteTable
_08091A44: .4byte gUnknown_02024E8C
_08091A48: .4byte gSprites
	thumb_func_end sub_80918EC

	thumb_func_start sub_8091A4C
sub_8091A4C: @ 8091A4C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x8
	adds r5, r0, 0
	adds r6, r1, 0
	mov r8, r2
	mov r9, r3
	lsls r5, 16
	lsrs r5, 16
	lsls r6, 16
	lsrs r6, 16
	mov r0, r8
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	mov r1, r9
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	lsls r0, r5, 3
	ldr r1, _08091AE4
	adds r0, r1
	ldr r1, _08091AE8
	lsls r2, r5, 2
	adds r2, r1
	ldrb r1, [r2]
	ldrb r2, [r2, 0x1]
	movs r3, 0x80
	lsls r3, 18
	ldr r4, _08091AEC
	ldr r4, [r4]
	str r4, [sp]
	str r5, [sp, 0x4]
	bl DecompressPicFromTable_2
	adds r0, r5, 0
	movs r1, 0
	bl sub_80918B0
	ldr r0, _08091AF0
	lsls r6, 16
	asrs r6, 16
	mov r3, r8
	lsls r3, 16
	asrs r3, 16
	mov r8, r3
	adds r1, r6, 0
	mov r2, r8
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _08091AF4
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r1
	mov r1, r9
	lsls r1, 4
	mov r9, r1
	ldrb r3, [r2, 0x5]
	movs r1, 0xF
	ands r1, r3
	mov r3, r9
	orrs r1, r3
	strb r1, [r2, 0x5]
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08091AE4: .4byte gTrainerFrontPicTable
_08091AE8: .4byte gTrainerFrontPicCoords
_08091AEC: .4byte gUnknown_083B5584
_08091AF0: .4byte gUnknown_02024E8C
_08091AF4: .4byte gSprites
	thumb_func_end sub_8091A4C

	thumb_func_start sub_8091AF8
sub_8091AF8: @ 8091AF8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	ldr r4, [sp, 0x34]
	ldr r5, [sp, 0x38]
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 24
	lsrs r3, 24
	str r3, [sp, 0x4]
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp, 0x8]
	lsls r5, 24
	lsrs r5, 24
	mov r10, r5
	bl sub_808D690
	movs r5, 0
	movs r6, 0
	ldr r4, _08091D08
	ldr r3, _08091D0C
_08091B32:
	ldr r2, [r3]
	lsls r0, r5, 2
	adds r1, r2, r0
	ldrb r0, [r1, 0x2]
	lsls r0, 31
	cmp r0, 0
	beq _08091B4E
	lsls r0, r6, 2
	adds r0, r2, r0
	ldr r1, [r1]
	str r1, [r0]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08091B4E:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r4
	bls _08091B32
	ldr r1, _08091D0C
	ldr r0, [r1]
	ldr r2, _08091D10
	adds r0, r2
	adds r1, r6, 0
	strh r6, [r0]
	cmp r7, 0xFF
	beq _08091C04
	movs r5, 0
	lsls r0, r1, 16
	movs r6, 0
	cmp r0, 0
	beq _08091BFA
	lsls r7, 2
	ldr r0, _08091D14
	adds r0, 0x3
	adds r0, r7, r0
	str r0, [sp, 0xC]
	ldr r0, _08091D14
	adds r0, r7
	mov r9, r0
_08091B82:
	ldr r1, _08091D0C
	ldr r0, [r1]
	lsls r4, r5, 2
	adds r0, r4
	ldrh r0, [r0]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r1, _08091D18
	movs r0, 0xB
	muls r0, r2
	adds r0, r1
	ldrb r2, [r0]
	adds r3, r2, 0
	mov r0, r9
	ldrb r0, [r0]
	cmp r2, r0
	bcc _08091BBA
	mov r1, r9
	ldrb r0, [r1]
	ldr r1, _08091D14
	adds r1, 0x1
	adds r1, r7, r1
	ldrb r1, [r1]
	adds r0, r1
	cmp r2, r0
	blt _08091BD2
_08091BBA:
	ldr r0, _08091D14
	adds r0, 0x2
	adds r0, r7, r0
	ldrb r2, [r0]
	cmp r3, r2
	bcc _08091BE6
	ldrb r1, [r0]
	ldr r2, [sp, 0xC]
	ldrb r0, [r2]
	adds r1, r0
	cmp r3, r1
	bge _08091BE6
_08091BD2:
	ldr r2, _08091D0C
	ldr r0, [r2]
	lsls r1, r6, 2
	adds r1, r0, r1
	adds r0, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08091BE6:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r1, _08091D0C
	ldr r0, [r1]
	ldr r2, _08091D10
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	bcc _08091B82
_08091BFA:
	ldr r1, _08091D0C
	ldr r0, [r1]
	ldr r2, _08091D10
	adds r0, r2
	strh r6, [r0]
_08091C04:
	ldr r0, [sp, 0x4]
	cmp r0, 0xFF
	beq _08091C74
	movs r5, 0
	movs r6, 0
	ldr r1, _08091D0C
	ldr r0, [r1]
	ldr r2, _08091D10
	adds r0, r2
	ldrh r0, [r0]
	cmp r6, r0
	bcs _08091C6A
	adds r7, r1, 0
	ldr r0, _08091D1C
	mov r8, r0
_08091C22:
	ldr r0, [r7]
	lsls r4, r5, 2
	adds r0, r4
	ldrh r0, [r0]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r2, r0, 16
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	add r0, r8
	ldrb r0, [r0, 0x19]
	lsls r0, 25
	lsrs r0, 25
	ldr r1, [sp, 0x4]
	cmp r1, r0
	bne _08091C58
	ldr r0, [r7]
	lsls r1, r6, 2
	adds r1, r0, r1
	adds r0, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08091C58:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, [r7]
	ldr r2, _08091D10
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	bcc _08091C22
_08091C6A:
	ldr r1, _08091D0C
	ldr r0, [r1]
	ldr r2, _08091D10
	adds r0, r2
	strh r6, [r0]
_08091C74:
	ldr r0, [sp, 0x8]
	cmp r0, 0xFF
	bne _08091C8A
	mov r1, r10
	cmp r1, 0xFF
	bne _08091C82
	b _08091DA6
_08091C82:
	mov r2, r10
	str r2, [sp, 0x8]
	movs r0, 0xFF
	mov r10, r0
_08091C8A:
	mov r1, r10
	cmp r1, 0xFF
	bne _08091D20
	movs r5, 0
	movs r6, 0
	ldr r2, _08091D0C
	ldr r0, [r2]
	ldr r1, _08091D10
	adds r0, r1
	ldrh r0, [r0]
	cmp r6, r0
	bcs _08091D9C
	adds r3, r2, 0
	mov r7, sp
	mov r8, r2
_08091CA8:
	ldr r0, [r3]
	lsls r4, r5, 2
	adds r1, r0, r4
	ldrb r0, [r1, 0x2]
	lsls r0, 30
	cmp r0, 0
	bge _08091CF2
	ldrh r0, [r1]
	str r3, [sp, 0x10]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r1, _08091D1C
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x6]
	strb r1, [r7]
	ldrb r0, [r0, 0x7]
	strb r0, [r7, 0x1]
	ldr r3, [sp, 0x10]
	ldr r2, [sp, 0x8]
	cmp r1, r2
	beq _08091CE0
	cmp r0, r2
	bne _08091CF2
_08091CE0:
	ldr r0, [r3]
	lsls r1, r6, 2
	adds r1, r0, r1
	adds r0, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08091CF2:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	mov r1, r8
	ldr r0, [r1]
	ldr r2, _08091D10
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	bcc _08091CA8
	b _08091D9C
	.align 2, 0
_08091D08: .4byte 0x00000181
_08091D0C: .4byte gUnknown_0202FFB4
_08091D10: .4byte 0x0000060c
_08091D14: .4byte gUnknown_083B57BC
_08091D18: .4byte gSpeciesNames
_08091D1C: .4byte gBaseStats
_08091D20:
	movs r5, 0
	movs r6, 0
	ldr r1, _08091E0C
	ldr r0, [r1]
	ldr r2, _08091E10
	adds r0, r2
	ldrh r0, [r0]
	cmp r6, r0
	bcs _08091D9C
	mov r7, sp
_08091D34:
	ldr r0, [r1]
	lsls r1, r5, 2
	adds r2, r0, r1
	ldrb r0, [r2, 0x2]
	lsls r0, 30
	adds r4, r1, 0
	cmp r0, 0
	bge _08091D88
	ldrh r0, [r2]
	bl NationalPokedexNumToSpecies
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r1, _08091E14
	lsls r0, r2, 3
	subs r0, r2
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x6]
	strb r1, [r7]
	ldrb r0, [r0, 0x7]
	strb r0, [r7, 0x1]
	ldr r2, [sp, 0x8]
	cmp r1, r2
	bne _08091D6A
	cmp r0, r10
	beq _08091D74
_08091D6A:
	cmp r1, r10
	bne _08091D88
	ldr r1, [sp, 0x8]
	cmp r0, r1
	bne _08091D88
_08091D74:
	ldr r2, _08091E0C
	ldr r0, [r2]
	lsls r1, r6, 2
	adds r1, r0, r1
	adds r0, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08091D88:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r1, _08091E0C
	ldr r0, [r1]
	ldr r2, _08091E10
	adds r0, r2
	ldrh r0, [r0]
	cmp r5, r0
	bcc _08091D34
_08091D9C:
	ldr r1, _08091E0C
	ldr r0, [r1]
	ldr r2, _08091E10
	adds r0, r2
	strh r6, [r0]
_08091DA6:
	ldr r1, _08091E0C
	ldr r0, [r1]
	ldr r2, _08091E10
	adds r1, r0, r2
	ldrh r0, [r1]
	cmp r0, 0
	beq _08091DFA
	adds r5, r0, 0
	ldr r0, _08091E18
	cmp r5, r0
	bhi _08091DFA
	ldr r4, _08091E0C
	movs r1, 0x2
	negs r1, r1
	mov r10, r1
	movs r2, 0x3
	negs r2, r2
	mov r9, r2
	mov r8, r0
	ldr r0, _08091E1C
	adds r7, r0, 0
_08091DD0:
	ldr r1, [r4]
	lsls r3, r5, 2
	adds r1, r3
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
	ldrb r2, [r1, 0x2]
	mov r0, r10
	ands r0, r2
	strb r0, [r1, 0x2]
	ldr r1, [r4]
	adds r1, r3
	ldrb r2, [r1, 0x2]
	mov r0, r9
	ands r0, r2
	strb r0, [r1, 0x2]
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r8
	bls _08091DD0
_08091DFA:
	adds r0, r6, 0
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08091E0C: .4byte gUnknown_0202FFB4
_08091E10: .4byte 0x0000060c
_08091E14: .4byte gBaseStats
_08091E18: .4byte 0x00000181
_08091E1C: .4byte 0x0000ffff
	thumb_func_end sub_8091AF8

	thumb_func_start sub_8091E20
sub_8091E20: @ 8091E20
	push {lr}
	sub sp, 0x8
	movs r1, 0x20
	str r1, [sp]
	movs r1, 0x1
	str r1, [sp, 0x4]
	movs r1, 0x9
	movs r2, 0x78
	movs r3, 0xD0
	bl sub_8072AB0
	add sp, 0x8
	pop {r0}
	bx r0
	thumb_func_end sub_8091E20

	thumb_func_start sub_8091E3C
sub_8091E3C: @ 8091E3C
	push {lr}
	ldr r0, _08091E50
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.align 2, 0
_08091E50: .4byte sub_8091E54
	thumb_func_end sub_8091E3C

	thumb_func_start sub_8091E54
sub_8091E54: @ 8091E54
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _08091E78
	ldr r2, _08091E7C
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r3, r1, 0
	cmp r0, 0x4
	bhi _08091E98
	lsls r0, 2
	ldr r1, _08091E80
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08091E78: .4byte gMain
_08091E7C: .4byte 0x0000043c
_08091E80: .4byte _08091E84
	.align 2, 0
_08091E84:
	.4byte _08091E98
	.4byte _08091F50
	.4byte _08091FC0
	.4byte _08091FE0
	.4byte _0809200C
_08091E98:
	ldr r0, _08091F1C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08091EA6
	b _08092030
_08091EA6:
	ldr r0, _08091F20
	ldr r0, [r0]
	ldr r1, _08091F24
	adds r0, r1
	movs r1, 0x2
	strb r1, [r0]
	movs r0, 0
	bl sub_8091060
	ldr r0, _08091F28
	movs r1, 0xC0
	lsls r1, 19
	bl LZ77UnCompVram
	ldr r0, _08091F2C
	ldr r1, _08091F30
	bl LZ77UnCompVram
	ldr r0, _08091F34
	movs r1, 0x1
	movs r2, 0x7E
	bl LoadPalette
	bl sub_806912C
	cmp r0, 0
	bne _08091F10
	movs r4, 0
	ldr r2, _08091F38
	mov r8, r2
	ldr r0, _08091F3C
	mov r12, r0
	movs r5, 0x1
	ldr r7, _08091F40
	ldr r6, _08091F44
_08091EEC:
	lsls r1, r4, 1
	mov r0, r8
	adds r2, r1, r0
	mov r0, r12
	adds r3, r1, r0
	ldrh r0, [r3]
	strh r0, [r2]
	adds r2, r1, r7
	adds r1, r6
	ldrh r0, [r1]
	strh r0, [r2]
	strh r5, [r3]
	strh r5, [r1]
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x10
	bls _08091EEC
_08091F10:
	ldr r0, _08091F48
	ldr r1, _08091F4C
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	b _08092030
	.align 2, 0
_08091F1C: .4byte gPaletteFade
_08091F20: .4byte gUnknown_0202FFB4
_08091F24: .4byte 0x0000064a
_08091F28: .4byte gPokedexMenuSearch_Gfx
_08091F2C: .4byte gUnknown_08E96D2C
_08091F30: .4byte 0x06007800
_08091F34: .4byte gPokedexMenuSearch_Pal + 0x2
_08091F38: .4byte 0x06007a80
_08091F3C: .4byte 0x06007b00
_08091F40: .4byte 0x06007ac0
_08091F44: .4byte 0x06007b40
_08091F48: .4byte gMain
_08091F4C: .4byte 0x0000043c
_08091F50:
	ldr r4, _08091FA8
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl InitMenuWindow
	ldr r0, _08091FAC
	bl LoadCompressedObjectPic
	ldr r0, _08091FB0
	bl LoadSpritePalettes
	adds r0, r5, 0
	bl sub_809308C
	movs r4, 0
	lsls r0, r5, 2
	adds r0, r5
	lsls r1, r0, 3
	ldr r3, _08091FB4
	movs r2, 0
_08091F7C:
	lsls r0, r4, 1
	adds r0, r1
	adds r0, r3
	strh r2, [r0]
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0xF
	bls _08091F7C
	adds r0, r5, 0
	bl sub_8092EB0
	movs r0, 0
	bl sub_8092AB0
	adds r0, r5, 0
	bl sub_8092B68
	ldr r1, _08091FB8
	ldr r2, _08091FBC
	adds r1, r2
	b _08091FF6
	.align 2, 0
_08091FA8: .4byte gWindowConfig_81E7064
_08091FAC: .4byte gUnknown_083A05CC
_08091FB0: .4byte gUnknown_083A05DC
_08091FB4: .4byte gUnknown_03004B28
_08091FB8: .4byte gMain
_08091FBC: .4byte 0x0000043c
_08091FC0:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r1, _08091FD8
	ldr r0, _08091FDC
	adds r1, r0
	b _08091FF6
	.align 2, 0
_08091FD8: .4byte gMain
_08091FDC: .4byte 0x0000043c
_08091FE0:
	ldr r1, _08092000
	ldr r2, _08092004
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0xE
	movs r2, 0xE2
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _08092008
	adds r1, r3, r0
_08091FF6:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08092030
	.align 2, 0
_08092000: .4byte REG_BG3CNT
_08092004: .4byte 0x00000f03
_08092008: .4byte 0x0000043c
_0809200C:
	ldr r0, _0809203C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0
	bne _08092030
	ldr r1, _08092040
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _08092044
	str r1, [r0]
	ldr r1, _08092048
	adds r0, r3, r1
	strb r2, [r0]
_08092030:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809203C: .4byte gPaletteFade
_08092040: .4byte gTasks
_08092044: .4byte sub_809204C
_08092048: .4byte 0x0000043c
	thumb_func_end sub_8091E54

	thumb_func_start sub_809204C
sub_809204C: @ 809204C
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r0, _08092074
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	ldrb r0, [r4, 0x8]
	bl sub_8092AB0
	adds r0, r5, 0
	bl sub_8092B68
	ldr r0, _08092078
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092074: .4byte gTasks
_08092078: .4byte sub_809207C
	thumb_func_end sub_809204C

	thumb_func_start sub_809207C
sub_809207C: @ 809207C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _080920A4
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080920B0
	movs r0, 0x3
	bl PlaySE
	ldr r0, _080920A8
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	ldr r0, _080920AC
	str r0, [r1]
	b _0809216C
	.align 2, 0
_080920A4: .4byte gMain
_080920A8: .4byte gTasks
_080920AC: .4byte sub_80927B8
_080920B0:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809210C
	ldr r1, _080920D4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r5, r0, r1
	movs r0, 0x8
	ldrsh r4, [r5, r0]
	cmp r4, 0x1
	beq _080920E8
	cmp r4, 0x1
	bgt _080920D8
	cmp r4, 0
	beq _080920DE
	b _0809216C
	.align 2, 0
_080920D4: .4byte gTasks
_080920D8:
	cmp r4, 0x2
	beq _080920FC
	b _0809216C
_080920DE:
	movs r0, 0x15
	bl PlaySE
	strh r4, [r5, 0xA]
	b _080920F2
_080920E8:
	movs r0, 0x15
	bl PlaySE
	movs r0, 0x4
	strh r0, [r5, 0xA]
_080920F2:
	ldr r0, _080920F8
	str r0, [r5]
	b _0809216C
	.align 2, 0
_080920F8: .4byte sub_809217C
_080920FC:
	movs r0, 0x3
	bl PlaySE
	ldr r0, _08092108
	str r0, [r5]
	b _0809216C
	.align 2, 0
_08092108: .4byte sub_80927B8
_0809210C:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0809213A
	ldr r0, _08092174
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r4, r1, r0
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	ble _0809213A
	movs r0, 0x6D
	bl PlaySE
	ldrh r0, [r4, 0x8]
	subs r0, 0x1
	strh r0, [r4, 0x8]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8092AB0
_0809213A:
	ldr r0, _08092178
	ldrh r1, [r0, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0809216C
	ldr r0, _08092174
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r4, r1, r0
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bgt _0809216C
	movs r0, 0x6D
	bl PlaySE
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8092AB0
_0809216C:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092174: .4byte gTasks
_08092178: .4byte gMain
	thumb_func_end sub_809207C

	thumb_func_start sub_809217C
sub_809217C: @ 809217C
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r0, _080921A8
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	ldrb r0, [r4, 0x8]
	ldrb r1, [r4, 0xA]
	bl sub_8092AD4
	adds r0, r5, 0
	bl sub_8092B68
	ldr r0, _080921AC
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080921A8: .4byte gTasks
_080921AC: .4byte sub_80921B0
	thumb_func_end sub_809217C

	thumb_func_start sub_80921B0
sub_80921B0: @ 80921B0
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080921D8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x8
	ldrsh r0, [r0, r1]
	cmp r0, 0
	beq _080921E4
	bl sub_806912C
	ldr r6, _080921DC
	cmp r0, 0
	bne _080921F0
	ldr r6, _080921E0
	b _080921F0
	.align 2, 0
_080921D8: .4byte gTasks
_080921DC: .4byte gUnknown_083B586C
_080921E0: .4byte gUnknown_083B58A4
_080921E4:
	bl sub_806912C
	ldr r6, _0809221C
	cmp r0, 0
	bne _080921F0
	ldr r6, _08092220
_080921F0:
	ldr r0, _08092224
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	beq _08092230
	movs r0, 0x17
	bl PlaySE
	adds r0, r5, 0
	bl sub_8092EB0
	ldr r0, _08092228
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	ldr r0, _0809222C
	str r0, [r1]
	b _080923EC
	.align 2, 0
_0809221C: .4byte gUnknown_083B5850
_08092220: .4byte gUnknown_083B5888
_08092224: .4byte gMain
_08092228: .4byte gTasks
_0809222C: .4byte sub_809204C
_08092230:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08092300
	ldr r0, _080922B4
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r6, r1, r0
	movs r2, 0xA
	ldrsh r0, [r6, r2]
	cmp r0, 0x6
	bne _080922F0
	movs r1, 0x8
	ldrsh r0, [r6, r1]
	cmp r0, 0
	beq _080922D4
	ldr r1, _080922B8
	movs r0, 0x40
	strb r0, [r1]
	ldr r7, _080922BC
	ldr r1, [r7]
	ldr r0, _080922C0
	adds r2, r1, r0
	movs r0, 0x40
	strh r0, [r2]
	ldr r0, _080922C4
	strh r3, [r0]
	movs r2, 0xC2
	lsls r2, 3
	adds r1, r2
	strh r3, [r1]
	adds r0, r5, 0
	movs r1, 0x5
	bl sub_8092E10
	ldr r4, _080922C8
	strb r0, [r4, 0x19]
	bl sub_806912C
	cmp r0, 0
	bne _08092288
	movs r0, 0
	strb r0, [r4, 0x19]
_08092288:
	ldr r0, [r7]
	ldrb r1, [r4, 0x19]
	ldr r2, _080922CC
	adds r0, r2
	strh r1, [r0]
	adds r0, r5, 0
	movs r1, 0x4
	bl sub_8092E10
	strb r0, [r4, 0x18]
	ldr r0, [r7]
	ldrb r1, [r4, 0x18]
	movs r2, 0xC3
	lsls r2, 3
	adds r0, r2
	strh r1, [r0]
	movs r0, 0x3
	bl PlaySE
	ldr r0, _080922D0
	str r0, [r6]
	b _080923EC
	.align 2, 0
_080922B4: .4byte gTasks
_080922B8: .4byte gUnknown_0202FFBA
_080922BC: .4byte gUnknown_0202FFB4
_080922C0: .4byte 0x0000062a
_080922C4: .4byte gUnknown_0202FFB8
_080922C8: .4byte gSaveBlock2
_080922CC: .4byte 0x00000614
_080922D0: .4byte sub_80927B8
_080922D4:
	ldr r0, _080922E8
	bl sub_8091E20
	ldr r0, _080922EC
	str r0, [r6]
	movs r0, 0x70
	bl PlaySE
	b _080923EC
	.align 2, 0
_080922E8: .4byte gDexText_Searching
_080922EC: .4byte sub_80923FC
_080922F0:
	movs r0, 0x15
	bl PlaySE
	ldr r0, _080922FC
	str r0, [r6]
	b _080923EC
	.align 2, 0
_080922FC: .4byte sub_80925CC
_08092300:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08092338
	ldr r1, _080923F4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0]
	cmp r0, 0xFF
	beq _08092338
	movs r0, 0x5
	bl PlaySE
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0]
	strh r1, [r4, 0xA]
	ldrb r0, [r4, 0x8]
	bl sub_8092AD4
_08092338:
	ldr r0, _080923F8
	ldrh r1, [r0, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _08092374
	ldr r1, _080923F4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x1]
	cmp r0, 0xFF
	beq _08092374
	movs r0, 0x5
	bl PlaySE
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0, 0x1]
	strh r1, [r4, 0xA]
	ldrb r0, [r4, 0x8]
	bl sub_8092AD4
_08092374:
	ldr r0, _080923F8
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080923B0
	ldr r1, _080923F4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x2]
	cmp r0, 0xFF
	beq _080923B0
	movs r0, 0x5
	bl PlaySE
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0, 0x2]
	strh r1, [r4, 0xA]
	ldrb r0, [r4, 0x8]
	bl sub_8092AD4
_080923B0:
	ldr r0, _080923F8
	ldrh r1, [r0, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080923EC
	ldr r1, _080923F4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r6
	ldrb r0, [r0, 0x3]
	cmp r0, 0xFF
	beq _080923EC
	movs r0, 0x5
	bl PlaySE
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	lsls r0, 2
	adds r0, r6
	ldrb r1, [r0, 0x3]
	strh r1, [r4, 0xA]
	ldrb r0, [r4, 0x8]
	bl sub_8092AD4
_080923EC:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080923F4: .4byte gTasks
_080923F8: .4byte gMain
	thumb_func_end sub_80921B0

	thumb_func_start sub_80923FC
sub_80923FC: @ 80923FC
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x8
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	adds r0, r5, 0
	movs r1, 0x5
	bl sub_8092E10
	mov r10, r0
	mov r0, r10
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	adds r0, r5, 0
	movs r1, 0x4
	bl sub_8092E10
	mov r9, r0
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	adds r0, r5, 0
	movs r1, 0
	bl sub_8092E10
	mov r8, r0
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_8092E10
	adds r6, r0, 0
	lsls r6, 24
	lsrs r6, 24
	adds r0, r5, 0
	movs r1, 0x2
	bl sub_8092E10
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x3
	bl sub_8092E10
	lsls r0, 24
	lsrs r0, 24
	str r4, [sp]
	str r0, [sp, 0x4]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	adds r3, r6, 0
	bl sub_8091AF8
	ldr r1, _0809249C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _080924A0
	str r1, [r0]
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809249C: .4byte gTasks
_080924A0: .4byte sub_80924A4
	thumb_func_end sub_80923FC

	thumb_func_start sub_80924A4
sub_80924A4: @ 80924A4
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl IsSEPlaying
	lsls r0, 24
	cmp r0, 0
	bne _080924F6
	ldr r0, _080924D0
	ldr r0, [r0]
	ldr r1, _080924D4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	beq _080924DC
	movs r0, 0x1F
	bl PlaySE
	ldr r0, _080924D8
	bl sub_8091E20
	b _080924E8
	.align 2, 0
_080924D0: .4byte gUnknown_0202FFB4
_080924D4: .4byte 0x0000060c
_080924D8: .4byte gDexText_SearchComplete
_080924DC:
	movs r0, 0x20
	bl PlaySE
	ldr r0, _080924FC
	bl sub_8091E20
_080924E8:
	ldr r0, _08092500
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, _08092504
	str r0, [r1]
_080924F6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080924FC: .4byte gDexText_NoMatching
_08092500: .4byte gTasks
_08092504: .4byte sub_8092508
	thumb_func_end sub_80924A4

	thumb_func_start sub_8092508
sub_8092508: @ 8092508
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r2, r4, 0
	ldr r0, _08092570
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080925A4
	ldr r5, _08092574
	ldr r1, [r5]
	ldr r3, _08092578
	adds r0, r1, r3
	ldrh r0, [r0]
	cmp r0, 0
	beq _08092590
	ldr r0, _0809257C
	adds r1, r0
	movs r0, 0x1
	strb r0, [r1]
	adds r0, r4, 0
	movs r1, 0x5
	bl sub_8092E10
	ldr r1, [r5]
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08092580
	adds r1, r2
	strh r0, [r1]
	adds r0, r4, 0
	movs r1, 0x4
	bl sub_8092E10
	ldr r1, [r5]
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _08092584
	adds r1, r3
	strh r0, [r1]
	ldr r1, _08092588
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809258C
	str r1, [r0]
	movs r0, 0x3
	bl PlaySE
	b _080925A4
	.align 2, 0
_08092570: .4byte gMain
_08092574: .4byte gUnknown_0202FFB4
_08092578: .4byte 0x0000060c
_0809257C: .4byte 0x0000064f
_08092580: .4byte 0x00000612
_08092584: .4byte 0x00000616
_08092588: .4byte gTasks
_0809258C: .4byte sub_80927B8
_08092590:
	ldr r0, _080925AC
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	ldr r0, _080925B0
	str r0, [r1]
	movs r0, 0x17
	bl PlaySE
_080925A4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080925AC: .4byte gTasks
_080925B0: .4byte sub_809217C
	thumb_func_end sub_8092508

	thumb_func_start sub_80925B4
sub_80925B4: @ 80925B4
	push {lr}
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 15
	adds r1, 0x1
	lsls r1, 27
	lsrs r1, 24
	movs r0, 0x90
	bl sub_814AD7C
	pop {r0}
	bx r0
	thumb_func_end sub_80925B4

	thumb_func_start sub_80925CC
sub_80925CC: @ 80925CC
	push {r4-r6,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	bl sub_8092C8C
	ldr r2, _08092630
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r6, r1, r2
	ldrb r0, [r6, 0xA]
	adds r2, 0x8
	adds r1, r2
	ldr r2, _08092634
	lsls r0, 3
	adds r0, r2
	ldrb r5, [r0, 0x4]
	lsls r5, 1
	adds r5, r1, r5
	ldrb r0, [r0, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r5]
	strh r0, [r6, 0x24]
	ldrh r0, [r1]
	strh r0, [r6, 0x26]
	adds r0, r4, 0
	bl sub_8092D78
	ldr r1, _08092638
	ldr r3, _0809263C
	movs r0, 0xB
	str r0, [sp]
	movs r0, 0x10
	movs r2, 0xC
	bl sub_814AC58
	ldrh r0, [r5]
	movs r1, 0x1
	bl sub_80925B4
	ldr r0, _08092640
	str r0, [r6]
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092630: .4byte gTasks
_08092634: .4byte gUnknown_083B5A7C
_08092638: .4byte 0x0000ffff
_0809263C: .4byte 0x00002d9f
_08092640: .4byte sub_8092644
	thumb_func_end sub_80925CC

	thumb_func_start sub_8092644
sub_8092644: @ 8092644
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r3, _080926A8
	lsls r2, r7, 2
	adds r2, r7
	lsls r2, 3
	adds r6, r2, r3
	ldrb r1, [r6, 0xA]
	ldr r0, _080926AC
	lsls r1, 3
	adds r1, r0
	ldr r0, [r1]
	mov r8, r0
	adds r3, 0x8
	adds r2, r3
	ldrb r0, [r1, 0x4]
	lsls r0, 1
	adds r4, r2, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 1
	adds r5, r2, r0
	ldrh r0, [r1, 0x6]
	subs r0, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, _080926B0
	mov r12, r0
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080926B4
	bl sub_814ADC8
	movs r0, 0x15
	bl PlaySE
	movs r0, 0x12
	movs r1, 0x1
	movs r2, 0x1C
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r0, 0x1
	bl sub_8092C8C
	b _080926E0
	.align 2, 0
_080926A8: .4byte gTasks
_080926AC: .4byte gUnknown_083B5A7C
_080926B0: .4byte gMain
_080926B4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080926EC
	bl sub_814ADC8
	movs r0, 0x17
	bl PlaySE
	movs r0, 0x12
	movs r1, 0x1
	movs r2, 0x1C
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r0, 0x1
	bl sub_8092C8C
	ldrh r0, [r6, 0x24]
	strh r0, [r4]
	ldrh r0, [r6, 0x26]
	strh r0, [r5]
_080926E0:
	ldr r0, _080926E8
	str r0, [r6]
	b _080927AE
	.align 2, 0
_080926E8: .4byte sub_809217C
_080926EC:
	movs r3, 0
	mov r0, r12
	ldrh r1, [r0, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809274C
	ldrh r0, [r4]
	cmp r0, 0
	beq _08092716
	movs r1, 0
	bl sub_80925B4
	ldrh r0, [r4]
	subs r0, 0x1
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, 0x1
	bl sub_80925B4
	b _08092734
_08092716:
	ldrh r0, [r5]
	cmp r0, 0
	beq _08092730
	subs r0, 0x1
	strh r0, [r5]
	adds r0, r7, 0
	bl sub_8092D78
	ldrh r0, [r4]
	movs r1, 0x1
	bl sub_80925B4
	movs r3, 0x1
_08092730:
	cmp r3, 0
	beq _080927AE
_08092734:
	movs r0, 0x5
	bl PlaySE
	ldrh r0, [r4]
	ldrh r1, [r5]
	adds r0, r1
	lsls r0, 3
	add r0, r8
	ldr r0, [r0]
	bl sub_8091E20
	b _080927AE
_0809274C:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080927AE
	ldrh r0, [r4]
	cmp r0, 0x4
	bhi _08092774
	cmp r0, r2
	bcs _08092774
	movs r1, 0
	bl sub_80925B4
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	ldrh r0, [r4]
	movs r1, 0x1
	bl sub_80925B4
	b _08092798
_08092774:
	cmp r2, 0x5
	bls _08092794
	ldrh r1, [r5]
	subs r0, r2, 0x5
	cmp r1, r0
	bge _08092794
	adds r0, r1, 0x1
	strh r0, [r5]
	adds r0, r7, 0
	bl sub_8092D78
	movs r0, 0x5
	movs r1, 0x1
	bl sub_80925B4
	movs r3, 0x1
_08092794:
	cmp r3, 0
	beq _080927AE
_08092798:
	movs r0, 0x5
	bl PlaySE
	ldrh r0, [r4]
	ldrh r1, [r5]
	adds r0, r1
	lsls r0, 3
	add r0, r8
	ldr r0, [r0]
	bl sub_8091E20
_080927AE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8092644

	thumb_func_start sub_80927B8
sub_80927B8: @ 80927B8
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _080927E8
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080927EC
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080927E8: .4byte gTasks
_080927EC: .4byte sub_80927F0
	thumb_func_end sub_80927B8

	thumb_func_start sub_80927F0
sub_80927F0: @ 80927F0
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _0809280C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08092808
	adds r0, r2, 0
	bl DestroyTask
_08092808:
	pop {r0}
	bx r0
	.align 2, 0
_0809280C: .4byte gPaletteFade
	thumb_func_end sub_80927F0

	thumb_func_start sub_8092810
sub_8092810: @ 8092810
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r12, r1
	lsls r2, 24
	lsrs r1, r2, 24
	lsls r3, 24
	lsrs r5, r3, 8
	movs r3, 0
	cmp r5, 0
	beq _0809285A
	lsls r7, r1, 6
	ldr r6, _08092860
	lsls r4, r0, 12
_08092830:
	mov r0, r12
	adds r1, r0, r3
	lsls r1, 1
	adds r1, r7, r1
	ldr r0, _08092864
	adds r2, r1, r0
	ldrh r0, [r2]
	ands r0, r6
	orrs r0, r4
	strh r0, [r2]
	ldr r0, _08092868
	adds r1, r0
	ldrh r0, [r1]
	ands r0, r6
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r0, r5
	bcc _08092830
_0809285A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092860: .4byte 0x00000fff
_08092864: .4byte 0x06007800
_08092868: .4byte 0x06007840
	thumb_func_end sub_8092810

	thumb_func_start sub_809286C
sub_809286C: @ 809286C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x1
	ands r5, r0
	ands r2, r0
	lsls r2, 1
	orrs r5, r2
	cmp r4, 0xA
	bhi _08092958
	lsls r0, r4, 2
	ldr r1, _08092894
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092894: .4byte _08092898
	.align 2, 0
_08092898:
	.4byte _080928C4
	.4byte _080928C4
	.4byte _080928C4
	.4byte _080928D4
	.4byte _080928D4
	.4byte _080928EC
	.4byte _080928EC
	.4byte _080928D4
	.4byte _080928D4
	.4byte _08092914
	.4byte _08092904
_080928C4:
	ldr r1, _080928D0
	lsls r0, r4, 3
	adds r0, r1
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	b _08092932
	.align 2, 0
_080928D0: .4byte gUnknown_083B57E4
_080928D4:
	ldr r2, _08092900
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	ldrb r3, [r0, 0x6]
	adds r0, r5, 0
	bl sub_8092810
_080928EC:
	ldr r2, _08092900
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x7]
	ldrb r2, [r0, 0x8]
	ldrb r3, [r0, 0x9]
	b _08092934
	.align 2, 0
_08092900: .4byte gUnknown_083B57FC
_08092904:
	ldr r0, _08092910
	ldrb r1, [r0, 0x1C]
	ldrb r2, [r0, 0x1D]
	ldrb r3, [r0, 0x1E]
	b _08092934
	.align 2, 0
_08092910: .4byte gUnknown_083B57FC
_08092914:
	bl sub_806912C
	cmp r0, 0
	bne _08092940
	ldr r2, _0809293C
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	subs r2, 0x2
	lsls r2, 24
	lsrs r2, 24
_08092932:
	ldrb r3, [r0, 0x6]
_08092934:
	adds r0, r5, 0
	bl sub_8092810
	b _08092958
	.align 2, 0
_0809293C: .4byte gUnknown_083B57FC
_08092940:
	ldr r2, _08092960
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	ldrb r3, [r0, 0x6]
	adds r0, r5, 0
	bl sub_8092810
_08092958:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092960: .4byte gUnknown_083B57FC
	thumb_func_end sub_809286C

	thumb_func_start sub_8092964
sub_8092964: @ 8092964
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x1
	beq _080929CE
	cmp r0, 0x1
	bgt _0809297A
	cmp r0, 0
	beq _08092980
	b _08092AAC
_0809297A:
	cmp r1, 0x2
	beq _08092A3E
	b _08092AAC
_08092980:
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0xA
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x5
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x6
	movs r1, 0x1
	movs r2, 0
	b _08092A1A
_080929CE:
	movs r0, 0
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0xA
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x5
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x6
	movs r1, 0x1
	movs r2, 0x1
_08092A1A:
	bl sub_809286C
	movs r0, 0x7
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x8
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x9
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	b _08092AAC
_08092A3E:
	movs r0, 0
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0xA
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x5
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x6
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x7
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x8
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x9
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
_08092AAC:
	pop {r0}
	bx r0
	thumb_func_end sub_8092964

	thumb_func_start sub_8092AB0
sub_8092AB0: @ 8092AB0
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_8092964
	ldr r0, _08092AD0
	lsls r4, 3
	adds r4, r0
	ldr r0, [r4]
	bl sub_8091E20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08092AD0: .4byte gUnknown_083B57E4
	thumb_func_end sub_8092AB0

	thumb_func_start sub_8092AD4
sub_8092AD4: @ 8092AD4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	bl sub_8092964
	cmp r4, 0x6
	bhi _08092B4E
	lsls r0, r4, 2
	ldr r1, _08092AF0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092AF0: .4byte _08092AF4
	.align 2, 0
_08092AF4:
	.4byte _08092B10
	.4byte _08092B14
	.4byte _08092B18
	.4byte _08092B26
	.4byte _08092B34
	.4byte _08092B38
	.4byte _08092B44
_08092B10:
	movs r0, 0x3
	b _08092B3A
_08092B14:
	movs r0, 0x4
	b _08092B3A
_08092B18:
	movs r0, 0xA
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x5
	b _08092B3A
_08092B26:
	movs r0, 0xA
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x6
	b _08092B3A
_08092B34:
	movs r0, 0x7
	b _08092B3A
_08092B38:
	movs r0, 0x8
_08092B3A:
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	b _08092B4E
_08092B44:
	movs r0, 0x9
	movs r1, 0
	movs r2, 0
	bl sub_809286C
_08092B4E:
	ldr r0, _08092B64
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl sub_8091E20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08092B64: .4byte gUnknown_083B57FC
	thumb_func_end sub_8092AD4

	thumb_func_start sub_8092B68
sub_8092B68: @ 8092B68
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08092C68
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r6, r1, r2
	ldrh r0, [r6, 0x16]
	ldrh r1, [r6, 0x14]
	adds r0, r1
	lsls r0, 16
	ldr r7, _08092C6C
	ldr r1, _08092C70
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	ldr r0, _08092C74
	mov r8, r0
	movs r1, 0x2D
	movs r2, 0x10
	movs r3, 0x1
	bl sub_80729D8
	ldrh r0, [r6, 0x1A]
	ldrh r1, [r6, 0x18]
	adds r0, r1
	lsls r0, 16
	ldr r1, _08092C78
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	mov r0, r8
	movs r1, 0x2D
	movs r2, 0x20
	movs r3, 0x1
	bl sub_80729D8
	ldrh r0, [r6, 0x1E]
	ldrh r1, [r6, 0x1C]
	adds r0, r1
	lsls r0, 16
	ldr r4, _08092C7C
	lsrs r0, 13
	adds r4, 0x4
	adds r0, r4
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	ldr r5, _08092C80
	adds r0, r5, 0
	movs r1, 0x2D
	movs r2, 0x30
	movs r3, 0x1
	bl sub_80729D8
	ldrh r0, [r6, 0x22]
	ldrh r1, [r6, 0x20]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 13
	adds r0, r4
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	adds r0, r5, 0
	movs r1, 0x5D
	movs r2, 0x30
	movs r3, 0x1
	bl sub_80729D8
	ldrh r0, [r6, 0x12]
	ldrh r1, [r6, 0x10]
	adds r0, r1
	lsls r0, 16
	ldr r1, _08092C84
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	mov r0, r8
	movs r1, 0x2D
	movs r2, 0x40
	movs r3, 0x1
	bl sub_80729D8
	bl sub_806912C
	cmp r0, 0
	beq _08092C5E
	ldrh r0, [r6, 0xE]
	ldrh r6, [r6, 0xC]
	adds r0, r6
	lsls r0, 16
	ldr r1, _08092C88
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	mov r0, r8
	movs r1, 0x2D
	movs r2, 0x50
	movs r3, 0x1
	bl sub_80729D8
_08092C5E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092C68: .4byte gTasks
_08092C6C: .4byte gStringVar1
_08092C70: .4byte gUnknown_083B5910
_08092C74: .4byte gUnknown_083B5AB2
_08092C78: .4byte gUnknown_083B5968
_08092C7C: .4byte gUnknown_083B59C8
_08092C80: .4byte gUnknown_083B5AAC
_08092C84: .4byte gUnknown_083B58D8
_08092C88: .4byte gUnknown_083B58C0
	thumb_func_end sub_8092B68

	thumb_func_start sub_8092C8C
sub_8092C8C: @ 8092C8C
	push {r4-r6,lr}
	lsls r0, 24
	cmp r0, 0
	bne _08092D48
	ldr r1, _08092D1C
	ldr r2, _08092D20
	adds r0, r2, 0
	strh r0, [r1]
	movs r1, 0x12
	ldr r3, _08092D24
	ldr r4, _08092D28
	adds r2, r4, 0
_08092CA4:
	lsls r0, r1, 1
	adds r0, r3
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1C
	bls _08092CA4
	ldr r1, _08092D2C
	ldr r2, _08092D30
	adds r0, r2, 0
	strh r0, [r1]
	movs r3, 0x1
	ldr r6, _08092D24
	movs r5, 0x2
_08092CC2:
	lsls r2, r3, 6
	ldr r4, _08092D1C
	adds r1, r2, r4
	ldr r4, _08092D34
	adds r0, r4, 0
	strh r0, [r1]
	movs r1, 0x12
	adds r4, r3, 0x1
	adds r3, r2, 0
_08092CD4:
	lsls r0, r1, 1
	adds r0, r3, r0
	adds r0, r6
	strh r5, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1C
	bls _08092CD4
	ldr r1, _08092D2C
	adds r0, r2, r1
	movs r1, 0xA
	strh r1, [r0]
	lsls r0, r4, 16
	lsrs r3, r0, 16
	cmp r3, 0xC
	bls _08092CC2
	ldr r1, _08092D38
	ldr r2, _08092D3C
	adds r0, r2, 0
	strh r0, [r1]
	movs r1, 0x12
	ldr r3, _08092D40
	movs r2, 0xD
_08092D04:
	lsls r0, r1, 1
	adds r0, r3
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1C
	bls _08092D04
	ldr r1, _08092D44
	movs r0, 0xB
	strh r0, [r1]
	b _08092D6E
	.align 2, 0
_08092D1C: .4byte 0x06007822
_08092D20: .4byte 0x00000c0b
_08092D24: .4byte 0x06007800
_08092D28: .4byte 0x0000080d
_08092D2C: .4byte 0x0600783a
_08092D30: .4byte 0x0000080b
_08092D34: .4byte 0x0000040a
_08092D38: .4byte 0x06007b62
_08092D3C: .4byte 0x0000040b
_08092D40: .4byte 0x06007b40
_08092D44: .4byte 0x06007b7a
_08092D48:
	movs r3, 0
	ldr r6, _08092D74
	movs r5, 0x4F
_08092D4E:
	movs r1, 0x11
	adds r4, r3, 0x1
	lsls r2, r3, 6
_08092D54:
	lsls r0, r1, 1
	adds r0, r2, r0
	adds r0, r6
	strh r5, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1D
	bls _08092D54
	lsls r0, r4, 16
	lsrs r3, r0, 16
	cmp r3, 0xD
	bls _08092D4E
_08092D6E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092D74: .4byte 0x06007800
	thumb_func_end sub_8092C8C

	thumb_func_start sub_8092D78
sub_8092D78: @ 8092D78
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	ldr r4, _08092DBC
	ldr r3, _08092DC0
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r0, r2, r3
	movs r5, 0xA
	ldrsh r1, [r0, r5]
	lsls r1, 3
	adds r1, r4
	ldr r6, [r1]
	adds r3, 0x8
	adds r2, r3
	ldrb r0, [r1, 0x4]
	lsls r0, 1
	adds r0, r2
	mov r8, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 1
	adds r7, r2, r0
	movs r0, 0x12
	movs r1, 0x1
	movs r2, 0x1C
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r5, 0
	ldrh r4, [r7]
	b _08092DE8
	.align 2, 0
_08092DBC: .4byte gUnknown_083B5A7C
_08092DC0: .4byte gTasks
_08092DC4:
	lsls r0, r4, 3
	adds r0, r6
	ldr r0, [r0, 0x4]
	lsls r2, r5, 1
	adds r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r1, 0x12
	bl MenuPrint
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0x5
	bhi _08092DF2
_08092DE8:
	lsls r0, r4, 3
	adds r0, r6
	ldr r0, [r0, 0x4]
	cmp r0, 0
	bne _08092DC4
_08092DF2:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r7]
	adds r0, r1
	lsls r0, 3
	adds r0, r6
	ldr r0, [r0]
	bl sub_8091E20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8092D78

	thumb_func_start sub_8092E10
sub_8092E10: @ 8092E10
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _08092E50
	adds r1, r0
	ldr r2, _08092E54
	lsls r0, r3, 3
	adds r0, r2
	ldrb r2, [r0, 0x4]
	lsls r2, 1
	adds r2, r1, r2
	ldrb r0, [r0, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r1]
	ldrh r2, [r2]
	adds r0, r2
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r3, 0x5
	bhi _08092E74
	lsls r0, r3, 2
	ldr r1, _08092E58
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092E50: .4byte gUnknown_03004B28
_08092E54: .4byte gUnknown_083B5A7C
_08092E58: .4byte _08092E5C
	.align 2, 0
_08092E5C:
	.4byte _08092E88
	.4byte _08092E92
	.4byte _08092EA2
	.4byte _08092EA2
	.4byte _08092E80
	.4byte _08092E78
_08092E74:
	movs r0, 0
	b _08092EA8
_08092E78:
	ldr r0, _08092E7C
	b _08092EA4
	.align 2, 0
_08092E7C: .4byte gUnknown_083B5A60
_08092E80:
	ldr r0, _08092E84
	b _08092EA4
	.align 2, 0
_08092E84: .4byte gUnknown_083B5A62
_08092E88:
	cmp r2, 0
	beq _08092E96
	lsls r0, r2, 24
	lsrs r0, 24
	b _08092EA8
_08092E92:
	cmp r2, 0
	bne _08092E9A
_08092E96:
	movs r0, 0xFF
	b _08092EA8
_08092E9A:
	subs r0, r2, 0x1
	lsls r0, 24
	lsrs r0, 24
	b _08092EA8
_08092EA2:
	ldr r0, _08092EAC
_08092EA4:
	adds r0, r2, r0
	ldrb r0, [r0]
_08092EA8:
	pop {r1}
	bx r1
	.align 2, 0
_08092EAC: .4byte gUnknown_083B5A68
	thumb_func_end sub_8092E10

	thumb_func_start sub_8092EB0
sub_8092EB0: @ 8092EB0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _08092ED0
	ldr r0, [r1]
	ldr r2, _08092ED4
	adds r0, r2
	ldrh r0, [r0]
	adds r5, r1, 0
	cmp r0, 0
	beq _08092ECA
	cmp r0, 0x1
	beq _08092ED8
_08092ECA:
	movs r3, 0
	b _08092EDA
	.align 2, 0
_08092ED0: .4byte gUnknown_0202FFB4
_08092ED4: .4byte 0x00000614
_08092ED8:
	movs r3, 0x1
_08092EDA:
	ldr r1, _08092F00
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r1
	strh r3, [r0, 0xC]
	ldr r0, [r5]
	movs r3, 0xC3
	lsls r3, 3
	adds r0, r3
	ldrh r0, [r0]
	adds r5, r1, 0
	cmp r0, 0x5
	bhi _08092F20
	lsls r0, 2
	ldr r1, _08092F04
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092F00: .4byte gTasks
_08092F04: .4byte _08092F08
	.align 2, 0
_08092F08:
	.4byte _08092F20
	.4byte _08092F24
	.4byte _08092F28
	.4byte _08092F2C
	.4byte _08092F30
	.4byte _08092F34
_08092F20:
	movs r3, 0
	b _08092F36
_08092F24:
	movs r3, 0x1
	b _08092F36
_08092F28:
	movs r3, 0x2
	b _08092F36
_08092F2C:
	movs r3, 0x3
	b _08092F36
_08092F30:
	movs r3, 0x4
	b _08092F36
_08092F34:
	movs r3, 0x5
_08092F36:
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r5
	strh r3, [r0, 0x10]
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8092EB0

	thumb_func_start sub_8092F44
sub_8092F44: @ 8092F44
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _08092F7C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r0, r1, r3
	ldrb r2, [r0, 0xA]
	adds r3, 0x8
	adds r1, r3
	ldr r0, _08092F80
	lsls r2, 3
	adds r2, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r2, 0x6]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _08092F84
	ldrh r0, [r1]
	cmp r0, 0
	beq _08092F84
	movs r0, 0
	b _08092F86
	.align 2, 0
_08092F7C: .4byte gTasks
_08092F80: .4byte gUnknown_083B5A7C
_08092F84:
	movs r0, 0x1
_08092F86:
	pop {r1}
	bx r1
	thumb_func_end sub_8092F44

	thumb_func_start sub_8092F8C
sub_8092F8C: @ 8092F8C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _08092FC8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r0, r1, r3
	ldrb r2, [r0, 0xA]
	adds r3, 0x8
	adds r1, r3
	ldr r0, _08092FCC
	lsls r2, 3
	adds r2, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r2, 0x6]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _08092FD0
	ldrh r1, [r1]
	subs r0, 0x5
	cmp r1, r0
	bge _08092FD0
	movs r0, 0
	b _08092FD2
	.align 2, 0
_08092FC8: .4byte gTasks
_08092FCC: .4byte gUnknown_083B5A7C
_08092FD0:
	movs r0, 0x1
_08092FD2:
	pop {r1}
	bx r1
	thumb_func_end sub_8092F8C

	thumb_func_start sub_8092FD8
sub_8092FD8: @ 8092FD8
	push {r4,lr}
	adds r4, r0, 0
	ldr r2, _08093018
	movs r0, 0x2E
	ldrsh r1, [r4, r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, [r0]
	ldr r0, _0809301C
	cmp r1, r0
	bne _08093078
	movs r1, 0x30
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _08093020
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8092F8C
	lsls r0, 24
	cmp r0, 0
	beq _0809303C
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	b _08093048
	.align 2, 0
_08093018: .4byte gTasks
_0809301C: .4byte sub_8092644
_08093020:
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8092F44
	lsls r0, 24
	cmp r0, 0
	beq _0809303C
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	b _08093048
_0809303C:
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
_08093048:
	strb r0, [r2]
	ldrh r2, [r4, 0x32]
	movs r1, 0x30
	ldrsh r0, [r4, r1]
	lsls r0, 7
	adds r0, r2, r0
	lsls r0, 24
	ldr r1, _08093074
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _08093066
	adds r0, 0x7F
_08093066:
	asrs r0, 7
	strh r0, [r4, 0x26]
	adds r0, r2, 0
	adds r0, 0x8
	strh r0, [r4, 0x32]
	b _08093084
	.align 2, 0
_08093074: .4byte gSineTable
_08093078:
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08093084:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8092FD8

	thumb_func_start sub_809308C
sub_809308C: @ 809308C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r6, _08093104
	adds r0, r6, 0
	movs r1, 0xB8
	movs r2, 0x4
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r4, _08093108
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r0, r1, r4
	movs r2, 0
	strh r5, [r0, 0x2E]
	strh r2, [r0, 0x30]
	movs r0, 0x1C
	adds r0, r4
	mov r9, r0
	add r1, r9
	ldr r0, _0809310C
	mov r8, r0
	str r0, [r1]
	adds r0, r6, 0
	movs r1, 0xB8
	movs r2, 0x6C
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r4, r1, r4
	strh r5, [r4, 0x2E]
	movs r0, 0x1
	strh r0, [r4, 0x30]
	adds r4, 0x3F
	ldrb r0, [r4]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r4]
	add r1, r9
	mov r0, r8
	str r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093104: .4byte gSpriteTemplate_83A053C
_08093108: .4byte gSprites
_0809310C: .4byte sub_8092FD8
	thumb_func_end sub_809308C

	thumb_func_start sub_8093110
sub_8093110: @ 8093110
	push {lr}
	bl sub_80932AC
	ldr r0, _08093128
	bl SetMainCallback2
	ldr r0, _0809312C
	adds r0, 0x9C
	movs r1, 0x2
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08093128: .4byte sub_8093174
_0809312C: .4byte 0x02000000
	thumb_func_end sub_8093110

	thumb_func_start sub_8093130
sub_8093130: @ 8093130
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80932E4
	ldr r0, _08093164
	bl SetMainCallback2
	ldr r2, _08093168
	ldr r3, _0809316C
	ldr r0, _08093170
	lsls r4, 2
	adds r4, r0
	ldrb r1, [r4, 0x1]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r0, [r0, 0x1A]
	adds r2, 0x9C
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093164: .4byte sub_8093174
_08093168: .4byte 0x02000000
_0809316C: .4byte gLinkPlayers
_08093170: .4byte gUnknown_02029818
	thumb_func_end sub_8093130

	thumb_func_start sub_8093174
sub_8093174: @ 8093174
	push {lr}
	ldr r0, _0809318C
	ldr r1, _08093190
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x8
	bhi _08093232
	lsls r0, 2
	ldr r1, _08093194
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809318C: .4byte gMain
_08093190: .4byte 0x0000043c
_08093194: .4byte _08093198
	.align 2, 0
_08093198:
	.4byte _080931BC
	.4byte _080931C6
	.4byte _080931CC
	.4byte _080931D2
	.4byte _080931DC
	.4byte _080931EC
	.4byte _08093200
	.4byte _08093206
	.4byte _08093220
_080931BC:
	bl sub_8093534
	bl sub_8093688
	b _0809320A
_080931C6:
	bl sub_8093598
	b _0809320A
_080931CC:
	bl sub_80935EC
	b _0809320A
_080931D2:
	bl sub_8093610
	bl sub_80937A4
	b _0809320A
_080931DC:
	bl sub_80937BC
	ldr r1, _080931F8
	ldr r0, _080931FC
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_080931EC:
	bl MultistepInitMenuWindowContinue
	cmp r0, 0
	beq _08093232
	b _0809320A
	.align 2, 0
_080931F8: .4byte gMain
_080931FC: .4byte 0x0000043c
_08093200:
	bl sub_80937F0
	b _0809320A
_08093206:
	bl sub_80937D8
_0809320A:
	ldr r1, _08093218
	ldr r0, _0809321C
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _08093232
	.align 2, 0
_08093218: .4byte gMain
_0809321C: .4byte 0x0000043c
_08093220:
	bl nullsub_15
	bl sub_8093800
	bl sub_8093550
	ldr r0, _08093238
	bl SetMainCallback2
_08093232:
	pop {r0}
	bx r0
	.align 2, 0
_08093238: .4byte sub_809323C
	thumb_func_end sub_8093174

	thumb_func_start sub_809323C
sub_809323C: @ 809323C
	push {lr}
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	bl UpdatePaletteFade
	pop {r0}
	bx r0
	thumb_func_end sub_809323C

	thumb_func_start sub_8093254
sub_8093254: @ 8093254
	push {lr}
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	ldr r2, _0809329C
	ldrb r0, [r2, 0x6]
	adds r0, 0x1
	strb r0, [r2, 0x6]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3B
	bls _0809327E
	movs r0, 0
	strb r0, [r2, 0x6]
	ldrb r0, [r2, 0x5]
	movs r1, 0x1
	eors r0, r1
	strb r0, [r2, 0x5]
_0809327E:
	ldrb r0, [r2, 0x4]
	cmp r0, 0
	beq _08093298
	ldr r1, _080932A0
	ldr r0, _080932A4
	str r0, [r1]
	movs r2, 0xF0
	lsls r2, 3
	adds r0, r2
	str r0, [r1, 0x4]
	ldr r0, _080932A8
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
_08093298:
	pop {r0}
	bx r0
	.align 2, 0
_0809329C: .4byte 0x02000000
_080932A0: .4byte 0x040000d4
_080932A4: .4byte gUnknown_03004DE0
_080932A8: .4byte 0x800000a0
	thumb_func_end sub_8093254

	thumb_func_start sub_80932AC
sub_80932AC: @ 80932AC
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _080932DC
	movs r1, 0xFF
	bl CreateTask
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, _080932E0
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	adds r0, 0xC
	adds r1, r4, 0
	bl StoreWordInTwoHalfwords
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080932DC: .4byte nullsub_60
_080932E0: .4byte gTasks
	thumb_func_end sub_80932AC

	thumb_func_start sub_80932E4
sub_80932E4: @ 80932E4
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _0809331C
	movs r1, 0xFF
	bl CreateTask
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	ldr r1, _08093320
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x8]
	strh r4, [r0, 0xA]
	adds r0, 0xC
	adds r1, r5, 0
	bl StoreWordInTwoHalfwords
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809331C: .4byte nullsub_60
_08093320: .4byte gTasks
	thumb_func_end sub_80932E4

	thumb_func_start sub_8093324
sub_8093324: @ 8093324
	push {r4,r5,lr}
	ldr r0, _0809336C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _08093370
	adds r4, r1, r0
	ldr r5, _08093374
	ldrh r0, [r4, 0x8]
	strb r0, [r5, 0x1]
	adds r0, r4, 0
	adds r0, 0xC
	adds r1, r5, 0
	adds r1, 0x60
	bl LoadWordFromTwoHalfwords
	ldrb r0, [r5, 0x1]
	cmp r0, 0
	beq _0809337C
	ldr r2, _08093378
	movs r1, 0xA
	ldrsh r0, [r4, r1]
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 3
	adds r1, r2
	adds r0, r5, 0
	adds r0, 0x64
	movs r2, 0x38
	bl memcpy
	b _08093384
	.align 2, 0
_0809336C: .4byte nullsub_60
_08093370: .4byte gTasks
_08093374: .4byte 0x02000000
_08093378: .4byte gUnknown_0202FFC0
_0809337C:
	adds r0, r5, 0
	adds r0, 0x64
	bl sub_8093390
_08093384:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8093324

	thumb_func_start nullsub_60
nullsub_60: @ 809338C
	bx lr
	thumb_func_end nullsub_60

	thumb_func_start sub_8093390
sub_8093390: @ 8093390
	push {r4-r7,lr}
	adds r5, r0, 0
	ldr r6, _080934A4
	ldrb r0, [r6, 0x8]
	strb r0, [r5]
	ldrh r0, [r6, 0xE]
	strh r0, [r5, 0x10]
	ldrb r0, [r6, 0x10]
	strh r0, [r5, 0x12]
	movs r0, 0x1
	bl sub_8053108
	adds r4, r0, 0
	movs r0, 0xA
	bl sub_8053108
	cmp r0, 0
	bne _080933B6
	movs r4, 0
_080933B6:
	lsrs r0, r4, 16
	strh r0, [r5, 0x6]
	lsrs r0, r4, 8
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r5, 0x8]
	ands r4, r1
	strh r4, [r5, 0xA]
	ldr r0, _080934A8
	bl FlagGet
	strb r0, [r5, 0x2]
	bl sub_8090FC0
	strb r0, [r5, 0x3]
	bl GetPokedexSeenCount
	strh r0, [r5, 0xC]
	ldrb r1, [r6, 0xB]
	lsls r1, 8
	ldrb r0, [r6, 0xA]
	orrs r0, r1
	strh r0, [r5, 0xE]
	ldr r7, _080934AC
	movs r0, 0x17
	adds r1, r7, 0
	bl sav12_xor_get_clamped_above
	strh r0, [r5, 0x14]
	movs r0, 0x18
	adds r1, r7, 0
	bl sav12_xor_get_clamped_above
	strh r0, [r5, 0x16]
	ldr r1, _080934B0
	movs r0, 0x23
	bl sav12_xor_get_clamped_above
	strh r0, [r5, 0x1C]
	ldr r4, _080934B4
	movs r0, 0x22
	adds r1, r4, 0
	bl sav12_xor_get_clamped_above
	strh r0, [r5, 0x1E]
	movs r0, 0x15
	adds r1, r4, 0
	bl sav12_xor_get_clamped_above
	strh r0, [r5, 0x20]
	movs r1, 0xAE
	lsls r1, 3
	adds r0, r6, r1
	ldrh r0, [r0]
	strh r0, [r5, 0x18]
	ldr r2, _080934B8
	adds r1, r6, r2
	ldrh r1, [r1]
	strh r1, [r5, 0x1A]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, r7
	bls _08093436
	strh r7, [r5, 0x18]
_08093436:
	ldrh r0, [r5, 0x1A]
	cmp r0, r7
	bls _0809343E
	strh r7, [r5, 0x1A]
_0809343E:
	movs r4, 0
	bl sub_80C4D50
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x4
	bls _0809344E
	movs r4, 0x1
_0809344E:
	strb r4, [r5, 0x4]
	ldr r0, _080934BC
	movs r2, 0x92
	lsls r2, 3
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [r5, 0x24]
	movs r2, 0
	adds r6, r5, 0
	adds r6, 0x30
	adds r3, r5, 0
	adds r3, 0x28
	ldr r1, _080934C0
	adds r4, r0, r1
_0809346A:
	lsls r0, r2, 1
	adds r1, r3, r0
	adds r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x3
	bls _0809346A
	movs r2, 0
	adds r3, r6, 0
	ldr r4, _080934A4
_08093484:
	adds r1, r3, r2
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _08093484
	adds r0, r5, 0
	bl sub_80934F4
	strb r0, [r5, 0x1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080934A4: .4byte gSaveBlock2
_080934A8: .4byte 0x00000801
_080934AC: .4byte 0x0000270f
_080934B0: .4byte 0x000003e7
_080934B4: .4byte 0x0000ffff
_080934B8: .4byte 0x00000572
_080934BC: .4byte gSaveBlock1
_080934C0: .4byte 0x00002b1c
	thumb_func_end sub_8093390

	thumb_func_start sub_80934C4
sub_80934C4: @ 80934C4
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080934D8
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 3
	adds r1, r2
	ldrb r0, [r1, 0x1]
	bx lr
	.align 2, 0
_080934D8: .4byte gUnknown_0202FFC0
	thumb_func_end sub_80934C4

	thumb_func_start sav12_xor_get_clamped_above
sav12_xor_get_clamped_above: @ 80934DC
	push {r4,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r0, 24
	bl sub_8053108
	cmp r0, r4
	bls _080934EE
	adds r0, r4, 0
_080934EE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sav12_xor_get_clamped_above

	thumb_func_start sub_80934F4
sub_80934F4: @ 80934F4
	push {lr}
	adds r1, r0, 0
	movs r2, 0
	ldrh r0, [r1, 0x6]
	cmp r0, 0
	bne _08093506
	ldr r0, [r1, 0x8]
	cmp r0, 0
	beq _08093508
_08093506:
	movs r2, 0x1
_08093508:
	ldrb r0, [r1, 0x3]
	cmp r0, 0
	beq _08093514
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
_08093514:
	ldrh r0, [r1, 0x1A]
	cmp r0, 0x31
	bls _08093520
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
_08093520:
	ldrb r0, [r1, 0x4]
	cmp r0, 0
	beq _0809352C
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
_0809352C:
	adds r0, r2, 0
	pop {r1}
	bx r1
	thumb_func_end sub_80934F4

	thumb_func_start sub_8093534
sub_8093534: @ 8093534
	push {lr}
	movs r0, 0
	bl SetVBlankCallback
	movs r0, 0
	bl SetHBlankCallback
	movs r1, 0x80
	lsls r1, 19
	movs r0, 0
	strh r0, [r1]
	pop {r0}
	bx r0
	thumb_func_end sub_8093534

	thumb_func_start sub_8093550
sub_8093550: @ 8093550
	push {r4,lr}
	ldr r0, _08093588
	bl SetVBlankCallback
	ldr r3, _0809358C
	ldrh r2, [r3]
	movs r0, 0
	strh r0, [r3]
	ldr r4, _08093590
	ldrh r0, [r4]
	movs r1, 0x3
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	ldr r2, _08093594
	ldrh r0, [r2]
	movs r1, 0x18
	orrs r0, r1
	strh r0, [r2]
	movs r1, 0x80
	lsls r1, 19
	movs r2, 0xFA
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093588: .4byte sub_8093254
_0809358C: .4byte 0x04000208
_08093590: .4byte 0x04000200
_08093594: .4byte REG_DISPSTAT
	thumb_func_end sub_8093550

	thumb_func_start sub_8093598
sub_8093598: @ 8093598
	push {r4-r7,lr}
	sub sp, 0x4
	movs r2, 0xC0
	lsls r2, 19
	movs r3, 0x80
	lsls r3, 9
	mov r4, sp
	movs r6, 0
	ldr r1, _080935E4
	movs r5, 0x80
	lsls r5, 5
	ldr r7, _080935E8
	movs r0, 0x81
	lsls r0, 24
	mov r12, r0
_080935B6:
	strh r6, [r4]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, 0x4]
	str r7, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r2, r5
	subs r3, r5
	cmp r3, r5
	bhi _080935B6
	strh r6, [r4]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, 0x4]
	lsrs r0, r3, 1
	mov r2, r12
	orrs r0, r2
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080935E4: .4byte 0x040000d4
_080935E8: .4byte 0x81000800
	thumb_func_end sub_8093598

	thumb_func_start sub_80935EC
sub_80935EC: @ 80935EC
	sub sp, 0x4
	movs r2, 0xE0
	lsls r2, 19
	mov r1, sp
	movs r0, 0
	strh r0, [r1]
	ldr r0, _08093608
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _0809360C
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	add sp, 0x4
	bx lr
	.align 2, 0
_08093608: .4byte 0x040000d4
_0809360C: .4byte 0x81000200
	thumb_func_end sub_80935EC

	thumb_func_start sub_8093610
sub_8093610: @ 8093610
	push {r4,r5,lr}
	ldr r5, _08093664
	movs r1, 0
	strh r1, [r5]
	ldr r2, _08093668
	strh r1, [r2]
	ldr r3, _0809366C
	strh r1, [r3]
	ldr r4, _08093670
	strh r1, [r4]
	ldr r0, _08093674
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r1, _08093678
	adds r0, r1, 0
	strh r0, [r5]
	ldr r1, _0809367C
	adds r0, r1, 0
	strh r0, [r2]
	ldr r1, _08093680
	adds r0, r1, 0
	strh r0, [r3]
	ldr r1, _08093684
	adds r0, r1, 0
	strh r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08093664: .4byte REG_BG0CNT
_08093668: .4byte REG_BG1CNT
_0809366C: .4byte REG_BG2CNT
_08093670: .4byte REG_BG3CNT
_08093674: .4byte REG_BG0HOFS
_08093678: .4byte 0x00001e08
_0809367C: .4byte 0x00000801
_08093680: .4byte 0x00000902
_08093684: .4byte 0x00000a03
	thumb_func_end sub_8093610

	thumb_func_start sub_8093688
sub_8093688: @ 8093688
	push {r4-r6,lr}
	bl sub_8093324
	ldr r2, _080936D0
	movs r1, 0
	strb r1, [r2]
	strb r1, [r2, 0x3]
	strb r1, [r2, 0x4]
	adds r0, r2, 0
	adds r0, 0x65
	ldrb r0, [r0]
	strb r0, [r2, 0x2]
	strb r1, [r2, 0x5]
	strb r1, [r2, 0x6]
	movs r4, 0
	adds r6, r2, 0
	adds r6, 0x20
	adds r5, r2, 0
	adds r5, 0x8C
_080936AE:
	lsls r0, r4, 4
	adds r0, r6
	lsls r1, r4, 1
	adds r1, r5, r1
	ldrh r1, [r1]
	bl sub_80EB3FC
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080936AE
	bl sub_80936D4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080936D0: .4byte 0x02000000
	thumb_func_end sub_8093688

	thumb_func_start sub_80936D4
sub_80936D4: @ 80936D4
	push {r4-r6,lr}
	ldr r4, _08093798
	movs r0, 0
	strb r0, [r4, 0x7]
	strb r0, [r4, 0x8]
	strb r0, [r4, 0x9]
	strb r0, [r4, 0xA]
	strb r0, [r4, 0xB]
	strb r0, [r4, 0xC]
	strb r0, [r4, 0xD]
	adds r0, r4, 0
	adds r0, 0xE
	movs r1, 0
	movs r2, 0x8
	bl memset
	adds r0, r4, 0
	adds r0, 0x66
	ldrb r0, [r0]
	cmp r0, 0
	beq _08093704
	ldrb r0, [r4, 0x7]
	adds r0, 0x1
	strb r0, [r4, 0x7]
_08093704:
	adds r0, r4, 0
	adds r0, 0x6A
	ldrh r0, [r0]
	cmp r0, 0
	bne _08093714
	ldr r0, [r4, 0x6C]
	cmp r0, 0
	beq _0809371A
_08093714:
	ldrb r0, [r4, 0x8]
	adds r0, 0x1
	strb r0, [r4, 0x8]
_0809371A:
	ldr r1, _08093798
	ldr r0, [r1, 0x78]
	cmp r0, 0
	beq _08093728
	ldrb r0, [r1, 0x9]
	adds r0, 0x1
	strb r0, [r1, 0x9]
_08093728:
	ldr r0, [r1, 0x7C]
	cmp r0, 0
	beq _08093734
	ldrb r0, [r1, 0xA]
	adds r0, 0x1
	strb r0, [r1, 0xA]
_08093734:
	adds r0, r1, 0
	adds r0, 0x80
	ldrh r0, [r0]
	cmp r0, 0
	beq _08093744
	ldrb r0, [r1, 0xB]
	adds r0, 0x1
	strb r0, [r1, 0xB]
_08093744:
	adds r0, r1, 0
	adds r0, 0x82
	ldrh r0, [r0]
	cmp r0, 0
	beq _08093754
	ldrb r0, [r1, 0xC]
	adds r0, 0x1
	strb r0, [r1, 0xC]
_08093754:
	adds r0, r1, 0
	adds r0, 0x84
	ldrh r0, [r0]
	cmp r0, 0
	beq _08093764
	ldrb r0, [r1, 0xD]
	adds r0, 0x1
	strb r0, [r1, 0xD]
_08093764:
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _08093792
	movs r5, 0
	ldr r4, _0809379C
	adds r6, r1, 0
	adds r6, 0xE
_08093772:
	lsls r0, r4, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08093788
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08093788:
	adds r4, 0x1
	adds r5, 0x1
	ldr r0, _080937A0
	cmp r4, r0
	bls _08093772
_08093792:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093798: .4byte 0x02000000
_0809379C: .4byte 0x00000807
_080937A0: .4byte 0x0000080e
	thumb_func_end sub_80936D4

	thumb_func_start sub_80937A4
sub_80937A4: @ 80937A4
	push {lr}
	bl ResetPaletteFade
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	bl ResetTasks
	pop {r0}
	bx r0
	thumb_func_end sub_80937A4

	thumb_func_start sub_80937BC
sub_80937BC: @ 80937BC
	push {r4,lr}
	ldr r4, _080937D4
	adds r0, r4, 0
	bl SetUpWindowConfig
	adds r0, r4, 0
	bl MultistepInitMenuWindowBegin
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080937D4: .4byte gWindowConfig_81E6DC4
	thumb_func_end sub_80937BC

	thumb_func_start sub_80937D8
sub_80937D8: @ 80937D8
	push {lr}
	bl sub_8093E04
	bl sub_8093E28
	bl sub_8093F64
	bl sub_8093DAC
	pop {r0}
	bx r0
	thumb_func_end sub_80937D8

	thumb_func_start sub_80937F0
sub_80937F0: @ 80937F0
	push {lr}
	bl sub_8093EF8
	pop {r0}
	bx r0
	thumb_func_end sub_80937F0

	thumb_func_start nullsub_15
nullsub_15: @ 80937FC
	bx lr
	thumb_func_end nullsub_15

	thumb_func_start sub_8093800
sub_8093800: @ 8093800
	push {lr}
	bl sub_809380C
	pop {r0}
	bx r0
	thumb_func_end sub_8093800

	thumb_func_start sub_809380C
sub_809380C: @ 809380C
	push {r4,lr}
	ldr r4, _08093828
	adds r0, r4, 0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093828: .4byte sub_809382C
	thumb_func_end sub_809380C

	thumb_func_start sub_809382C
sub_809382C: @ 809382C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r7, _08093858
	lsls r1, r0, 2
	adds r1, r0
	lsls r4, r1, 3
	ldr r6, _0809385C
	ldr r5, _08093860
_0809383E:
	ldrb r0, [r6]
	lsls r0, 2
	adds r0, r7
	ldr r1, [r0]
	adds r0, r4, r5
	bl _call_via_r1
	lsls r0, 24
	cmp r0, 0
	bne _0809383E
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093858: .4byte gUnknown_083B5EBC
_0809385C: .4byte 0x02000000
_08093860: .4byte gTasks
	thumb_func_end sub_809382C

	thumb_func_start sub_8093864
sub_8093864: @ 8093864
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r4, _080938A0
	ldr r2, _080938A4
	ldrb r1, [r2, 0x11]
	movs r0, 0x1
	ands r0, r1
	movs r5, 0
	strb r0, [r4, 0x5]
	ldrb r0, [r2, 0x12]
	strb r0, [r4, 0x6]
	bl sub_80939A4
	movs r0, 0x1
	negs r0, r0
	str r5, [sp]
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	movs r0, 0
	add sp, 0x4
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080938A0: .4byte 0x02000000
_080938A4: .4byte gSaveBlock2
	thumb_func_end sub_8093864

	thumb_func_start sub_80938A8
sub_80938A8: @ 80938A8
	push {lr}
	ldr r0, _080938C4
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080938BE
	ldr r1, _080938C8
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_080938BE:
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_080938C4: .4byte gPaletteFade
_080938C8: .4byte 0x02000000
	thumb_func_end sub_80938A8

	thumb_func_start rfu_NI_stopReceivingData
rfu_NI_stopReceivingData: @ 80938CC
	push {lr}
	ldr r0, _080938E4
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080938EC
	ldr r1, _080938E8
	movs r0, 0x5
	strb r0, [r1]
	movs r0, 0x1
	b _08093914
	.align 2, 0
_080938E4: .4byte gMain
_080938E8: .4byte 0x02000000
_080938EC:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _08093912
	ldr r2, _08093900
	ldrb r1, [r2, 0x3]
	cmp r1, 0
	beq _08093904
	movs r0, 0x5
	b _0809390C
	.align 2, 0
_08093900: .4byte 0x02000000
_08093904:
	movs r0, 0x1
	eors r0, r1
	strb r0, [r2, 0x3]
	movs r0, 0x3
_0809390C:
	strb r0, [r2]
	movs r0, 0x1
	b _08093914
_08093912:
	movs r0, 0
_08093914:
	pop {r1}
	bx r1
	thumb_func_end rfu_NI_stopReceivingData

	thumb_func_start sub_8093918
sub_8093918: @ 8093918
	push {lr}
	bl sub_8093A28
	movs r0, 0x36
	bl PlaySE
	ldr r1, _08093934
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_08093934: .4byte 0x02000000
	thumb_func_end sub_8093918

	thumb_func_start sub_8093938
sub_8093938: @ 8093938
	push {lr}
	bl sub_8093A48
	lsls r0, 24
	cmp r0, 0
	beq _0809394A
	ldr r1, _08093950
	movs r0, 0x2
	strb r0, [r1]
_0809394A:
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_08093950: .4byte 0x02000000
	thumb_func_end sub_8093938

	thumb_func_start sub_8093954
sub_8093954: @ 8093954
	push {lr}
	sub sp, 0x4
	bl sub_80939C0
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _0809397C
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	movs r0, 0
	add sp, 0x4
	pop {r1}
	bx r1
	.align 2, 0
_0809397C: .4byte 0x02000000
	thumb_func_end sub_8093954

	thumb_func_start sub_8093980
sub_8093980: @ 8093980
	push {lr}
	ldr r0, _0809399C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08093996
	ldr r0, _080939A0
	ldr r0, [r0, 0x60]
	bl SetMainCallback2
_08093996:
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_0809399C: .4byte gPaletteFade
_080939A0: .4byte 0x02000000
	thumb_func_end sub_8093980

	thumb_func_start sub_80939A4
sub_80939A4: @ 80939A4
	push {lr}
	ldr r0, _080939B8
	movs r1, 0
	bl CreateTask
	ldr r0, _080939BC
	bl BasicInitMenuWindow
	pop {r0}
	bx r0
	.align 2, 0
_080939B8: .4byte sub_80939DC
_080939BC: .4byte gWindowConfig_81E6DC4
	thumb_func_end sub_80939A4

	thumb_func_start sub_80939C0
sub_80939C0: @ 80939C0
	push {lr}
	ldr r0, _080939D8
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _080939D4
	bl DestroyTask
_080939D4:
	pop {r0}
	bx r0
	.align 2, 0
_080939D8: .4byte sub_80939DC
	thumb_func_end sub_80939C0

	thumb_func_start sub_80939DC
sub_80939DC: @ 80939DC
	push {lr}
	sub sp, 0x20
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _08093A20
	adds r2, r1, r0
	ldr r0, _08093A24
	ldrb r1, [r0, 0x5]
	movs r3, 0xA
	ldrsh r0, [r2, r3]
	cmp r1, r0
	beq _08093A04
	strh r1, [r2, 0xA]
	ldrh r0, [r2, 0x8]
	movs r1, 0x1
	eors r0, r1
	strh r0, [r2, 0x8]
_08093A04:
	movs r0, 0x8
	ldrsh r1, [r2, r0]
	mov r0, sp
	bl sub_8094250
	mov r0, sp
	movs r1, 0xA
	movs r2, 0xC
	bl MenuPrint
	add sp, 0x20
	pop {r0}
	bx r0
	.align 2, 0
_08093A20: .4byte gTasks
_08093A24: .4byte 0x02000000
	thumb_func_end sub_80939DC

	thumb_func_start sub_8093A28
sub_8093A28: @ 8093A28
	push {r4,lr}
	ldr r4, _08093A44
	adds r0, r4, 0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093A44: .4byte sub_8093A68
	thumb_func_end sub_8093A28

	thumb_func_start sub_8093A48
sub_8093A48: @ 8093A48
	push {lr}
	ldr r0, _08093A5C
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _08093A60
	movs r0, 0
	b _08093A62
	.align 2, 0
_08093A5C: .4byte sub_8093A68
_08093A60:
	movs r0, 0x1
_08093A62:
	pop {r1}
	bx r1
	thumb_func_end sub_8093A48

	thumb_func_start sub_8093A68
sub_8093A68: @ 8093A68
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _08093A98
	ldr r2, _08093A9C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
_08093A7A:
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r0, 2
	adds r0, r5
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	lsls r0, 24
	cmp r0, 0
	bne _08093A7A
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08093A98: .4byte gUnknown_083B5ED8
_08093A9C: .4byte gTasks
	thumb_func_end sub_8093A68

	thumb_func_start sub_8093AA0
sub_8093AA0: @ 8093AA0
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _08093AE0
	movs r1, 0
	strb r1, [r0, 0x4]
	bl dp12_8087EA4
	movs r1, 0
	ldr r0, _08093AE4
	ldr r2, _08093AE8
	movs r3, 0xF0
	lsls r3, 3
	adds r0, r3
_08093ABA:
	strh r2, [r0]
	adds r0, 0x2
	adds r1, 0x1
	cmp r1, 0x9F
	bls _08093ABA
	ldr r0, _08093AEC
	bl SetHBlankCallback
	ldr r1, _08093AE0
	movs r0, 0x1
	strb r0, [r1, 0x4]
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	movs r0, 0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08093AE0: .4byte 0x02000000
_08093AE4: .4byte gUnknown_03004DE0
_08093AE8: .4byte 0x0000fffc
_08093AEC: .4byte sub_8093D7C
	thumb_func_end sub_8093AA0

	thumb_func_start sub_8093AF0
sub_8093AF0: @ 8093AF0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r8, r0
	ldr r1, _08093BFC
	movs r0, 0
	strb r0, [r1, 0x4]
	mov r2, r8
	ldrh r0, [r2, 0xA]
	adds r0, 0x3
	strh r0, [r2, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x4F
	ble _08093B18
	movs r0, 0x4F
	strh r0, [r2, 0xA]
_08093B18:
	mov r4, r8
	movs r0, 0xA
	ldrsh r7, [r4, r0]
	movs r0, 0xA0
	subs r0, r7
	mov r9, r0
	subs r4, r0, r7
	negs r0, r7
	lsls r6, r0, 16
	movs r0, 0xA0
	lsls r0, 16
	adds r1, r4, 0
	bl __udivsi3
	adds r5, r0, 0
	ldr r1, _08093C00
	adds r5, r1
	adds r0, r5, 0
	muls r0, r4
	adds r0, r6
	mov r10, r0
	adds r0, r5, 0
	adds r1, r4, 0
	bl __udivsi3
	str r0, [sp]
	lsls r5, 1
	movs r3, 0
	cmp r3, r7
	bcs _08093B74
	ldr r2, _08093C04
	mov r12, r2
	ldr r0, _08093C08
	adds r4, r0, 0
_08093B5C:
	lsls r0, r3, 16
	asrs r0, 16
	lsls r1, r0, 1
	add r1, r12
	subs r2, r4, r0
	strh r2, [r1]
	adds r0, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	asrs r0, 16
	cmp r0, r7
	bcc _08093B5C
_08093B74:
	lsls r2, r3, 16
	mov r1, r9
	lsls r0, r1, 16
	asrs r1, r0, 16
	mov r4, r10
	lsrs r7, r4, 16
	cmp r2, r0
	bge _08093BAE
	ldr r0, _08093C04
	mov r9, r0
	ldr r4, _08093C08
	mov r12, r4
	adds r4, r1, 0
_08093B8E:
	lsrs r1, r6, 16
	adds r6, r5
	ldr r0, [sp]
	subs r5, r0
	asrs r2, 16
	lsls r0, r2, 1
	add r0, r9
	add r1, r12
	strh r1, [r0]
	adds r2, 0x1
	lsls r2, 16
	lsrs r3, r2, 16
	lsls r2, r3, 16
	asrs r0, r2, 16
	cmp r0, r4
	blt _08093B8E
_08093BAE:
	adds r1, r7, 0
	lsls r0, r3, 16
	asrs r0, 16
	cmp r0, 0x9F
	bgt _08093BD4
	ldr r4, _08093C04
	ldr r0, _08093C08
	adds r2, r1, r0
_08093BBE:
	lsls r1, r3, 16
	asrs r1, 16
	lsls r0, r1, 1
	adds r0, r4
	strh r2, [r0]
	adds r1, 0x1
	lsls r1, 16
	lsrs r3, r1, 16
	asrs r1, 16
	cmp r1, 0x9F
	ble _08093BBE
_08093BD4:
	movs r0, 0x1
	ldr r1, _08093BFC
	strb r0, [r1, 0x4]
	mov r2, r8
	movs r4, 0xA
	ldrsh r0, [r2, r4]
	cmp r0, 0x4A
	ble _08093BEA
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
_08093BEA:
	movs r0, 0
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08093BFC: .4byte 0x02000000
_08093C00: .4byte 0xffff0000
_08093C04: .4byte gUnknown_03004DE0
_08093C08: .4byte 0x0000fffc
	thumb_func_end sub_8093AF0

	thumb_func_start sub_8093C0C
sub_8093C0C: @ 8093C0C
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80939C0
	bl sub_8093DAC
	ldr r0, _08093C34
	ldrb r0, [r0, 0x3]
	cmp r0, 0
	bne _08093C24
	bl sub_80939A4
_08093C24:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	movs r0, 0x1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08093C34: .4byte 0x02000000
	thumb_func_end sub_8093C0C

	thumb_func_start sub_8093C38
sub_8093C38: @ 8093C38
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r8, r0
	ldr r1, _08093D40
	movs r2, 0
	strb r2, [r1, 0x4]
	ldrh r0, [r0, 0xA]
	subs r0, 0x3
	mov r3, r8
	strh r0, [r3, 0xA]
	lsls r0, 16
	cmp r0, 0
	bgt _08093C5C
	strh r2, [r3, 0xA]
_08093C5C:
	mov r4, r8
	movs r0, 0xA
	ldrsh r7, [r4, r0]
	movs r0, 0xA0
	subs r0, r7
	mov r9, r0
	subs r4, r0, r7
	negs r0, r7
	lsls r6, r0, 16
	movs r0, 0xA0
	lsls r0, 16
	adds r1, r4, 0
	bl __udivsi3
	adds r5, r0, 0
	ldr r1, _08093D44
	adds r5, r1
	adds r0, r5, 0
	muls r0, r4
	adds r0, r6
	mov r10, r0
	adds r0, r5, 0
	adds r1, r4, 0
	bl __udivsi3
	str r0, [sp]
	lsrs r5, 1
	movs r3, 0
	cmp r3, r7
	bcs _08093CB8
	ldr r2, _08093D48
	mov r12, r2
	ldr r0, _08093D4C
	adds r4, r0, 0
_08093CA0:
	lsls r0, r3, 16
	asrs r0, 16
	lsls r1, r0, 1
	add r1, r12
	subs r2, r4, r0
	strh r2, [r1]
	adds r0, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	asrs r0, 16
	cmp r0, r7
	bcc _08093CA0
_08093CB8:
	lsls r2, r3, 16
	mov r1, r9
	lsls r0, r1, 16
	asrs r1, r0, 16
	mov r4, r10
	lsrs r7, r4, 16
	cmp r2, r0
	bge _08093CF2
	ldr r0, _08093D48
	mov r9, r0
	ldr r3, _08093D4C
	mov r12, r3
	adds r4, r1, 0
_08093CD2:
	lsrs r1, r6, 16
	adds r6, r5
	ldr r0, [sp]
	adds r5, r0
	asrs r2, 16
	lsls r0, r2, 1
	add r0, r9
	add r1, r12
	strh r1, [r0]
	adds r2, 0x1
	lsls r2, 16
	lsrs r3, r2, 16
	lsls r2, r3, 16
	asrs r0, r2, 16
	cmp r0, r4
	blt _08093CD2
_08093CF2:
	adds r1, r7, 0
	lsls r0, r3, 16
	asrs r0, 16
	cmp r0, 0x9F
	bgt _08093D18
	ldr r4, _08093D48
	ldr r0, _08093D4C
	adds r2, r1, r0
_08093D02:
	lsls r1, r3, 16
	asrs r1, 16
	lsls r0, r1, 1
	adds r0, r4
	strh r2, [r0]
	adds r1, 0x1
	lsls r1, 16
	lsrs r3, r1, 16
	asrs r1, 16
	cmp r1, 0x9F
	ble _08093D02
_08093D18:
	movs r0, 0x1
	ldr r1, _08093D40
	strb r0, [r1, 0x4]
	mov r2, r8
	movs r3, 0xA
	ldrsh r0, [r2, r3]
	cmp r0, 0
	bgt _08093D2E
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
_08093D2E:
	movs r0, 0
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08093D40: .4byte 0x02000000
_08093D44: .4byte 0xffff0000
_08093D48: .4byte gUnknown_03004DE0
_08093D4C: .4byte 0x0000fffc
	thumb_func_end sub_8093C38

	thumb_func_start sub_8093D50
sub_8093D50: @ 8093D50
	push {lr}
	ldr r1, _08093D74
	movs r0, 0
	strb r0, [r1, 0x4]
	bl SetHBlankCallback
	bl sub_8093E04
	ldr r0, _08093D78
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl DestroyTask
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_08093D74: .4byte 0x02000000
_08093D78: .4byte sub_8093A68
	thumb_func_end sub_8093D50

	thumb_func_start sub_8093D7C
sub_8093D7C: @ 8093D7C
	ldr r1, _08093DA0
	ldr r0, _08093DA4
	ldrh r2, [r0]
	movs r0, 0xFF
	ands r0, r2
	lsls r0, 1
	movs r2, 0xF0
	lsls r2, 3
	adds r1, r2
	adds r0, r1
	ldrh r1, [r0]
	ldr r0, _08093DA8
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	bx lr
	.align 2, 0
_08093DA0: .4byte gUnknown_03004DE0
_08093DA4: .4byte REG_VCOUNT
_08093DA8: .4byte REG_BG0VOFS
	thumb_func_end sub_8093D7C

	thumb_func_start sub_8093DAC
sub_8093DAC: @ 8093DAC
	push {lr}
	ldr r0, _08093DBC
	ldrb r0, [r0, 0x3]
	cmp r0, 0
	beq _08093DC0
	bl sub_8093DEC
	b _08093DC4
	.align 2, 0
_08093DBC: .4byte 0x02000000
_08093DC0:
	bl sub_8093DC8
_08093DC4:
	pop {r0}
	bx r0
	thumb_func_end sub_8093DAC

	thumb_func_start sub_8093DC8
sub_8093DC8: @ 8093DC8
	push {lr}
	bl MenuZeroFillScreen
	bl sub_80940E4
	bl sub_8093F14
	bl sub_8093F80
	bl sub_8093FD0
	bl sub_8094038
	bl sub_8094140
	pop {r0}
	bx r0
	thumb_func_end sub_8093DC8

	thumb_func_start sub_8093DEC
sub_8093DEC: @ 8093DEC
	push {lr}
	bl MenuZeroFillScreen
	bl sub_80940E4
	bl sub_8093F48
	bl sub_8094188
	pop {r0}
	bx r0
	thumb_func_end sub_8093DEC

	thumb_func_start sub_8093E04
sub_8093E04: @ 8093E04
	ldr r0, _08093E20
	ldr r2, _08093E24
	adds r1, r2, 0
	strh r1, [r0]
	adds r0, 0x2
	movs r2, 0
	strh r2, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r2, [r0]
	adds r0, 0x2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08093E20: .4byte REG_BG0VOFS
_08093E24: .4byte 0x0000fffc
	thumb_func_end sub_8093E04

	thumb_func_start sub_8093E28
sub_8093E28: @ 8093E28
	push {r4-r7,lr}
	bl sub_8093EA0
	ldr r0, _08093E84
	movs r1, 0xE0
	movs r2, 0x20
	bl LoadPalette
	ldr r3, _08093E88
	movs r4, 0xC0
	lsls r4, 19
	movs r5, 0xA4
	lsls r5, 5
	ldr r1, _08093E8C
	ldr r6, _08093E90
	movs r2, 0x80
	lsls r2, 5
	movs r7, 0x80
	lsls r7, 24
_08093E4E:
	str r3, [r1]
	str r4, [r1, 0x4]
	str r6, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r3, r2
	adds r4, r2
	subs r5, r2
	cmp r5, r2
	bhi _08093E4E
	str r3, [r1]
	str r4, [r1, 0x4]
	lsrs r0, r5, 1
	orrs r0, r7
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	ldr r1, _08093E94
	ldr r2, _08093E98
	ldr r0, _08093E8C
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _08093E9C
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093E84: .4byte gUnknown_083B5F6C
_08093E88: .4byte gMenuTrainerCard_Gfx
_08093E8C: .4byte 0x040000d4
_08093E90: .4byte 0x80000800
_08093E94: .4byte gBadgesTiles
_08093E98: .4byte 0x06001480
_08093E9C: .4byte 0x80000200
	thumb_func_end sub_8093E28

	thumb_func_start sub_8093EA0
sub_8093EA0: @ 8093EA0
	push {r4,lr}
	ldr r1, _08093EE4
	ldr r4, _08093EE8
	ldrb r0, [r4, 0x2]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0
	movs r2, 0x60
	bl LoadPalette
	ldr r0, _08093EEC
	movs r1, 0x30
	movs r2, 0x20
	bl LoadPalette
	ldr r0, _08093EF0
	movs r1, 0x40
	movs r2, 0x20
	bl LoadPalette
	adds r4, 0x64
	ldrb r0, [r4]
	cmp r0, 0
	beq _08093EDC
	ldr r0, _08093EF4
	movs r1, 0x10
	movs r2, 0x20
	bl LoadPalette
_08093EDC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08093EE4: .4byte gUnknown_083B5EF8
_08093EE8: .4byte 0x02000000
_08093EEC: .4byte gBadgesPalette
_08093EF0: .4byte gUnknown_083B5F4C
_08093EF4: .4byte gUnknown_083B5F0C
	thumb_func_end sub_8093EA0

	thumb_func_start sub_8093EF8
sub_8093EF8: @ 8093EF8
	push {lr}
	ldr r0, _08093F0C
	adds r0, 0x64
	ldrb r0, [r0]
	ldr r2, _08093F10
	movs r1, 0x50
	bl LoadTrainerGfx_TrainerCard
	pop {r0}
	bx r0
	.align 2, 0
_08093F0C: .4byte 0x02000000
_08093F10: .4byte 0x06001880
	thumb_func_end sub_8093EF8

	thumb_func_start sub_8093F14
sub_8093F14: @ 8093F14
	push {lr}
	sub sp, 0x8
	ldr r0, _08093F3C
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, 0x4]
	ldr r0, _08093F40
	ldrb r0, [r0, 0x1]
	lsls r0, 2
	add r0, sp
	ldr r0, [r0]
	ldr r1, _08093F44
	movs r2, 0xA0
	lsls r2, 1
	bl CpuFastSet
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_08093F3C: .4byte gUnknown_083B5EEC
_08093F40: .4byte 0x02000000
_08093F44: .4byte 0x06004800
	thumb_func_end sub_8093F14

	thumb_func_start sub_8093F48
sub_8093F48: @ 8093F48
	push {lr}
	ldr r0, _08093F5C
	ldr r1, _08093F60
	movs r2, 0xA0
	lsls r2, 1
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_08093F5C: .4byte gUnknown_08E8CFC0
_08093F60: .4byte 0x06004800
	thumb_func_end sub_8093F48

	thumb_func_start sub_8093F64
sub_8093F64: @ 8093F64
	push {lr}
	ldr r0, _08093F78
	ldr r1, _08093F7C
	movs r2, 0xA0
	lsls r2, 1
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_08093F78: .4byte gUnknown_08E8D9C0
_08093F7C: .4byte 0x06005000
	thumb_func_end sub_8093F64

	thumb_func_start sub_8093F80
sub_8093F80: @ 8093F80
	push {r4-r7,lr}
	movs r5, 0xC4
	ldr r7, _08093FCC
	movs r1, 0x5
	movs r0, 0xA0
	lsls r0, 7
	adds r6, r0, 0
_08093F8E:
	movs r0, 0x13
	lsls r3, r1, 16
	asrs r4, r3, 11
_08093F94:
	lsls r2, r0, 16
	asrs r2, 16
	adds r1, r4, r2
	lsls r1, 1
	adds r1, r7
	adds r0, r5, 0
	orrs r0, r6
	strh r0, [r1]
	adds r2, 0x1
	lsls r2, 16
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	lsrs r0, r2, 16
	asrs r2, 16
	cmp r2, 0x1A
	ble _08093F94
	movs r1, 0x80
	lsls r1, 9
	adds r0, r3, r1
	lsrs r1, r0, 16
	asrs r0, 16
	cmp r0, 0xC
	ble _08093F8E
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093FCC: .4byte 0x06004000
	thumb_func_end sub_8093F80

	thumb_func_start sub_8093FD0
sub_8093FD0: @ 8093FD0
	push {r4-r6,lr}
	ldr r4, _0809402C
	movs r2, 0xF
	ldr r0, _08094030
	ldrb r0, [r0, 0x2]
	adds r0, 0xF
	cmp r2, r0
	bge _08094002
	movs r6, 0xC0
	lsls r6, 1
	ldr r1, _08094034
	adds r5, r1, 0
	adds r3, r0, 0
_08093FEA:
	lsls r1, r2, 16
	asrs r1, 16
	lsls r0, r1, 1
	adds r0, r4
	adds r0, r6
	strh r5, [r0]
	adds r1, 0x1
	lsls r1, 16
	lsrs r2, r1, 16
	asrs r1, 16
	cmp r1, r3
	blt _08093FEA
_08094002:
	lsls r1, r2, 16
	asrs r0, r1, 16
	cmp r0, 0x12
	bgt _08094024
	movs r3, 0xC0
	lsls r3, 1
	movs r2, 0
_08094010:
	asrs r0, r1, 16
	lsls r1, r0, 1
	adds r1, r4
	adds r1, r3
	strh r2, [r1]
	adds r0, 0x1
	lsls r1, r0, 16
	asrs r0, r1, 16
	cmp r0, 0x12
	ble _08094010
_08094024:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809402C: .4byte 0x06004000
_08094030: .4byte 0x02000000
_08094034: .4byte 0x0000408f
	thumb_func_end sub_8093FD0

	thumb_func_start sub_8094038
sub_8094038: @ 8094038
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r1, _080940D0
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	bne _080940C2
	ldr r0, _080940D4
	mov r9, r0
	movs r0, 0
	movs r2, 0x4
	adds r1, 0xE
	mov r8, r1
	ldr r7, _080940D8
	movs r1, 0xC0
	lsls r1, 6
	adds r6, r1, 0
	adds r1, r7, 0x6
	mov r12, r1
_08094060:
	lsls r0, 16
	asrs r4, r0, 16
	mov r1, r8
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r5, r2, 16
	cmp r0, 0
	beq _080940AE
	asrs r1, r5, 15
	add r1, r9
	movs r2, 0xF0
	lsls r2, 2
	adds r3, r1, r2
	lsls r2, r4, 3
	adds r0, r2, r7
	ldrh r0, [r0]
	orrs r0, r6
	strh r0, [r3]
	ldr r0, _080940DC
	adds r3, r1, r0
	adds r0, r7, 0x2
	adds r0, r2, r0
	ldrh r0, [r0]
	orrs r0, r6
	strh r0, [r3]
	movs r0, 0x80
	lsls r0, 3
	adds r3, r1, r0
	adds r0, r7, 0x4
	adds r0, r2, r0
	ldrh r0, [r0]
	orrs r0, r6
	strh r0, [r3]
	ldr r0, _080940E0
	adds r1, r0
	add r2, r12
	ldrh r0, [r2]
	orrs r0, r6
	strh r0, [r1]
_080940AE:
	adds r1, r4, 0x1
	lsls r1, 16
	movs r2, 0xC0
	lsls r2, 10
	adds r0, r5, r2
	lsrs r2, r0, 16
	lsrs r0, r1, 16
	asrs r1, 16
	cmp r1, 0x7
	ble _08094060
_080940C2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080940D0: .4byte 0x02000000
_080940D4: .4byte 0x06004000
_080940D8: .4byte gUnknown_083B5F8C
_080940DC: .4byte 0x000003c2
_080940E0: .4byte 0x00000402
	thumb_func_end sub_8094038

	thumb_func_start sub_80940E4
sub_80940E4: @ 80940E4
	push {r4,lr}
	movs r2, 0
	ldr r1, _08094108
	movs r4, 0
	ldr r3, _0809410C
_080940EE:
	strh r4, [r1]
	lsls r0, r2, 16
	movs r2, 0x80
	lsls r2, 9
	adds r0, r2
	adds r1, 0x2
	lsrs r2, r0, 16
	asrs r0, 16
	cmp r0, r3
	ble _080940EE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094108: .4byte 0x06004000
_0809410C: .4byte 0x000003ff
	thumb_func_end sub_80940E4

	thumb_func_start sub_8094110
sub_8094110: @ 8094110
	push {r4-r6,lr}
	ldr r6, _0809413C
	movs r2, 0x3
	movs r5, 0xA0
	lsls r5, 2
	movs r3, 0x1
	movs r4, 0xB0
	lsls r4, 2
_08094120:
	lsls r0, r2, 1
	adds r0, r6
	adds r1, r0, r5
	strh r3, [r1]
	adds r0, r4
	strh r3, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x10
	bls _08094120
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809413C: .4byte 0x06004800
	thumb_func_end sub_8094110

	thumb_func_start sub_8094140
sub_8094140: @ 8094140
	push {r4,r5,lr}
	ldr r0, _0809417C
	bl BasicInitMenuWindow
	ldr r4, _08094180
	ldr r5, _08094184
	adds r0, r4, 0
	adds r1, r5, 0
	bl StringCopy
	ldrb r1, [r5, 0x8]
	adds r0, r4, 0
	bl ConvertInternationalString
	adds r0, r4, 0
	movs r1, 0x7
	movs r2, 0x5
	bl MenuPrint
	bl sub_80941D8
	bl sub_8094200
	bl sub_8094218
	bl sub_809429C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809417C: .4byte gWindowConfig_81E6DC4
_08094180: .4byte gStringVar1
_08094184: .4byte 0x02000094
	thumb_func_end sub_8094140

	thumb_func_start sub_8094188
sub_8094188: @ 8094188
	push {lr}
	ldr r0, _080941D0
	bl BasicInitMenuWindow
	bl sub_80942F8
	bl sub_8094334
	bl sub_80943C4
	bl sub_8094428
	bl sub_8094498
	bl sub_80944E8
	bl sub_8094538
	ldr r0, _080941D4
	bl BasicInitMenuWindow
	bl sub_8094354
	bl sub_80943E4
	bl sub_8094448
	bl sub_80944B8
	bl sub_8094508
	bl sub_8094558
	pop {r0}
	bx r0
	.align 2, 0
_080941D0: .4byte gWindowConfig_81E6DC4
_080941D4: .4byte gWindowConfig_81E6DE0
	thumb_func_end sub_8094188

	thumb_func_start sub_80941D8
sub_80941D8: @ 80941D8
	push {lr}
	sub sp, 0x8
	ldr r0, _080941FC
	adds r0, 0x72
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0x2
	movs r3, 0x5
	bl ConvertIntToDecimalStringN
	mov r0, sp
	movs r1, 0x14
	movs r2, 0x2
	bl MenuPrint
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_080941FC: .4byte 0x02000000
	thumb_func_end sub_80941D8

	thumb_func_start sub_8094200
sub_8094200: @ 8094200
	push {lr}
	ldr r0, _08094214
	adds r0, 0x88
	ldr r0, [r0]
	movs r1, 0x10
	movs r2, 0x8
	bl sub_80B7AEC
	pop {r0}
	bx r0
	.align 2, 0
_08094214: .4byte 0x02000000
	thumb_func_end sub_8094200

	thumb_func_start sub_8094218
sub_8094218: @ 8094218
	push {lr}
	sub sp, 0x10
	ldr r1, _0809422C
	ldrb r0, [r1, 0x7]
	cmp r0, 0
	bne _08094230
	bl sub_8094110
	b _0809424A
	.align 2, 0
_0809422C: .4byte 0x02000000
_08094230:
	adds r0, r1, 0
	adds r0, 0x70
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	mov r0, sp
	movs r1, 0x10
	movs r2, 0xA
	bl sub_8072B4C
_0809424A:
	add sp, 0x10
	pop {r0}
	bx r0
	thumb_func_end sub_8094218

	thumb_func_start sub_8094250
sub_8094250: @ 8094250
	push {r4,r5,lr}
	sub sp, 0x10
	adds r5, r0, 0
	lsls r1, 16
	lsrs r3, r1, 16
	ldr r0, _08094294
	ldrh r4, [r0, 0xE]
	ldrb r2, [r0, 0x10]
	ldr r1, _08094298
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _08094272
	adds r0, r1, 0
	adds r0, 0x74
	ldrh r4, [r0]
	adds r0, 0x2
	ldrh r2, [r0]
_08094272:
	lsls r3, 16
	asrs r3, 16
	mov r0, sp
	adds r1, r4, 0
	bl FormatPlayTime
	adds r0, r5, 0
	mov r1, sp
	movs r2, 0x30
	movs r3, 0x1
	bl sub_8072C74
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094294: .4byte gSaveBlock2
_08094298: .4byte 0x02000000
	thumb_func_end sub_8094250

	thumb_func_start sub_809429C
sub_809429C: @ 809429C
	push {r4-r6,lr}
	ldr r6, _080942F0
	ldrb r0, [r6, 0x1]
	cmp r0, 0
	beq _080942EA
	ldr r0, _080942F4
	adds r1, r6, 0
	adds r1, 0x20
	bl StringCopy
	movs r5, 0
	strb r5, [r0]
	adds r0, 0x1
	adds r1, r6, 0
	adds r1, 0x30
	bl StringCopy
	ldr r4, _080942F4
	adds r0, r4, 0
	movs r1, 0x2
	movs r2, 0xE
	bl MenuPrint
	adds r1, r6, 0
	adds r1, 0x40
	adds r0, r4, 0
	bl StringCopy
	strb r5, [r0]
	adds r0, 0x1
	adds r1, r6, 0
	adds r1, 0x50
	bl StringCopy
	adds r0, r4, 0
	movs r1, 0x2
	movs r2, 0x10
	bl MenuPrint
_080942EA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080942F0: .4byte 0x02000000
_080942F4: .4byte gStringVar1
	thumb_func_end sub_809429C

	thumb_func_start sub_80942F8
sub_80942F8: @ 80942F8
	push {r4,r5,lr}
	ldr r4, _08094328
	ldr r5, _0809432C
	adds r0, r4, 0
	adds r1, r5, 0
	bl StringCopy
	ldrb r1, [r5, 0x8]
	adds r0, r4, 0
	bl ConvertInternationalString
	ldr r1, _08094330
	adds r0, r4, 0
	bl StringAppend
	adds r0, r4, 0
	movs r1, 0x1C
	movs r2, 0x2
	bl sub_8072B4C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094328: .4byte gStringVar1
_0809432C: .4byte 0x02000094
_08094330: .4byte gOtherText_TrainersTrainerCard
	thumb_func_end sub_80942F8

	thumb_func_start sub_8094334
sub_8094334: @ 8094334
	push {lr}
	ldr r0, _0809434C
	ldrb r0, [r0, 0x8]
	cmp r0, 0
	beq _08094348
	ldr r0, _08094350
	movs r1, 0x3
	movs r2, 0x5
	bl MenuPrint
_08094348:
	pop {r0}
	bx r0
	.align 2, 0
_0809434C: .4byte 0x02000000
_08094350: .4byte gOtherText_FirstHOF
	thumb_func_end sub_8094334

	thumb_func_start sub_8094354
sub_8094354: @ 8094354
	push {r4,r5,lr}
	ldr r5, _080943B8
	ldrb r0, [r5, 0x8]
	cmp r0, 0
	beq _080943B0
	ldr r2, _080943BC
	adds r0, r5, 0
	adds r0, 0x6A
	ldrh r1, [r0]
	adds r0, r2, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r2, r0, 0
	ldr r4, _080943C0
	adds r1, r4, 0
	bl StringCopy
	adds r2, r0, 0
	adds r0, r5, 0
	adds r0, 0x6C
	ldrh r1, [r0]
	adds r0, r2, 0
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	adds r2, r0, 0
	adds r1, r4, 0
	bl StringCopy
	adds r2, r0, 0
	adds r0, r5, 0
	adds r0, 0x6E
	ldrh r1, [r0]
	adds r0, r2, 0
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	ldr r0, _080943BC
	movs r1, 0x1C
	movs r2, 0x5
	bl sub_8072B4C
_080943B0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080943B8: .4byte 0x02000000
_080943BC: .4byte gStringVar1
_080943C0: .4byte gUnknown_083B5EF4
	thumb_func_end sub_8094354

	thumb_func_start sub_80943C4
sub_80943C4: @ 80943C4
	push {lr}
	ldr r0, _080943DC
	ldrb r0, [r0, 0x9]
	cmp r0, 0
	beq _080943D8
	ldr r0, _080943E0
	movs r1, 0x3
	movs r2, 0x7
	bl MenuPrint
_080943D8:
	pop {r0}
	bx r0
	.align 2, 0
_080943DC: .4byte 0x02000000
_080943E0: .4byte gOtherText_LinkCableBattles
	thumb_func_end sub_80943C4

	thumb_func_start sub_80943E4
sub_80943E4: @ 80943E4
	push {r4,lr}
	sub sp, 0x10
	ldr r4, _08094424
	ldrb r0, [r4, 0x9]
	cmp r0, 0
	beq _0809441C
	adds r0, r4, 0
	adds r0, 0x78
	ldrh r1, [r0]
	mov r0, sp
	bl ConvertIntToDecimalString
	mov r0, sp
	movs r1, 0x16
	movs r2, 0x7
	bl sub_8072B4C
	adds r0, r4, 0
	adds r0, 0x7A
	ldrh r1, [r0]
	mov r0, sp
	bl ConvertIntToDecimalString
	mov r0, sp
	movs r1, 0x1C
	movs r2, 0x7
	bl sub_8072B4C
_0809441C:
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094424: .4byte 0x02000000
	thumb_func_end sub_80943E4

	thumb_func_start sub_8094428
sub_8094428: @ 8094428
	push {lr}
	ldr r0, _08094440
	ldrb r0, [r0, 0xA]
	cmp r0, 0
	beq _0809443C
	ldr r0, _08094444
	movs r1, 0x3
	movs r2, 0xF
	bl MenuPrint
_0809443C:
	pop {r0}
	bx r0
	.align 2, 0
_08094440: .4byte 0x02000000
_08094444: .4byte gOtherText_BattleTowerWinRecord
	thumb_func_end sub_8094428

	thumb_func_start sub_8094448
sub_8094448: @ 8094448
	push {r4,lr}
	sub sp, 0x10
	ldr r4, _08094494
	ldrb r0, [r4, 0xA]
	cmp r0, 0
	beq _0809448C
	adds r0, r4, 0
	adds r0, 0x7C
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0x18
	movs r3, 0x1
	bl sub_8072C44
	mov r0, sp
	movs r1, 0x70
	movs r2, 0x78
	movs r3, 0
	bl sub_80729D8
	adds r0, r4, 0
	adds r0, 0x7E
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0x18
	movs r3, 0x1
	bl sub_8072C44
	mov r0, sp
	movs r1, 0x95
	movs r2, 0x78
	movs r3, 0
	bl sub_80729D8
_0809448C:
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094494: .4byte 0x02000000
	thumb_func_end sub_8094448

	thumb_func_start sub_8094498
sub_8094498: @ 8094498
	push {lr}
	ldr r0, _080944B0
	ldrb r0, [r0, 0xB]
	cmp r0, 0
	beq _080944AC
	ldr r0, _080944B4
	movs r1, 0x3
	movs r2, 0xD
	bl MenuPrint
_080944AC:
	pop {r0}
	bx r0
	.align 2, 0
_080944B0: .4byte 0x02000000
_080944B4: .4byte gOtherText_ContestRecord
	thumb_func_end sub_8094498

	thumb_func_start sub_80944B8
sub_80944B8: @ 80944B8
	push {lr}
	sub sp, 0x8
	ldr r1, _080944E4
	ldrb r0, [r1, 0xB]
	cmp r0, 0
	beq _080944DE
	adds r0, r1, 0
	adds r0, 0x80
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	mov r0, sp
	movs r1, 0x1C
	movs r2, 0xD
	bl sub_8072B4C
_080944DE:
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_080944E4: .4byte 0x02000000
	thumb_func_end sub_80944B8

	thumb_func_start sub_80944E8
sub_80944E8: @ 80944E8
	push {lr}
	ldr r0, _08094500
	ldrb r0, [r0, 0xC]
	cmp r0, 0
	beq _080944FC
	ldr r0, _08094504
	movs r1, 0x3
	movs r2, 0xB
	bl MenuPrint
_080944FC:
	pop {r0}
	bx r0
	.align 2, 0
_08094500: .4byte 0x02000000
_08094504: .4byte gOtherText_MixingRecord
	thumb_func_end sub_80944E8

	thumb_func_start sub_8094508
sub_8094508: @ 8094508
	push {lr}
	sub sp, 0x8
	ldr r1, _08094534
	ldrb r0, [r1, 0xC]
	cmp r0, 0
	beq _0809452E
	adds r0, r1, 0
	adds r0, 0x82
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0x1
	movs r3, 0x5
	bl ConvertIntToDecimalStringN
	mov r0, sp
	movs r1, 0x1C
	movs r2, 0xB
	bl sub_8072B4C
_0809452E:
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_08094534: .4byte 0x02000000
	thumb_func_end sub_8094508

	thumb_func_start sub_8094538
sub_8094538: @ 8094538
	push {lr}
	ldr r0, _08094550
	ldrb r0, [r0, 0xD]
	cmp r0, 0
	beq _0809454C
	ldr r0, _08094554
	movs r1, 0x3
	movs r2, 0x9
	bl MenuPrint
_0809454C:
	pop {r0}
	bx r0
	.align 2, 0
_08094550: .4byte 0x02000000
_08094554: .4byte gOtherText_TradeRecord
	thumb_func_end sub_8094538

	thumb_func_start sub_8094558
sub_8094558: @ 8094558
	push {lr}
	sub sp, 0x8
	ldr r1, _08094584
	ldrb r0, [r1, 0xD]
	cmp r0, 0
	beq _0809457E
	adds r0, r1, 0
	adds r0, 0x84
	ldrh r1, [r0]
	mov r0, sp
	movs r2, 0x1
	movs r3, 0x5
	bl ConvertIntToDecimalStringN
	mov r0, sp
	movs r1, 0x1C
	movs r2, 0x9
	bl sub_8072B4C
_0809457E:
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_08094584: .4byte 0x02000000
	thumb_func_end sub_8094558

	thumb_func_start unref_sub_8094588
unref_sub_8094588: @ 8094588
	push {r4,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	lsls r1, 16
	lsrs r2, r1, 16
	ldr r4, _080945B4
	ldr r0, _080945B8
	ldrb r0, [r0, 0x8]
	cmp r0, 0x1
	bne _0809459E
	ldr r4, _080945BC
_0809459E:
	lsls r1, r3, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	adds r0, r4, 0
	bl MenuPrint
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080945B4: .4byte gOtherText_Boy
_080945B8: .4byte gSaveBlock2
_080945BC: .4byte gOtherText_Girl
	thumb_func_end unref_sub_8094588

	thumb_func_start sub_80945C0
sub_80945C0: @ 80945C0
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	movs r6, 0xC
	bl sub_809473C
	lsls r0, 24
	cmp r0, 0
	beq _080945D8
	movs r6, 0xD
_080945D8:
	ldr r0, _08094658
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _0809465C
	lsls r0, r5, 24
	lsrs r0, 24
	lsls r1, r4, 24
	lsrs r1, 24
	adds r2, r5, r6
	lsls r2, 24
	lsrs r2, 24
	adds r3, r4, 0
	adds r3, 0xB
	lsls r3, 24
	lsrs r3, 24
	bl MenuDrawTextWindow
	lsls r0, r5, 16
	movs r1, 0x80
	lsls r1, 9
	adds r0, r1
	lsrs r5, r0, 16
	asrs r0, 16
	lsls r1, r4, 16
	movs r2, 0x80
	lsls r2, 9
	adds r1, r2
	lsrs r4, r1, 16
	asrs r1, 16
	bl sub_8094778
	lsls r5, 16
	asrs r5, 16
	lsls r1, r4, 16
	asrs r4, r1, 16
	movs r0, 0x80
	lsls r0, 10
	adds r1, r0
	asrs r1, 16
	adds r0, r5, 0
	bl sub_8094740
	adds r1, r4, 0x4
	lsls r1, 16
	asrs r1, 16
	adds r0, r5, 0
	bl sub_80947B0
	adds r1, r4, 0x6
	lsls r1, 16
	asrs r1, 16
	adds r0, r5, 0
	bl sub_80947F8
	adds r4, 0x8
	lsls r4, 16
	asrs r4, 16
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_8094844
	b _080946C2
	.align 2, 0
_08094658: .4byte 0x00000801
_0809465C:
	lsls r0, r5, 24
	lsrs r0, 24
	lsls r1, r4, 24
	lsrs r1, 24
	adds r2, r5, r6
	lsls r2, 24
	lsrs r2, 24
	adds r3, r4, 0
	adds r3, 0x9
	lsls r3, 24
	lsrs r3, 24
	bl MenuDrawTextWindow
	lsls r0, r5, 16
	movs r1, 0x80
	lsls r1, 9
	adds r0, r1
	lsrs r5, r0, 16
	asrs r0, 16
	lsls r1, r4, 16
	movs r2, 0x80
	lsls r2, 9
	adds r1, r2
	lsrs r4, r1, 16
	asrs r1, 16
	bl sub_8094778
	lsls r5, 16
	asrs r5, 16
	lsls r1, r4, 16
	asrs r4, r1, 16
	movs r0, 0x80
	lsls r0, 10
	adds r1, r0
	asrs r1, 16
	adds r0, r5, 0
	bl sub_8094740
	adds r1, r4, 0x4
	lsls r1, 16
	asrs r1, 16
	adds r0, r5, 0
	bl sub_80947B0
	adds r4, 0x6
	lsls r4, 16
	asrs r4, 16
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_8094844
_080946C2:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80945C0

	thumb_func_start sub_80946C8
sub_80946C8: @ 80946C8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r4, r0, 16
	adds r7, r4, 0
	lsls r1, 16
	lsrs r5, r1, 16
	mov r8, r5
	movs r6, 0xC
	bl sub_809473C
	lsls r0, 24
	cmp r0, 0
	beq _080946E8
	movs r6, 0xD
_080946E8:
	ldr r0, _08094710
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _08094714
	lsls r0, r4, 24
	lsrs r0, 24
	lsls r1, r5, 24
	lsrs r1, 24
	adds r2, r4, r6
	lsls r2, 24
	lsrs r2, 24
	adds r3, r5, 0
	adds r3, 0xB
	lsls r3, 24
	lsrs r3, 24
	bl MenuZeroFillWindowRect
	b _08094730
	.align 2, 0
_08094710: .4byte 0x00000801
_08094714:
	lsls r0, r7, 24
	lsrs r0, 24
	mov r2, r8
	lsls r1, r2, 24
	lsrs r1, 24
	adds r2, r7, r6
	lsls r2, 24
	lsrs r2, 24
	mov r3, r8
	adds r3, 0x9
	lsls r3, 24
	lsrs r3, 24
	bl MenuZeroFillWindowRect
_08094730:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80946C8

	thumb_func_start sub_809473C
sub_809473C: @ 809473C
	movs r0, 0x1
	bx lr
	thumb_func_end sub_809473C

	thumb_func_start sub_8094740
sub_8094740: @ 8094740
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _08094770
	lsls r1, r4, 24
	lsrs r1, 24
	lsls r5, 24
	lsrs r5, 24
	adds r2, r5, 0
	bl MenuPrint
	ldr r0, _08094774
	adds r4, 0xC
	lsls r4, 24
	lsrs r4, 24
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_8072B4C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094770: .4byte gOtherText_Player
_08094774: .4byte gSaveBlock2
	thumb_func_end sub_8094740

	thumb_func_start sub_8094778
sub_8094778: @ 8094778
	push {r4,r5,lr}
	sub sp, 0x20
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	ldr r0, _080947AC
	ldrb r1, [r0, 0x14]
	mov r0, sp
	bl sub_80FBFF8
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	mov r0, sp
	adds r1, r4, 0
	adds r2, r5, 0
	bl MenuPrint
	add sp, 0x20
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080947AC: .4byte gMapHeader
	thumb_func_end sub_8094778

	thumb_func_start sub_80947B0
sub_80947B0: @ 80947B0
	push {r4,r5,lr}
	sub sp, 0x10
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _080947F4
	lsls r1, r4, 24
	lsrs r1, 24
	lsls r5, 24
	lsrs r5, 24
	adds r2, r5, 0
	bl MenuPrint
	bl GetBadgeCount
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r0, sp
	bl ConvertIntToDecimalString
	adds r4, 0xC
	lsls r4, 24
	lsrs r4, 24
	mov r0, sp
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_8072B4C
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080947F4: .4byte gOtherText_Badges
	thumb_func_end sub_80947B0

	thumb_func_start sub_80947F8
sub_80947F8: @ 80947F8
	push {r4,r5,lr}
	sub sp, 0x10
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _08094840
	lsls r1, r4, 24
	lsrs r1, 24
	lsls r5, 24
	lsrs r5, 24
	adds r2, r5, 0
	bl MenuPrint
	bl GetPokedexSeenCount
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	mov r0, sp
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r4, 0xC
	lsls r4, 24
	lsrs r4, 24
	mov r0, sp
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_8072B4C
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094840: .4byte gOtherText_Pokedex
	thumb_func_end sub_80947F8

	thumb_func_start sub_8094844
sub_8094844: @ 8094844
	push {r4,r5,lr}
	sub sp, 0x10
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _08094888
	lsls r1, r4, 24
	lsrs r1, 24
	lsls r5, 24
	lsrs r5, 24
	adds r2, r5, 0
	bl MenuPrint
	ldr r0, _0809488C
	ldrh r1, [r0, 0xE]
	ldrb r2, [r0, 0x10]
	mov r0, sp
	movs r3, 0x1
	bl FormatPlayTime
	adds r4, 0xC
	lsls r4, 24
	lsrs r4, 24
	mov r0, sp
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_8072B4C
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094888: .4byte gOtherText_PlayTime
_0809488C: .4byte gSaveBlock2
	thumb_func_end sub_8094844

	thumb_func_start GetBadgeCount
GetBadgeCount: @ 8094890
	push {r4,r5,lr}
	movs r5, 0
	ldr r4, _080948BC
_08094896:
	lsls r0, r4, 16
	lsrs r0, 16
	bl FlagGet
	lsls r0, 24
	cmp r0, 0
	beq _080948AA
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
_080948AA:
	adds r4, 0x1
	ldr r0, _080948C0
	cmp r4, r0
	ble _08094896
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080948BC: .4byte 0x00000807
_080948C0: .4byte 0x0000080e
	thumb_func_end GetBadgeCount

	thumb_func_start GetPokedexSeenCount
GetPokedexSeenCount: @ 80948C4
	push {lr}
	bl sub_806912C
	cmp r0, 0
	beq _080948D6
	movs r0, 0x1
	bl pokedex_count
	b _080948DC
_080948D6:
	movs r0, 0x1
	bl sub_8090F68
_080948DC:
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end GetPokedexSeenCount

	thumb_func_start FormatPlayTime
FormatPlayTime: @ 80948E4
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r4, r3, 0
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsrs r6, r2, 16
	lsls r4, 16
	lsrs r4, 16
	bl ConvertIntToDecimalString
	adds r5, r0, 0
	movs r0, 0
	strb r0, [r5]
	lsls r4, 16
	asrs r4, 16
	cmp r4, 0
	beq _0809490E
	movs r0, 0xF0
	strb r0, [r5, 0x1]
	b _08094910
_0809490E:
	strb r4, [r5, 0x1]
_08094910:
	movs r0, 0
	strb r0, [r5, 0x2]
	adds r5, 0x3
	adds r0, r5, 0
	adds r1, r6, 0
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end FormatPlayTime

	thumb_func_start unref_sub_8094928
unref_sub_8094928: @ 8094928
	push {lr}
	ldr r1, _08094938
	ldr r2, _0809493C
	bl memcpy
	pop {r0}
	bx r0
	.align 2, 0
_08094938: .4byte gPokemonStorage
_0809493C: .4byte 0x000083d0
	thumb_func_end unref_sub_8094928

	thumb_func_start unref_sub_8094940
unref_sub_8094940: @ 8094940
	push {lr}
	adds r1, r0, 0
	ldr r0, _08094950
	ldr r2, _08094954
	bl memcpy
	pop {r0}
	bx r0
	.align 2, 0
_08094950: .4byte gPokemonStorage
_08094954: .4byte 0x000083d0
	thumb_func_end unref_sub_8094940

	thumb_func_start sub_8094958
sub_8094958: @ 8094958
	push {r4,lr}
	ldr r4, _08094974
	bl sub_803FBBC
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_8094998
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094974: .4byte gUnknown_02038470
	thumb_func_end sub_8094958

	thumb_func_start sub_8094978
sub_8094978: @ 8094978
	push {lr}
	adds r2, r0, 0
	lsls r2, 24
	lsrs r2, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r0, r2, 1
	adds r0, r2
	ldr r3, _08094994
	adds r0, r3
	bl sub_8094A74
	pop {r0}
	bx r0
	.align 2, 0
_08094994: .4byte 0x0201606c
	thumb_func_end sub_8094978

	thumb_func_start sub_8094998
sub_8094998: @ 8094998
	push {r4-r6,lr}
	sub sp, 0x8
	adds r6, r0, 0
	lsls r1, 24
	lsrs r4, r1, 24
	bl sub_806B528
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080949CE
	cmp r4, 0
	beq _080949C0
	movs r0, 0x30
	strb r0, [r6]
	movs r0, 0x45
	strb r0, [r6, 0x1]
	movs r0, 0x12
	strb r0, [r6, 0x2]
	b _08094A68
_080949C0:
	movs r0, 0x3
	strb r0, [r6]
	movs r0, 0x12
	strb r0, [r6, 0x1]
	movs r0, 0x45
	strb r0, [r6, 0x2]
	b _08094A68
_080949CE:
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	bne _08094A0C
	movs r5, 0x1
	movs r0, 0
	bl battle_get_side_with_given_state
	mov r2, sp
	ldr r1, _08094A08
	lsls r0, 24
	lsrs r0, 23
	adds r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	movs r4, 0
	mov r1, sp
_080949F2:
	ldrb r0, [r1]
	cmp r4, r0
	beq _08094A00
	mov r2, sp
	adds r0, r2, r5
	strb r4, [r0]
	adds r5, 0x1
_08094A00:
	adds r4, 0x1
	cmp r4, 0x5
	ble _080949F2
	b _08094A50
	.align 2, 0
_08094A08: .4byte gUnknown_02024A6A
_08094A0C:
	movs r5, 0x2
	movs r0, 0
	bl battle_get_side_with_given_state
	mov r1, sp
	ldr r4, _08094A70
	lsls r0, 24
	lsrs r0, 23
	adds r0, r4
	ldrh r0, [r0]
	strb r0, [r1]
	movs r0, 0x2
	bl battle_get_side_with_given_state
	mov r1, sp
	lsls r0, 24
	lsrs r0, 23
	adds r0, r4
	ldrh r0, [r0]
	strb r0, [r1, 0x1]
	movs r4, 0
_08094A36:
	ldrb r0, [r1]
	cmp r4, r0
	beq _08094A4A
	ldrb r0, [r1, 0x1]
	cmp r4, r0
	beq _08094A4A
	mov r2, sp
	adds r0, r2, r5
	strb r4, [r0]
	adds r5, 0x1
_08094A4A:
	adds r4, 0x1
	cmp r4, 0x5
	ble _08094A36
_08094A50:
	movs r4, 0
	mov r3, sp
_08094A54:
	adds r0, r6, r4
	ldrb r1, [r3]
	lsls r1, 4
	ldrb r2, [r3, 0x1]
	orrs r1, r2
	strb r1, [r0]
	adds r3, 0x2
	adds r4, 0x1
	cmp r4, 0x2
	ble _08094A54
_08094A68:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08094A70: .4byte gUnknown_02024A6A
	thumb_func_end sub_8094998

	thumb_func_start sub_8094A74
sub_8094A74: @ 8094A74
	push {r4-r7,lr}
	sub sp, 0x8
	adds r5, r0, 0
	adds r0, r2, 0
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r0, 24
	lsrs r0, 24
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _08094A9C
	movs r0, 0
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x2
	b _08094AA8
_08094A9C:
	movs r0, 0x1
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x3
_08094AA8:
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r6, r0, 24
	bl sub_806B528
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08094ADC
	cmp r7, 0
	beq _08094ACE
	movs r0, 0x30
	strb r0, [r5]
	movs r0, 0x45
	strb r0, [r5, 0x1]
	movs r0, 0x12
	strb r0, [r5, 0x2]
	b _08094B5E
_08094ACE:
	movs r0, 0x3
	strb r0, [r5]
	movs r0, 0x12
	strb r0, [r5, 0x1]
	movs r0, 0x45
	strb r0, [r5, 0x2]
	b _08094B5E
_08094ADC:
	bl battle_type_is_double
	lsls r0, 24
	cmp r0, 0
	bne _08094B14
	movs r3, 0x1
	mov r2, sp
	ldr r1, _08094B10
	lsls r0, r4, 1
	adds r0, r1
	ldrh r0, [r0]
	strb r0, [r2]
	movs r4, 0
	mov r1, sp
_08094AF8:
	ldrb r0, [r1]
	cmp r4, r0
	beq _08094B06
	mov r2, sp
	adds r0, r2, r3
	strb r4, [r0]
	adds r3, 0x1
_08094B06:
	adds r4, 0x1
	cmp r4, 0x5
	ble _08094AF8
	b _08094B46
	.align 2, 0
_08094B10: .4byte gUnknown_02024A6A
_08094B14:
	movs r3, 0x2
	mov r1, sp
	ldr r2, _08094B68
	lsls r0, r4, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	lsls r0, r6, 1
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1, 0x1]
	movs r4, 0
_08094B2C:
	ldrb r0, [r1]
	cmp r4, r0
	beq _08094B40
	ldrb r0, [r1, 0x1]
	cmp r4, r0
	beq _08094B40
	mov r2, sp
	adds r0, r2, r3
	strb r4, [r0]
	adds r3, 0x1
_08094B40:
	adds r4, 0x1
	cmp r4, 0x5
	ble _08094B2C
_08094B46:
	movs r4, 0
	mov r3, sp
_08094B4A:
	adds r0, r5, r4
	ldrb r1, [r3]
	lsls r1, 4
	ldrb r2, [r3, 0x1]
	orrs r1, r2
	strb r1, [r0]
	adds r3, 0x2
	adds r4, 0x1
	cmp r4, 0x2
	ble _08094B4A
_08094B5E:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094B68: .4byte gUnknown_02024A6A
	thumb_func_end sub_8094A74

	thumb_func_start sub_8094B6C
sub_8094B6C: @ 8094B6C
	push {r4-r7,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	movs r7, 0
	bl sub_806B528
	lsls r0, 24
	cmp r0, 0
	beq _08094C16
	lsls r0, r4, 1
	adds r0, r4
	ldr r1, _08094BCC
	adds r4, r0, r1
	movs r2, 0
	add r6, sp
	mov r12, r6
	movs r6, 0xF
	mov r3, sp
_08094B9A:
	adds r1, r4, r2
	ldrb r0, [r1]
	lsrs r0, 4
	strb r0, [r3]
	adds r3, 0x1
	ldrb r1, [r1]
	adds r0, r6, 0
	ands r0, r1
	strb r0, [r3]
	adds r3, 0x1
	adds r2, 0x1
	cmp r2, 0x2
	ble _08094B9A
	mov r0, r12
	ldrb r3, [r0]
	movs r2, 0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, r5
	bne _08094BD0
	mov r0, sp
	ldrb r7, [r0]
	strb r3, [r0]
	b _08094BE4
	.align 2, 0
_08094BCC: .4byte 0x0201606c
_08094BD0:
	adds r2, 0x1
	cmp r2, 0x5
	bgt _08094BE4
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, r5
	bne _08094BD0
	adds r7, r0, 0
	strb r3, [r1]
_08094BE4:
	cmp r2, 0x6
	beq _08094C16
	mov r0, r12
	strb r7, [r0]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, 4
	mov r1, sp
	ldrb r1, [r1, 0x1]
	orrs r0, r1
	strb r0, [r4]
	mov r0, sp
	ldrb r0, [r0, 0x2]
	lsls r0, 4
	mov r1, sp
	ldrb r1, [r1, 0x3]
	orrs r0, r1
	strb r0, [r4, 0x1]
	mov r0, sp
	ldrb r0, [r0, 0x4]
	lsls r0, 4
	mov r1, sp
	ldrb r1, [r1, 0x5]
	orrs r0, r1
	strb r0, [r4, 0x2]
_08094C16:
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8094B6C

	thumb_func_start sub_8094C20
sub_8094C20: @ 8094C20
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	movs r1, 0x1
	ands r1, r2
	lsrs r2, r0, 25
	cmp r1, 0
	beq _08094C40
	ldr r0, _08094C3C
	adds r0, r2, r0
	ldrb r0, [r0]
	movs r1, 0xF
	ands r1, r0
	b _08094C48
	.align 2, 0
_08094C3C: .4byte gUnknown_02038470
_08094C40:
	ldr r0, _08094C50
	adds r0, r2, r0
	ldrb r0, [r0]
	lsrs r1, r0, 4
_08094C48:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_08094C50: .4byte gUnknown_02038470
	thumb_func_end sub_8094C20

	thumb_func_start sub_8094C54
sub_8094C54: @ 8094C54
	push {r4,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	movs r1, 0x1
	ands r1, r3
	lsrs r3, r0, 25
	cmp r1, 0
	beq _08094C7C
	ldr r0, _08094C78
	adds r0, r3, r0
	ldrb r2, [r0]
	movs r1, 0xF0
	ands r1, r2
	orrs r1, r4
	strb r1, [r0]
	b _08094C8C
	.align 2, 0
_08094C78: .4byte gUnknown_02038470
_08094C7C:
	ldr r2, _08094C94
	adds r2, r3, r2
	ldrb r1, [r2]
	movs r0, 0xF
	ands r0, r1
	lsls r1, r4, 4
	orrs r0, r1
	strb r0, [r2]
_08094C8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08094C94: .4byte gUnknown_02038470
	thumb_func_end sub_8094C54

	thumb_func_start sub_8094C98
sub_8094C98: @ 8094C98
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r6, r1, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	adds r0, r5, 0
	bl sub_8094C20
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r6, 0
	bl sub_8094C20
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl sub_8094C54
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_8094C54
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_8094C98

	thumb_func_start pokemon_order_func
pokemon_order_func: @ 8094CD4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r3, 0
	movs r2, 0
	ldr r5, _08094CFC
_08094CE0:
	adds r0, r3, r5
	ldrb r1, [r0]
	lsrs r0, r1, 4
	cmp r0, r4
	beq _08094CF8
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	movs r0, 0xF
	ands r0, r1
	cmp r0, r4
	bne _08094D00
_08094CF8:
	adds r0, r2, 0
	b _08094D12
	.align 2, 0
_08094CFC: .4byte gUnknown_02038470
_08094D00:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x2
	bls _08094CE0
	movs r0, 0
_08094D12:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end pokemon_order_func

	thumb_func_start pokemon_change_order
pokemon_change_order: @ 8094D18
	push {r4,r5,lr}
	ldr r0, _08094D58
	ldr r1, _08094D5C
	movs r2, 0x96
	lsls r2, 2
	bl memcpy
	movs r4, 0
	movs r5, 0x64
_08094D2A:
	adds r0, r4, 0
	bl pokemon_order_func
	lsls r0, 24
	lsrs r0, 24
	muls r0, r5
	ldr r1, _08094D5C
	adds r0, r1
	adds r1, r4, 0
	muls r1, r5
	ldr r2, _08094D58
	adds r1, r2
	movs r2, 0x64
	bl memcpy
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _08094D2A
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094D58: .4byte 0x0201b000
_08094D5C: .4byte gPlayerParty
	thumb_func_end pokemon_change_order

	thumb_func_start sub_8094D60
sub_8094D60: @ 8094D60
	push {r4,r5,lr}
	ldr r4, _08094DA8
	add sp, r4
	ldr r1, _08094DAC
	movs r2, 0x96
	lsls r2, 2
	mov r0, sp
	bl memcpy
	movs r4, 0
	movs r5, 0x64
_08094D76:
	adds r0, r4, 0
	bl sub_8094C20
	lsls r0, 24
	lsrs r0, 24
	muls r0, r5
	ldr r1, _08094DAC
	adds r0, r1
	adds r1, r4, 0
	muls r1, r5
	add r1, sp
	movs r2, 0x64
	bl memcpy
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _08094D76
	movs r3, 0x96
	lsls r3, 2
	add sp, r3
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094DA8: .4byte 0xfffffda8
_08094DAC: .4byte gPlayerParty
	thumb_func_end sub_8094D60

	thumb_func_start unref_sub_8094DB0
unref_sub_8094DB0: @ 8094DB0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r6, 0x1
	movs r7, 0x64
	ldr r0, _08094E08
	mov r8, r0
_08094DBE:
	adds r0, r6, 0
	bl sub_8094C20
	lsls r0, 24
	lsrs r0, 24
	muls r0, r7
	mov r1, r8
	adds r5, r0, r1
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08094E0C
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08094E0C
	movs r0, 0
	bl sub_8094C20
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	adds r1, r6, 0
	bl sub_8094C98
	adds r0, r4, 0
	muls r0, r7
	add r0, r8
	adds r1, r5, 0
	bl sub_806E6F0
	b _08094E16
	.align 2, 0
_08094E08: .4byte gPlayerParty
_08094E0C:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x5
	bls _08094DBE
_08094E16:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_8094DB0

	thumb_func_start sub_8094E20
sub_8094E20: @ 8094E20
	push {lr}
	ldr r3, _08094E44
	ldrb r1, [r3, 0x8]
	movs r2, 0x80
	orrs r1, r2
	strb r1, [r3, 0x8]
	ldr r1, _08094E48
	strb r0, [r1]
	bl nullsub_14
	bl pokemon_change_order
	movs r0, 0x1
	movs r1, 0xFF
	bl sub_806AFAC
	pop {r0}
	bx r0
	.align 2, 0
_08094E44: .4byte gPaletteFade
_08094E48: .4byte gUnknown_02038473
	thumb_func_end sub_8094E20

	thumb_func_start sub_8094E4C
sub_8094E4C: @ 8094E4C
	push {lr}
	movs r0, 0x3
	bl sub_8094E20
	pop {r0}
	bx r0
	thumb_func_end sub_8094E4C

	thumb_func_start sub_8094E58
sub_8094E58: @ 8094E58
	push {r4,r5,lr}
	ldr r1, _08094E78
	movs r2, 0x99
	lsls r2, 2
	adds r0, r1, r2
	movs r3, 0
	ldrsh r0, [r0, r3]
	adds r4, r1, 0
	cmp r0, 0xA
	bls _08094E6E
	b _08095048
_08094E6E:
	lsls r0, 2
	ldr r1, _08094E7C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08094E78: .4byte 0x0201b000
_08094E7C: .4byte _08094E80
	.align 2, 0
_08094E80:
	.4byte _08094EAC
	.4byte _08094F28
	.4byte _08094F3C
	.4byte _08094F4A
	.4byte _08094F6C
	.4byte _08094F80
	.4byte _08094F94
	.4byte _08094FA8
	.4byte _08094FBC
	.4byte _08094FD0
	.4byte _08095000
_08094EAC:
	bl sub_806B528
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08094EDC
	ldr r1, _08094ED4
	ldr r0, _08094ED8
	adds r4, r1, r0
	ldrh r2, [r4]
	movs r3, 0
	ldrsh r0, [r4, r3]
	cmp r0, 0x6
	bne _08094EEC
	movs r0, 0
	strh r0, [r4]
	movs r3, 0x99
	lsls r3, 2
	adds r1, r3
	b _08094FEC
	.align 2, 0
_08094ED4: .4byte 0x0201b000
_08094ED8: .4byte 0x00000266
_08094EDC:
	ldr r1, _08094F10
	ldr r0, _08094F14
	adds r4, r1, r0
	ldrh r2, [r4]
	movs r3, 0
	ldrsh r0, [r4, r3]
	cmp r0, 0x5
	bgt _08094F1C
_08094EEC:
	movs r3, 0x98
	lsls r3, 2
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r1, r2, 24
	lsrs r1, 24
	movs r2, 0
	ldrsh r3, [r4, r2]
	movs r2, 0x64
	muls r2, r3
	ldr r3, _08094F18
	adds r2, r3
	bl sub_806D90C
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	b _08095048
	.align 2, 0
_08094F10: .4byte 0x0201b000
_08094F14: .4byte 0x00000266
_08094F18: .4byte gPlayerParty
_08094F1C:
	movs r0, 0
	strh r0, [r4]
	movs r3, 0x99
	lsls r3, 2
	adds r1, r3
	b _08094FEC
_08094F28:
	bl sub_806DA98
	ldr r1, _08094F38
	movs r0, 0x99
	lsls r0, 2
	adds r1, r0
	b _08094FEC
	.align 2, 0
_08094F38: .4byte 0x0201b000
_08094F3C:
	movs r1, 0x98
	lsls r1, 2
	adds r0, r4, r1
	ldrb r0, [r0]
	bl sub_806DC34
	b _08094FE6
_08094F4A:
	movs r3, 0x98
	lsls r3, 2
	adds r0, r4, r3
	ldrb r0, [r0]
	ldr r1, _08094F68
	adds r5, r4, r1
	ldrb r1, [r5]
	bl sub_806BD58
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _08094FE2
	b _08094FF8
	.align 2, 0
_08094F68: .4byte 0x00000266
_08094F6C:
	bl sub_806E334
	ldr r1, _08094F7C
	movs r3, 0x99
	lsls r3, 2
	adds r1, r3
	b _08094FEC
	.align 2, 0
_08094F7C: .4byte 0x0201b000
_08094F80:
	bl sub_806E0C4
	ldr r1, _08094F90
	movs r0, 0x99
	lsls r0, 2
	adds r1, r0
	b _08094FEC
	.align 2, 0
_08094F90: .4byte 0x0201b000
_08094F94:
	bl sub_806E53C
	ldr r1, _08094FA4
	movs r2, 0x99
	lsls r2, 2
	adds r1, r2
	b _08094FEC
	.align 2, 0
_08094FA4: .4byte 0x0201b000
_08094FA8:
	bl nullsub_13
	ldr r1, _08094FB8
	movs r3, 0x99
	lsls r3, 2
	adds r1, r3
	b _08094FEC
	.align 2, 0
_08094FB8: .4byte 0x0201b000
_08094FBC:
	bl sub_806E6C8
	ldr r1, _08094FCC
	movs r0, 0x99
	lsls r0, 2
	adds r1, r0
	b _08094FEC
	.align 2, 0
_08094FCC: .4byte 0x0201b000
_08094FD0:
	ldr r1, _08094FF4
	adds r5, r4, r1
	ldrb r0, [r5]
	bl sub_806B58C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08094FF8
_08094FE2:
	movs r0, 0
	strh r0, [r5]
_08094FE6:
	movs r2, 0x99
	lsls r2, 2
	adds r1, r4, r2
_08094FEC:
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _08095048
	.align 2, 0
_08094FF4: .4byte 0x00000266
_08094FF8:
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
	b _08095048
_08095000:
	ldr r0, _08095024
	ldrb r4, [r0]
	cmp r4, 0x3
	bne _0809503C
	ldr r0, _08095028
	ldrh r0, [r0]
	bl sub_8070E48
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xA
	bne _08095034
	ldr r0, _0809502C
	ldr r3, _08095030
	adds r0, r3
	movs r1, 0xFF
	strb r1, [r0]
	b _0809503C
	.align 2, 0
_08095024: .4byte gUnknown_02038473
_08095028: .4byte word_203855E
_0809502C: .4byte 0x0201b000
_08095030: .4byte 0x00000259
_08095034:
	ldr r0, _08095040
	ldr r1, _08095044
	adds r0, r1
	strb r4, [r0]
_0809503C:
	movs r0, 0x1
	b _0809504A
	.align 2, 0
_08095040: .4byte 0x0201b000
_08095044: .4byte 0x00000259
_08095048:
	movs r0, 0
_0809504A:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8094E58

	thumb_func_start sub_8095050
sub_8095050: @ 8095050
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0809508C
	adds r0, r1
	movs r1, 0x2D
	bl GetMonData
	adds r5, r0, 0
	cmp r5, 0
	bne _080950C8
	ldr r0, _08095090
	ldrb r4, [r0]
	cmp r4, 0x1
	bne _0809509C
	ldr r3, _08095094
	ldr r2, _08095098
	movs r0, 0x98
	lsls r0, 2
	adds r2, r0
	ldrb r1, [r2]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r3
	b _080950DE
	.align 2, 0
_0809508C: .4byte gPlayerParty
_08095090: .4byte gUnknown_02038473
_08095094: .4byte gTasks
_08095098: .4byte 0x0201b000
_0809509C:
	ldr r3, _080950C0
	ldr r2, _080950C4
	movs r0, 0x98
	lsls r0, 2
	adds r2, r0
	ldrb r1, [r2]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r3
	strh r5, [r0, 0x10]
	ldrb r1, [r2]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r3
	strh r5, [r0, 0x12]
	b _080950EC
	.align 2, 0
_080950C0: .4byte gTasks
_080950C4: .4byte 0x0201b000
_080950C8:
	ldr r3, _08095108
	ldr r2, _0809510C
	movs r0, 0x98
	lsls r0, 2
	adds r2, r0
	ldrb r1, [r2]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r3
	movs r4, 0x2
_080950DE:
	strh r4, [r0, 0x10]
	ldrb r1, [r2]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r3
	strh r4, [r0, 0x12]
_080950EC:
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r3
	ldrb r0, [r0, 0x10]
	ldr r1, _08095110
	ldr r2, _08095114
	movs r3, 0
	bl sub_806E750
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095108: .4byte gTasks
_0809510C: .4byte 0x0201b000
_08095110: .4byte gUnknown_083B5FF4
_08095114: .4byte gUnknown_083B5FCC
	thumb_func_end sub_8095050

	thumb_func_start sub_8095118
sub_8095118: @ 8095118
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _08095150
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0809512C
	b _08095268
_0809512C:
	ldr r0, _08095154
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _08095164
	ldr r5, _08095158
	ldrh r0, [r5]
	bl sub_8070E48
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xA
	bne _08095164
	ldr r0, _0809515C
	ldrh r1, [r5]
	ldr r2, _08095160
	ldr r3, [r0]
	b _080951AA
	.align 2, 0
_08095150: .4byte gPaletteFade
_08095154: .4byte gUnknown_02038473
_08095158: .4byte word_203855E
_0809515C: .4byte gUnknown_03004AE4
_08095160: .4byte sub_80952E4
_08095164:
	adds r0, r4, 0
	bl sub_806BD80
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1
	beq _08095178
	cmp r0, 0x2
	beq _08095214
	b _08095268
_08095178:
	ldr r0, _080951B4
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _080951C8
	adds r0, r4, 0
	bl sub_806CA38
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x64
	muls r0, r1
	ldr r1, _080951B8
	adds r0, r1
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0809521C
	bl sub_806D5A4
	ldr r3, _080951BC
	ldr r0, _080951C0
	ldrh r1, [r0]
	ldr r2, _080951C4
	ldr r3, [r3]
_080951AA:
	adds r0, r4, 0
	bl _call_via_r3
	b _08095268
	.align 2, 0
_080951B4: .4byte gUnknown_02038473
_080951B8: .4byte gPlayerParty
_080951BC: .4byte gUnknown_03004AE4
_080951C0: .4byte word_203855E
_080951C4: .4byte sub_80952E4
_080951C8:
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_806CA38
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x64
	muls r0, r1
	ldr r1, _08095204
	adds r0, r1
	ldr r1, _08095208
	bl GetMonNickname
	adds r0, r4, 0
	bl sub_806CA38
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_8095050
	ldr r1, _0809520C
	ldr r2, _08095210
	adds r0, r4, 0
	bl SetTaskFuncWithFollowupFunc
	b _08095268
	.align 2, 0
_08095204: .4byte gPlayerParty
_08095208: .4byte gStringVar1
_0809520C: .4byte sub_8095408
_08095210: .4byte sub_8095118
_08095214:
	ldr r5, _08095224
	ldrb r0, [r5]
	cmp r0, 0x1
	bne _08095228
_0809521C:
	movs r0, 0x20
	bl PlaySE
	b _08095268
	.align 2, 0
_08095224: .4byte gUnknown_02038473
_08095228:
	movs r0, 0x5
	bl PlaySE
	ldrb r0, [r5]
	cmp r0, 0x3
	bne _08095254
	ldr r1, _08095248
	movs r0, 0
	strb r0, [r1]
	ldr r1, _0809524C
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095250
	b _08095266
	.align 2, 0
_08095248: .4byte gUnknown_0202E8F4
_0809524C: .4byte gTasks
_08095250: .4byte sub_80952E4
_08095254:
	ldr r1, _08095270
	movs r0, 0
	strb r0, [r1]
	ldr r1, _08095274
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095278
_08095266:
	str r1, [r0]
_08095268:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08095270: .4byte gUnknown_0202E8F4
_08095274: .4byte gTasks
_08095278: .4byte sub_809527C
	thumb_func_end sub_8095118

	thumb_func_start sub_809527C
sub_809527C: @ 809527C
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _080952AC
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080952B0
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080952AC: .4byte gTasks
_080952B0: .4byte sub_80952B4
	thumb_func_end sub_809527C

	thumb_func_start sub_80952B4
sub_80952B4: @ 80952B4
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080952DC
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080952D6
	bl sub_8094D60
	adds r0, r4, 0
	bl DestroyTask
	ldr r0, _080952E0
	bl SetMainCallback2
_080952D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080952DC: .4byte gPaletteFade
_080952E0: .4byte sub_802E414
	thumb_func_end sub_80952B4

	thumb_func_start sub_80952E4
sub_80952E4: @ 80952E4
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080952FC
	ldrb r1, [r0]
	cmp r1, 0
	beq _08095300
	adds r0, r4, 0
	bl sub_809527C
	b _0809531E
	.align 2, 0
_080952FC: .4byte gUnknown_0202E8F4
_08095300:
	movs r0, 0x1
	negs r0, r0
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _08095328
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809532C
	str r1, [r0]
_0809531E:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08095328: .4byte gTasks
_0809532C: .4byte sub_8095330
	thumb_func_end sub_80952E4

	thumb_func_start sub_8095330
sub_8095330: @ 8095330
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _08095358
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08095350
	bl sub_8094D60
	adds r0, r4, 0
	bl DestroyTask
	bl sub_80A6DCC
_08095350:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08095358: .4byte gPaletteFade
	thumb_func_end sub_8095330

	thumb_func_start sub_809535C
sub_809535C: @ 809535C
	push {lr}
	ldr r2, _08095380
	ldrb r0, [r2, 0x8]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x8]
	ldr r2, _08095384
	movs r0, 0x1
	movs r1, 0xFF
	movs r3, 0x5
	bl sub_806AF4C
	ldr r0, _08095388
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_08095380: .4byte gPaletteFade
_08095384: .4byte sub_8095118
_08095388: .4byte sub_809538C
	thumb_func_end sub_809535C

	thumb_func_start sub_809538C
sub_809538C: @ 809538C
	push {r4,r5,lr}
	ldr r4, _080953D8
	ldr r5, _080953DC
_08095392:
	bl sub_806B124
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080953F4
	ldrb r0, [r4]
	ldrb r1, [r5]
	bl sub_806C994
	ldrb r0, [r4]
	movs r1, 0
	bl sub_806BF74
	ldrb r1, [r5]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _080953E0
	adds r0, r1
	ldr r1, _080953E4
	bl GetMonNickname
	ldrb r0, [r4]
	ldrb r1, [r5]
	bl sub_8095050
	ldrb r0, [r4]
	ldr r1, _080953E8
	ldr r2, _080953EC
	bl SetTaskFuncWithFollowupFunc
	ldr r0, _080953F0
	bl SetMainCallback2
	b _08095400
	.align 2, 0
_080953D8: .4byte 0x0201b260
_080953DC: .4byte gUnknown_020384F0
_080953E0: .4byte gPlayerParty
_080953E4: .4byte gStringVar1
_080953E8: .4byte sub_8095408
_080953EC: .4byte sub_8095118
_080953F0: .4byte sub_806AEDC
_080953F4:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08095392
_08095400:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_809538C

	thumb_func_start sub_8095408
sub_8095408: @ 8095408
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	adds r4, r7, 0
	ldr r0, _0809543C
	ldrb r1, [r0, 0x7]
	movs r3, 0x80
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _080954B8
	ldr r2, _08095440
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08095444
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursor
	b _080954B8
	.align 2, 0
_0809543C: .4byte gPaletteFade
_08095440: .4byte gMain
_08095444:
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0809545A
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	bl MoveMenuCursor
	b _080954B8
_0809545A:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080954A4
	movs r0, 0x5
	bl PlaySE
	ldr r1, _08095498
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	ldrb r4, [r0, 0x10]
	ldr r5, _0809549C
	ldr r6, _080954A0
	bl GetMenuCursorPos
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	adds r0, r4, 0
	adds r1, r5, 0
	adds r2, r6, 0
	bl sub_806E81C
	adds r1, r0, 0
	adds r0, r7, 0
	bl _call_via_r1
	b _080954B8
	.align 2, 0
_08095498: .4byte gTasks
_0809549C: .4byte gUnknown_083B5FF4
_080954A0: .4byte gUnknown_083B5FCC
_080954A4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080954B8
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_80958C4
_080954B8:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8095408

	thumb_func_start sub_80954C0
sub_80954C0: @ 80954C0
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _080954D8
	ldrb r0, [r0]
	cmp r0, 0
	bne _080954D4
	adds r0, r1, 0
	bl sub_80958C4
_080954D4:
	pop {r0}
	bx r0
	.align 2, 0
_080954D8: .4byte gUnknown_0202E8F6
	thumb_func_end sub_80954C0

	thumb_func_start sub_80954DC
sub_80954DC: @ 80954DC
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl sub_806CA38
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _0809552C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08095522
	adds r0, r4, 0
	bl DestroyTask
	ldr r0, _08095530
	ldr r1, _08095534
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, _08095538
	ldr r1, _0809553C
	ldrb r2, [r1]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldr r3, _08095540
	movs r1, 0x4
	str r1, [sp]
	adds r1, r5, 0
	bl sub_809D8BC
_08095522:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809552C: .4byte gPaletteFade
_08095530: .4byte 0x0201b000
_08095534: .4byte 0x00000262
_08095538: .4byte gPlayerParty
_0809553C: .4byte gPlayerPartyCount
_08095540: .4byte sub_809535C
	thumb_func_end sub_80954DC

	thumb_func_start sub_8095544
sub_8095544: @ 8095544
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_806CA38
	ldr r1, _0809557C
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095580
	str r1, [r0]
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809557C: .4byte gTasks
_08095580: .4byte sub_80954DC
	thumb_func_end sub_8095544

	thumb_func_start sub_8095584
sub_8095584: @ 8095584
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080955F8
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x10]
	ldr r1, _080955FC
	bl sub_806E7D0
	adds r0, r6, 0
	bl sub_806CA38
	lsls r0, 24
	lsrs r5, r0, 24
	bl sub_806B528
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08095610
	cmp r5, 0x1
	beq _080955C6
	cmp r5, 0x4
	beq _080955C6
	cmp r5, 0x5
	bne _08095610
_080955C6:
	bl sub_806D5A4
	ldr r4, _08095600
	bl sub_8040D08
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	ldr r4, _08095604
	ldr r1, _08095608
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _080955F8
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809560C
	b _0809589A
	.align 2, 0
_080955F8: .4byte gTasks
_080955FC: .4byte gUnknown_083B5FF4
_08095600: .4byte gStringVar1
_08095604: .4byte gStringVar4
_08095608: .4byte gOtherText_CantSwitchPokeWithYours
_0809560C: .4byte sub_80954C0
_08095610:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08095654
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _0809566C
	bl sub_806D5A4
	ldr r1, _08095658
	adds r0, r4, 0
	bl GetMonNickname
	ldr r4, _0809565C
	ldr r1, _08095660
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095664
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095668
	b _0809589A
	.align 2, 0
_08095654: .4byte gPlayerParty
_08095658: .4byte gStringVar1
_0809565C: .4byte gStringVar4
_08095660: .4byte gOtherText_NoEnergyLeft
_08095664: .4byte gTasks
_08095668: .4byte sub_80954C0
_0809566C:
	movs r4, 0
	ldr r0, _08095678
	lsls r1, r6, 2
	mov r8, r1
	b _080956A8
	.align 2, 0
_08095678: .4byte gUnknown_02024A68
_0809567C:
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080956A0
	adds r0, r5, 0
	bl sub_8094C20
	lsls r0, 24
	ldr r2, _080956EC
	lsls r1, r4, 1
	adds r1, r2
	lsrs r0, 24
	ldrh r1, [r1]
	cmp r0, r1
	bne _080956A0
	b _08095808
_080956A0:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080956F0
_080956A8:
	ldrb r0, [r0]
	cmp r4, r0
	bcc _0809567C
	movs r2, 0x64
	mov r9, r2
	mov r0, r9
	muls r0, r5
	ldr r1, _080956F4
	mov r10, r1
	adds r7, r0, r1
	adds r0, r7, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	beq _08095708
	bl sub_806D5A4
	ldr r4, _080956F8
	ldr r1, _080956FC
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095700
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095704
	b _0809589A
	.align 2, 0
_080956EC: .4byte gUnknown_02024A6A
_080956F0: .4byte gUnknown_02024A68
_080956F4: .4byte gPlayerParty
_080956F8: .4byte gStringVar4
_080956FC: .4byte gOtherText_EGGCantBattle
_08095700: .4byte gTasks
_08095704: .4byte sub_80954C0
_08095708:
	adds r0, r5, 0
	bl sub_8094C20
	ldr r1, _0809574C
	ldr r2, _08095750
	adds r1, r2
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _08095768
	bl sub_806D5A4
	ldr r1, _08095754
	adds r0, r7, 0
	bl GetMonNickname
	ldr r4, _08095758
	ldr r1, _0809575C
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095760
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095764
	b _0809589A
	.align 2, 0
_0809574C: .4byte 0x02000000
_08095750: .4byte 0x0001609d
_08095754: .4byte gStringVar1
_08095758: .4byte gStringVar4
_0809575C: .4byte gOtherText_AlreadySelected
_08095760: .4byte gTasks
_08095764: .4byte sub_80954C0
_08095768:
	ldr r0, _08095790
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _080957A0
	bl sub_806D5A4
	bl sub_8040B8C
	ldr r0, _08095794
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095798
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809579C
	b _0809589A
	.align 2, 0
_08095790: .4byte gUnknown_02038473
_08095794: .4byte gStringVar4
_08095798: .4byte gTasks
_0809579C: .4byte sub_80954C0
_080957A0:
	cmp r0, 0x2
	bne _08095854
	ldr r0, _080957EC
	ldrb r4, [r0]
	bl sub_806D5A4
	ldr r0, _080957F0
	lsls r4, 1
	adds r4, r0
	ldrb r0, [r4]
	bl pokemon_order_func
	lsls r0, 24
	lsrs r0, 24
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r10
	ldr r1, _080957F4
	bl GetMonNickname
	ldr r4, _080957F8
	ldr r1, _080957FC
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095800
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095804
	b _0809589A
	.align 2, 0
_080957EC: .4byte gUnknown_02024E6C
_080957F0: .4byte gUnknown_02024A6A
_080957F4: .4byte gStringVar1
_080957F8: .4byte gStringVar4
_080957FC: .4byte gOtherText_CantBeSwitched
_08095800: .4byte gTasks
_08095804: .4byte sub_80954C0
_08095808:
	bl sub_806D5A4
	movs r0, 0x64
	muls r0, r5
	ldr r1, _0809583C
	adds r0, r1
	ldr r1, _08095840
	bl GetMonNickname
	ldr r4, _08095844
	ldr r1, _08095848
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _0809584C
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095850
	b _0809589A
	.align 2, 0
_0809583C: .4byte gPlayerParty
_08095840: .4byte gStringVar1
_08095844: .4byte gStringVar4
_08095848: .4byte gOtherText_AlreadyBattle
_0809584C: .4byte gTasks
_08095850: .4byte sub_80954C0
_08095854:
	adds r0, r5, 0
	bl sub_8094C20
	ldr r1, _080958AC
	strb r0, [r1]
	ldr r1, _080958B0
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, _080958B4
	ldr r0, _080958B8
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8094C98
	mov r0, r9
	muls r0, r4
	add r0, r10
	adds r1, r7, 0
	bl sub_806E6F0
	ldr r1, _080958BC
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _080958C0
_0809589A:
	str r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080958AC: .4byte gUnknown_0202E8F5
_080958B0: .4byte gUnknown_0202E8F4
_080958B4: .4byte gUnknown_02024A6A
_080958B8: .4byte gUnknown_02024E6C
_080958BC: .4byte gTasks
_080958C0: .4byte sub_809527C
	thumb_func_end sub_8095584

	thumb_func_start sub_80958C4
sub_80958C4: @ 80958C4
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	bl sub_8072DEC
	ldr r0, _080958FC
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	ldrb r0, [r4, 0x10]
	ldr r1, _08095900
	bl sub_806E7D0
	ldrh r0, [r4, 0x12]
	strh r0, [r4, 0x10]
	movs r0, 0
	movs r1, 0
	bl sub_806D538
	adds r0, r5, 0
	bl SwitchTaskToFollowupFunc
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080958FC: .4byte gTasks
_08095900: .4byte gUnknown_083B5FF4
	thumb_func_end sub_80958C4

	thumb_func_start sub_8095904
sub_8095904: @ 8095904
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	str r0, [sp]
	adds r7, r1, 0
	adds r4, r2, 0
	ldr r0, [sp, 0x3C]
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 16
	lsrs r3, 16
	str r3, [sp, 0x4]
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x8]
	ldr r0, [sp]
	bl StringLength
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r4, 0
	bne _08095988
	movs r5, 0
	cmp r5, r8
	bcs _08095A2E
_0809593E:
	ldr r1, [sp]
	adds r0, r1, r5
	ldrb r2, [r0]
	ldr r0, _08095980
	ands r0, r2
	lsls r0, 6
	movs r1, 0xF
	ands r2, r1
	lsls r2, 5
	adds r0, r2
	ldr r1, _08095984
	adds r4, r0, r1
	adds r0, r4, 0
	adds r1, r7, 0
	movs r2, 0x10
	bl CpuSet
	movs r2, 0x80
	lsls r2, 2
	adds r0, r4, r2
	ldr r3, [sp, 0x4]
	adds r1, r7, r3
	movs r2, 0x10
	bl CpuSet
	adds r7, 0x20
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, r8
	bcc _0809593E
	b _08095A2E
	.align 2, 0
_08095980: .4byte 0x0000fff0
_08095984: .4byte gFont3LatinGlyphs
_08095988:
	movs r0, 0
	mov r9, r0
	ldr r1, [sp, 0x8]
	lsls r0, r1, 28
	lsrs r0, 24
	str r0, [sp, 0xC]
	mov r2, r8
	lsls r0, r2, 21
	movs r1, 0
	lsrs r0, 1
	str r0, [sp, 0x10]
_0809599E:
	movs r5, 0
	ldr r3, [sp, 0x4]
	adds r3, r7, r3
	str r3, [sp, 0x14]
	adds r0, r1, 0x1
	str r0, [sp, 0x18]
	cmp r5, r8
	bcs _08095A12
	movs r2, 0xF
	mov r12, r2
	lsls r1, 9
	ldr r0, _08095A40
	adds r1, r0
	mov r10, r1
_080959BA:
	ldr r3, [sp]
	adds r0, r3, r5
	ldrb r1, [r0]
	ldr r0, _08095A44
	ands r0, r1
	lsls r0, 6
	mov r2, r12
	ands r1, r2
	lsls r1, 5
	adds r0, r1
	mov r3, r10
	adds r4, r0, r3
	movs r6, 0
	adds r5, 0x1
_080959D6:
	ldrb r0, [r4]
	movs r3, 0xF0
	ands r3, r0
	mov r2, r12
	ands r2, r0
	cmp r3, 0
	bne _080959E6
	ldr r3, [sp, 0xC]
_080959E6:
	cmp r2, 0
	bne _080959EC
	ldr r2, [sp, 0x8]
_080959EC:
	mov r0, r9
	adds r1, r0, 0x1
	lsls r1, 16
	lsrs r1, 16
	mov r9, r1
	ldr r1, [sp, 0x40]
	adds r0, r1, r0
	orrs r3, r2
	strb r3, [r0]
	adds r4, 0x1
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x1F
	bls _080959D6
	lsls r0, r5, 16
	lsrs r5, r0, 16
	cmp r5, r8
	bcc _080959BA
_08095A12:
	ldr r0, [sp, 0x40]
	adds r1, r7, 0
	ldr r3, [sp, 0x10]
	lsrs r2, r3, 16
	bl CpuSet
	ldr r7, [sp, 0x14]
	movs r0, 0
	mov r9, r0
	ldr r1, [sp, 0x18]
	lsls r0, r1, 16
	lsrs r1, r0, 16
	cmp r1, 0x1
	bls _0809599E
_08095A2E:
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095A40: .4byte gFont3LatinGlyphs
_08095A44: .4byte 0x0000fff0
	thumb_func_end sub_8095904

	thumb_func_start unref_sub_8095A48
unref_sub_8095A48: @ 8095A48
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x10
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	lsls r3, 24
	lsrs r7, r3, 24
	movs r6, 0
_08095A60:
	movs r3, 0
	ldrb r0, [r4]
	adds r1, r0, 0
	adds r2, r0, 0
	cmp r1, 0xFF
	beq _08095ACE
_08095A6C:
	mov r0, sp
	adds r0, r3
	adds r0, 0x8
	strb r2, [r0]
	adds r4, 0x1
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x3
	bhi _08095AA8
	ldrb r0, [r4]
	adds r1, r0, 0
	adds r2, r0, 0
	cmp r1, 0xFF
	bne _08095A6C
	cmp r3, 0
	beq _08095ACE
	movs r6, 0x1
	cmp r3, 0x3
	bhi _08095AA8
	movs r2, 0
_08095A96:
	adds r0, r3, 0
	adds r1, r0, 0x1
	lsls r1, 16
	lsrs r3, r1, 16
	add r0, sp
	adds r0, 0x8
	strb r2, [r0]
	cmp r3, 0x3
	bls _08095A96
_08095AA8:
	mov r1, sp
	adds r1, r3
	adds r1, 0x8
	movs r0, 0xFF
	strb r0, [r1]
	str r7, [sp]
	ldr r0, [sp, 0x28]
	str r0, [sp, 0x4]
	add r0, sp, 0x8
	adds r1, r5, 0
	mov r2, r8
	movs r3, 0x80
	bl sub_8095904
	movs r0, 0x80
	lsls r0, 1
	adds r5, r0
	cmp r6, 0
	beq _08095A60
_08095ACE:
	add sp, 0x10
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_8095A48

	thumb_func_start sub_8095ADC
sub_8095ADC: @ 8095ADC
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r4, 0
	movs r5, 0
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r6, r0, 5
_08095AF0:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	ldr r1, _08095B20
	adds r0, r1
	adds r0, r6, r0
	movs r1, 0xB
	bl GetBoxMonData
	cmp r0, 0
	beq _08095B0C
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
_08095B0C:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1D
	bls _08095AF0
	lsls r0, r5, 24
	lsrs r0, 24
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08095B20: .4byte gUnknown_020300A4
	thumb_func_end sub_8095ADC

	thumb_func_start sub_8095B24
sub_8095B24: @ 8095B24
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	movs r4, 0
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r5, r0, 5
_08095B36:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	ldr r1, _08095B54
	adds r0, r1
	adds r0, r5, r0
	movs r1, 0xB
	bl GetBoxMonData
	cmp r0, 0
	bne _08095B58
	lsls r0, r4, 16
	asrs r0, 16
	b _08095B66
	.align 2, 0
_08095B54: .4byte gUnknown_020300A4
_08095B58:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1D
	bls _08095B36
	movs r0, 0x1
	negs r0, r0
_08095B66:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8095B24

	thumb_func_start sub_8095B6C
sub_8095B6C: @ 8095B6C
	push {r4-r6,lr}
	movs r5, 0
	movs r6, 0
_08095B72:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08095BB0
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08095B9A
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _08095B9A
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08095B9A:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _08095B72
	lsls r0, r6, 24
	lsrs r0, 24
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08095BB0: .4byte gPlayerParty
	thumb_func_end sub_8095B6C

	thumb_func_start sub_8095BB4
sub_8095BB4: @ 8095BB4
	push {r4-r7,lr}
	lsls r0, 24
	movs r5, 0
	movs r6, 0
	lsrs r7, r0, 24
_08095BBE:
	cmp r5, r7
	beq _08095BF6
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08095C0C
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08095BF6
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _08095BF6
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _08095BF6
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08095BF6:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _08095BBE
	lsls r0, r6, 24
	lsrs r0, 24
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08095C0C: .4byte gPlayerParty
	thumb_func_end sub_8095BB4

	thumb_func_start sub_8095C10
sub_8095C10: @ 8095C10
	push {lr}
	ldr r0, _08095C24
	ldrb r0, [r0]
	bl sub_8095BB4
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.align 2, 0
_08095C24: .4byte gUnknown_0202E8CC
	thumb_func_end sub_8095C10

	thumb_func_start sub_8095C28
sub_8095C28: @ 8095C28
	push {r4,r5,lr}
	movs r4, 0
	movs r5, 0
_08095C2E:
	movs r0, 0x64
	muls r0, r4
	ldr r1, _08095C5C
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _08095C46
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
_08095C46:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x5
	bls _08095C2E
	lsls r0, r5, 24
	lsrs r0, 24
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_08095C5C: .4byte gPlayerParty
	thumb_func_end sub_8095C28

	thumb_func_start unref_sub_8095C60
unref_sub_8095C60: @ 8095C60
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r4, r2, 16
	lsrs r4, 16
	bl StringCopy
	adds r1, r0, 0
	adds r5, r4
	cmp r1, r5
	bcs _08095C7E
	movs r0, 0
_08095C76:
	strb r0, [r1]
	adds r1, 0x1
	cmp r1, r5
	bcc _08095C76
_08095C7E:
	movs r0, 0xFF
	strb r0, [r1]
	adds r0, r1, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end unref_sub_8095C60

	thumb_func_start sub_8095C8C
sub_8095C8C: @ 8095C8C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r6, r0, 0
	adds r7, r3, 0
	ldr r5, [sp, 0x1C]
	ldr r4, [sp, 0x20]
	ldr r0, [sp, 0x24]
	mov r9, r0
	ldr r0, [sp, 0x28]
	ldr r3, [sp, 0x2C]
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r4, 16
	lsrs r4, 16
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r3, 16
	lsrs r3, 16
	mov r0, r9
	lsls r0, 17
	mov r9, r0
	lsrs r2, 11
	adds r2, r1
	lsls r2, 1
	adds r6, r2
	adds r0, r4, 0
	muls r0, r3
	adds r0, r5
	lsls r0, 1
	adds r7, r0
	movs r4, 0
	cmp r4, r8
	bcs _08095CFC
	mov r0, r9
	lsrs r0, 1
	mov r9, r0
	lsls r5, r3, 1
_08095CE2:
	adds r0, r7, 0
	adds r1, r6, 0
	mov r3, r9
	lsrs r2, r3, 16
	bl CpuSet
	adds r6, 0x40
	adds r7, r5
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, r8
	bcc _08095CE2
_08095CFC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8095C8C

	thumb_func_start unref_sub_8095D08
unref_sub_8095D08: @ 8095D08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r4, r0, 0
	ldr r0, [sp, 0x28]
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 16
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	lsrs r2, 11
	adds r2, r1
	lsls r2, 1
	adds r4, r2
	lsls r3, 17
	lsrs r0, r3, 16
	str r0, [sp, 0x4]
	movs r0, 0
	cmp r0, r10
	bcs _08095DB2
	movs r6, 0x80
	lsls r6, 5
	mov r5, sp
	ldr r7, _08095D74
	lsrs r3, 17
	mov r9, r3
	mov r1, r9
	movs r2, 0x81
	lsls r2, 24
	orrs r1, r2
	mov r9, r1
_08095D4E:
	adds r3, r4, 0
	ldr r2, [sp, 0x4]
	movs r1, 0x40
	adds r1, r4
	mov r8, r1
	adds r0, 0x1
	mov r12, r0
	cmp r2, r6
	bhi _08095D78
	movs r0, 0
	strh r0, [r5]
	mov r2, sp
	str r2, [r7]
	str r4, [r7, 0x4]
	mov r0, r9
	str r0, [r7, 0x8]
	ldr r0, [r7, 0x8]
	b _08095DA6
	.align 2, 0
_08095D74: .4byte 0x040000d4
_08095D78:
	movs r4, 0
	strh r4, [r5]
	ldr r1, _08095DC4
	mov r0, sp
	str r0, [r1]
	str r3, [r1, 0x4]
	ldr r0, _08095DC8
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r3, r6
	subs r2, r6
	cmp r2, r6
	bhi _08095D78
	strh r4, [r5]
	mov r0, sp
	str r0, [r1]
	str r3, [r1, 0x4]
	lsrs r0, r2, 1
	movs r2, 0x81
	lsls r2, 24
	orrs r0, r2
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
_08095DA6:
	mov r4, r8
	mov r1, r12
	lsls r0, r1, 16
	lsrs r0, 16
	cmp r0, r10
	bcc _08095D4E
_08095DB2:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095DC4: .4byte 0x040000d4
_08095DC8: .4byte 0x81000800
	thumb_func_end unref_sub_8095D08

	thumb_func_start sub_8095DCC
sub_8095DCC: @ 8095DCC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 24
	lsrs r0, r3, 24
	cmp r0, 0
	beq _08095DE8
	cmp r0, 0x2
	bne _08095DEC
_08095DE8:
	movs r2, 0x1
	b _08095DEE
_08095DEC:
	ldr r2, _08095E38
_08095DEE:
	subs r0, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _08095E44
	lsls r0, r1, 24
	asrs r0, 24
	lsls r2, 16
	asrs r1, r2, 16
	adds r1, r0
	lsls r0, r1, 16
	asrs r1, r0, 16
	adds r6, r2, 0
	cmp r1, 0
	blt _08095E90
	cmp r1, r7
	bgt _08095E90
_08095E10:
	asrs r4, r0, 16
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	add r0, r8
	movs r1, 0xB
	bl GetBoxMonData
	cmp r0, 0
	bne _08095E3C
	asrs r0, r6, 16
	adds r0, r4, r0
	lsls r0, 16
	asrs r2, r0, 16
	cmp r2, 0
	blt _08095E90
	cmp r2, r7
	ble _08095E10
	b _08095E90
	.align 2, 0
_08095E38: .4byte 0x0000ffff
_08095E3C:
	adds r0, r4, 0
	b _08095E94
_08095E40:
	adds r0, r5, 0
	b _08095E94
_08095E44:
	lsls r0, r1, 24
	asrs r0, 24
	lsls r2, 16
	asrs r1, r2, 16
	adds r1, r0
	lsls r0, r1, 16
	asrs r1, r0, 16
	adds r6, r2, 0
	cmp r1, 0
	blt _08095E90
	cmp r1, r7
	bgt _08095E90
_08095E5C:
	asrs r5, r0, 16
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 4
	mov r1, r8
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0xB
	bl GetBoxMonData
	cmp r0, 0
	beq _08095E80
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetBoxMonData
	cmp r0, 0
	beq _08095E40
_08095E80:
	asrs r0, r6, 16
	adds r0, r5, r0
	lsls r0, 16
	asrs r2, r0, 16
	cmp r2, 0
	blt _08095E90
	cmp r2, r7
	ble _08095E5C
_08095E90:
	movs r0, 0x1
	negs r0, r0
_08095E94:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8095DCC

	thumb_func_start sub_8095EA0
sub_8095EA0: @ 8095EA0
	push {lr}
	movs r0, 0x2
	movs r1, 0xF
	movs r2, 0x1B
	movs r3, 0x12
	bl MenuFillWindowRectWithBlankTile
	pop {r0}
	bx r0
	thumb_func_end sub_8095EA0

	thumb_func_start sub_8095EB4
sub_8095EB4: @ 8095EB4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, _08095ED8
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x4
	bls _08095ECE
	b _080960F4
_08095ECE:
	lsls r0, 2
	ldr r1, _08095EDC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08095ED8: .4byte gTasks
_08095EDC: .4byte _08095EE0
	.align 2, 0
_08095EE0:
	.4byte _08095EF4
	.4byte _08095F1C
	.4byte _08095F30
	.4byte _08096042
	.4byte _080960DC
_08095EF4:
	ldrb r0, [r4, 0xA]
	bl sub_8096168
	bl MenuDisplayMessageBox
	ldr r1, _08095F18
	movs r2, 0xA
	ldrsh r0, [r4, r2]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x2
	movs r2, 0xF
	bl MenuPrint
	b _08095F28
	.align 2, 0
_08095F18: .4byte gUnknown_083B600C
_08095F1C:
	bl sub_807D770
	lsls r0, 24
	cmp r0, 0
	bne _08095F28
	b _080960F4
_08095F28:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _080960F4
_08095F30:
	bl ProcessMenuInput
	lsls r0, 24
	asrs r0, 24
	strh r0, [r4, 0xC]
	movs r3, 0xC
	ldrsh r1, [r4, r3]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _08095FC8
	cmp r1, r0
	bgt _08095F52
	subs r0, 0x1
	cmp r1, r0
	beq _08095F58
	b _08095FE8
_08095F52:
	cmp r1, 0x3
	beq _08095FC8
	b _08095FE8
_08095F58:
	ldrh r3, [r4, 0xA]
	strh r3, [r4, 0xE]
	ldr r2, _08095FC0
	ldrh r1, [r2, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08095F76
	subs r0, r3, 0x1
	strh r0, [r4, 0xE]
	lsls r0, 16
	cmp r0, 0
	bge _08095F76
	movs r0, 0x3
	strh r0, [r4, 0xE]
_08095F76:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _08095F92
	ldrh r0, [r4, 0xE]
	adds r0, 0x1
	strh r0, [r4, 0xE]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _08095F92
	movs r0, 0
	strh r0, [r4, 0xE]
_08095F92:
	lsls r0, r3, 16
	asrs r0, 16
	ldrh r2, [r4, 0xE]
	movs r3, 0xE
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _08095FA2
	b _080960F4
_08095FA2:
	strh r2, [r4, 0xA]
	bl sub_8095EA0
	ldr r0, _08095FC4
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	lsls r1, 3
	adds r0, 0x4
	adds r1, r0
	ldr r0, [r1]
	movs r1, 0x2
	movs r2, 0xF
	bl MenuPrint
	b _080960F4
	.align 2, 0
_08095FC0: .4byte gMain
_08095FC4: .4byte gUnknown_083B600C
_08095FC8:
	bl sub_8072DEC
	movs r0, 0
	movs r1, 0
	movs r2, 0xD
	movs r3, 0x9
	bl MenuZeroFillWindowRect
	bl ScriptContext2_Disable
	bl EnableBothScriptContexts
	adds r0, r5, 0
	bl DestroyTask
	b _080960F4
_08095FE8:
	movs r3, 0xC
	ldrsh r0, [r4, r3]
	cmp r0, 0
	bne _08096008
	bl sub_8095C28
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x6
	bne _08096008
	bl sub_8095EA0
	ldr r0, _08096004
	b _08096022
	.align 2, 0
_08096004: .4byte gPCText_PartyFull2
_08096008:
	movs r1, 0xC
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	bne _08096034
	bl sub_8095C28
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08096034
	bl sub_8095EA0
	ldr r0, _08096030
_08096022:
	movs r1, 0x2
	movs r2, 0xF
	bl MenuPrint
	movs r0, 0x3
	strh r0, [r4, 0x8]
	b _080960F4
	.align 2, 0
_08096030: .4byte gPCText_OnlyOne
_08096034:
	movs r0, 0x1
	movs r1, 0
	bl fade_screen
	movs r0, 0x4
	strh r0, [r4, 0x8]
	b _080960F4
_08096042:
	ldr r0, _08096088
	ldrh r1, [r0, 0x2E]
	movs r3, 0x3
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _080960B8
	movs r0, 0x40
	ands r0, r1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0
	beq _08096090
	ldrh r0, [r4, 0xA]
	subs r0, 0x1
	strh r0, [r4, 0xA]
	lsls r0, 16
	cmp r0, 0
	bge _0809606A
	strh r3, [r4, 0xA]
_0809606A:
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursor
	bl GetMenuCursorPos
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0xA]
	bl sub_8095EA0
	ldr r1, _0809608C
	movs r3, 0xA
	ldrsh r0, [r4, r3]
	b _080960C2
	.align 2, 0
_08096088: .4byte gMain
_0809608C: .4byte gUnknown_083B600C
_08096090:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080960F4
	ldrh r0, [r4, 0xA]
	adds r0, 0x1
	strh r0, [r4, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _080960A8
	strh r2, [r4, 0xA]
_080960A8:
	movs r0, 0x1
	bl MoveMenuCursor
	bl GetMenuCursorPos
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0xA]
_080960B8:
	bl sub_8095EA0
	ldr r1, _080960D8
	movs r2, 0xA
	ldrsh r0, [r4, r2]
_080960C2:
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x2
	movs r2, 0xF
	bl MenuPrint
	movs r0, 0x2
	strh r0, [r4, 0x8]
	b _080960F4
	.align 2, 0
_080960D8: .4byte gUnknown_083B600C
_080960DC:
	ldr r0, _080960FC
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080960F4
	ldrb r0, [r4, 0xC]
	bl task_intro_29
	adds r0, r5, 0
	bl DestroyTask
_080960F4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080960FC: .4byte gPaletteFade
	thumb_func_end sub_8095EB4

	thumb_func_start sub_8096100
sub_8096100: @ 8096100
	push {lr}
	ldr r0, _08096128
	movs r1, 0x50
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _0809612C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r0, 0
	strh r0, [r1, 0x8]
	strh r0, [r1, 0xA]
	bl ScriptContext2_Enable
	pop {r0}
	bx r0
	.align 2, 0
_08096128: .4byte sub_8095EB4
_0809612C: .4byte gTasks
	thumb_func_end sub_8096100

	thumb_func_start sub_8096130
sub_8096130: @ 8096130
	push {lr}
	ldr r0, _0809615C
	movs r1, 0x50
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08096160
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r0, 0
	strh r0, [r1, 0x8]
	ldr r0, _08096164
	ldrb r0, [r0]
	strh r0, [r1, 0xA]
	bl pal_fill_black
	pop {r0}
	bx r0
	.align 2, 0
_0809615C: .4byte sub_8095EB4
_08096160: .4byte gTasks
_08096164: .4byte gUnknown_02038474
	thumb_func_end sub_8096130

	thumb_func_start sub_8096168
sub_8096168: @ 8096168
	push {r4,lr}
	sub sp, 0x8
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	movs r1, 0
	movs r2, 0xD
	movs r3, 0x9
	bl MenuDrawTextWindow
	ldr r3, _080961A4
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0x4
	bl PrintMenuItems
	str r4, [sp]
	movs r0, 0xC
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0x4
	bl InitMenu
	add sp, 0x8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080961A4: .4byte gUnknown_083B600C
	thumb_func_end sub_8096168

	thumb_func_start sub_80961A8
sub_80961A8: @ 80961A8
	push {lr}
	ldr r1, _080961C4
	ldr r0, _080961C8
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	strb r0, [r1]
	ldr r1, _080961CC
	ldr r0, _080961D0
	str r0, [r1]
	ldr r0, _080961D4
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080961C4: .4byte gUnknown_02038474
_080961C8: .4byte gUnknown_083B6DB4
_080961CC: .4byte gUnknown_0300485C
_080961D0: .4byte sub_8096130
_080961D4: .4byte c2_exit_to_overworld_2_switch
	thumb_func_end sub_80961A8

	thumb_func_start sub_80961D8
sub_80961D8: @ 80961D8
	push {r4-r7,lr}
	ldr r1, _08096258
	movs r0, 0
	strb r0, [r1]
	movs r5, 0
	adds r7, r1, 0x4
_080961E4:
	movs r4, 0
	lsls r1, r5, 2
	adds r1, r5
	lsls r0, r1, 4
	subs r0, r1
	lsls r6, r0, 5
_080961F0:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 4
	adds r0, r7
	adds r0, r6, r0
	bl ZeroBoxMonData
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1D
	bls _080961F0
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0xD
	bls _080961E4
	movs r5, 0
_08096214:
	lsls r0, r5, 3
	adds r0, r5
	ldr r6, _0809625C
	adds r0, r6
	ldr r1, _08096260
	bl StringCopy
	adds r4, r5, 0x1
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	lsls r4, 16
	lsrs r5, r4, 16
	cmp r5, 0xD
	bls _08096214
	movs r5, 0
	adds r3, r6, 0
	adds r3, 0x7E
	movs r2, 0x3
_0809623E:
	adds r0, r5, r3
	adds r1, r5, 0
	ands r1, r2
	strb r1, [r0]
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0xD
	bls _0809623E
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096258: .4byte gPokemonStorage
_0809625C: .4byte gUnknown_020383E4
_08096260: .4byte gPCText_BOX
	thumb_func_end sub_80961D8

	thumb_func_start sub_8096264
sub_8096264: @ 8096264
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x20
	mov r8, r0
	adds r4, r1, 0
	adds r6, r2, 0
	mov r9, r3
	lsls r4, 16
	lsrs r4, 16
	lsls r6, 16
	lsrs r6, 16
	mov r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r0, _080962F4
	str r0, [sp, 0x18]
	ldr r1, _080962F8
	add r5, sp, 0x18
	ldr r0, [r5, 0x4]
	ands r0, r1
	orrs r0, r6
	str r0, [r5, 0x4]
	mov r1, sp
	ldr r0, _080962FC
	str r0, [sp]
	movs r0, 0x80
	lsls r0, 4
	strh r0, [r1, 0x4]
	strh r4, [r1, 0x6]
	ldr r0, _08096300
	str r0, [sp, 0x8]
	movs r0, 0xC0
	lsls r0, 1
	strh r0, [r1, 0xC]
	adds r0, r4, 0x1
	strh r0, [r1, 0xE]
	add r0, sp, 0x10
	movs r1, 0
	movs r2, 0x8
	bl memset
	adds r0, r5, 0
	bl LoadSpritePalette
	mov r0, sp
	bl LoadSpriteSheets
	ldr r0, _08096304
	mov r1, r8
	str r1, [r0]
	movs r0, 0x90
	lsls r0, 2
	add r0, r8
	strh r4, [r0]
	ldr r0, _08096308
	add r0, r8
	strh r6, [r0]
	ldr r0, _0809630C
	add r8, r0
	mov r0, r9
	mov r1, r8
	strb r0, [r1]
	add sp, 0x20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080962F4: .4byte gBoxSelectionPopupPalette
_080962F8: .4byte 0xffff0000
_080962FC: .4byte gBoxSelectionPopupCenterTiles
_08096300: .4byte gBoxSelectionPopupSidesTiles
_08096304: .4byte gUnknown_02038478
_08096308: .4byte 0x00000242
_0809630C: .4byte 0x0000023e
	thumb_func_end sub_8096264

	thumb_func_start sub_8096310
sub_8096310: @ 8096310
	push {r4,r5,lr}
	ldr r4, _08096344
	ldr r0, [r4]
	ldr r1, _08096348
	adds r0, r1
	ldrh r0, [r0]
	bl FreeSpritePaletteByTag
	ldr r0, [r4]
	movs r5, 0x90
	lsls r5, 2
	adds r0, r5
	ldrh r0, [r0]
	bl FreeSpriteTilesByTag
	ldr r0, [r4]
	adds r0, r5
	ldrh r0, [r0]
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	bl FreeSpriteTilesByTag
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08096344: .4byte gUnknown_02038478
_08096348: .4byte 0x00000242
	thumb_func_end sub_8096310

	thumb_func_start sub_809634C
sub_809634C: @ 809634C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl sub_80963D0
	pop {r0}
	bx r0
	thumb_func_end sub_809634C

	thumb_func_start sub_809635C
sub_809635C: @ 809635C
	push {lr}
	bl sub_809658C
	pop {r0}
	bx r0
	thumb_func_end sub_809635C

	thumb_func_start sub_8096368
sub_8096368: @ 8096368
	push {lr}
	ldr r0, _08096380
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08096384
	movs r0, 0x5
	bl PlaySE
	movs r0, 0xC9
	b _080963CC
	.align 2, 0
_08096380: .4byte gMain
_08096384:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080963A4
	movs r0, 0x5
	bl PlaySE
	ldr r0, _080963A0
	ldr r0, [r0]
	movs r1, 0x8F
	lsls r1, 2
	adds r0, r1
	ldrb r0, [r0]
	b _080963CC
	.align 2, 0
_080963A0: .4byte gUnknown_02038478
_080963A4:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080963B8
	movs r0, 0x5
	bl PlaySE
	bl sub_809662C
	b _080963CA
_080963B8:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _080963CA
	movs r0, 0x5
	bl PlaySE
	bl sub_80965F8
_080963CA:
	movs r0, 0xC8
_080963CC:
	pop {r1}
	bx r1
	thumb_func_end sub_8096368

	thumb_func_start sub_80963D0
sub_80963D0: @ 80963D0
	push {r4-r6,lr}
	sub sp, 0x3C
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	movs r0, 0
	movs r1, 0
	str r0, [sp, 0x34]
	str r1, [sp, 0x38]
	movs r1, 0xC0
	lsls r1, 24
	ldr r0, [sp, 0x34]
	orrs r0, r1
	str r0, [sp, 0x34]
	ldr r1, _08096564
	add r4, sp, 0x34
	ldr r0, [r4, 0x4]
	ands r0, r1
	movs r1, 0x80
	lsls r1, 5
	orrs r0, r1
	str r0, [r4, 0x4]
	add r1, sp, 0x1C
	movs r2, 0
	strh r2, [r1]
	mov r0, sp
	adds r0, 0x1E
	strh r2, [r0]
	str r4, [sp, 0x20]
	ldr r0, _08096568
	str r0, [sp, 0x24]
	str r2, [sp, 0x28]
	ldr r0, _0809656C
	str r0, [sp, 0x2C]
	ldr r0, _08096570
	str r0, [sp, 0x30]
	add r0, sp, 0x4
	movs r2, 0x18
	bl memcpy
	ldr r6, _08096574
	ldr r0, [r6]
	movs r1, 0x8F
	lsls r1, 2
	adds r0, r1
	strb r5, [r0]
	add r2, sp, 0x4
	ldr r1, [r6]
	movs r5, 0x90
	lsls r5, 2
	adds r0, r1, r5
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r3, _08096578
	adds r1, r3
	ldrh r0, [r1]
	strh r0, [r2, 0x2]
	adds r0, r2, 0
	movs r1, 0xA0
	movs r2, 0x60
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r3, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0809657C
	adds r0, r1
	str r0, [r3]
	ldrb r2, [r4, 0x1]
	movs r1, 0x3F
	adds r0, r1, 0
	ands r0, r2
	movs r2, 0x80
	orrs r0, r2
	strb r0, [r4, 0x1]
	ldrb r0, [r4, 0x3]
	ands r1, r0
	movs r0, 0x40
	orrs r1, r0
	strb r1, [r4, 0x3]
	add r1, sp, 0x4
	adds r3, r5
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r1]
	ldr r0, _08096580
	str r0, [sp, 0xC]
	movs r4, 0
_08096488:
	ldr r0, [r6]
	ldr r1, _08096584
	adds r0, r1
	ldrb r3, [r0]
	add r0, sp, 0x4
	movs r1, 0x7C
	movs r2, 0x50
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r2, [r6]
	lsls r3, r4, 2
	adds r2, 0x4
	adds r2, r3
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0809657C
	adds r1, r0, r1
	str r1, [r2]
	movs r5, 0
	movs r0, 0x2
	ands r0, r4
	cmp r0, 0
	beq _080964C2
	movs r0, 0xC4
	strh r0, [r1, 0x20]
	movs r5, 0x2
_080964C2:
	movs r0, 0x1
	ands r0, r4
	cmp r0, 0
	beq _080964E6
	ldr r1, [r6]
	adds r1, 0x4
	adds r1, r3
	ldr r2, [r1]
	movs r0, 0x70
	strh r0, [r2, 0x22]
	ldr r2, [r1]
	ldrb r1, [r2, 0x3]
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x3]
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
_080964E6:
	ldr r0, [r6]
	adds r0, 0x4
	adds r0, r3
	ldr r0, [r0]
	lsls r1, r5, 24
	lsrs r1, 24
	bl StartSpriteAnim
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x3
	bls _08096488
	movs r4, 0
	ldr r5, _08096574
_08096504:
	lsls r0, r4, 3
	adds r0, r4
	lsls r0, 19
	movs r3, 0xF8
	lsls r3, 15
	adds r0, r3
	lsrs r0, 16
	lsls r2, r4, 24
	lsrs r2, 24
	ldr r1, [r5]
	ldr r3, _08096584
	adds r1, r3
	ldrb r1, [r1]
	str r1, [sp]
	movs r1, 0x58
	movs r3, 0
	bl sub_809A9A0
	adds r2, r0, 0
	ldr r0, [r5]
	lsls r1, r4, 2
	adds r0, 0x20
	adds r0, r1
	str r2, [r0]
	cmp r2, 0
	beq _0809654C
	movs r1, 0x1
	cmp r4, 0
	bne _08096544
	movs r3, 0x1
	negs r3, r3
	adds r1, r3, 0
_08096544:
	strh r1, [r2, 0x2E]
	ldr r1, [r0]
	ldr r0, _08096588
	str r0, [r1, 0x1C]
_0809654C:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1
	bls _08096504
	bl sub_809665C
	add sp, 0x3C
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08096564: .4byte 0xffff0fff
_08096568: .4byte gDummySpriteAnimTable
_0809656C: .4byte gDummySpriteAffineAnimTable
_08096570: .4byte SpriteCallbackDummy
_08096574: .4byte gUnknown_02038478
_08096578: .4byte 0x00000242
_0809657C: .4byte gSprites
_08096580: .4byte gSpriteAnimTable_83B604C
_08096584: .4byte 0x0000023e
_08096588: .4byte sub_8096784
	thumb_func_end sub_80963D0

	thumb_func_start sub_809658C
sub_809658C: @ 809658C
	push {r4-r6,lr}
	ldr r4, _080965F4
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, 0
	beq _080965A2
	bl DestroySprite
	ldr r1, [r4]
	movs r0, 0
	str r0, [r1]
_080965A2:
	movs r5, 0
	adds r6, r4, 0
_080965A6:
	ldr r0, [r6]
	lsls r4, r5, 2
	adds r0, 0x4
	adds r0, r4
	ldr r0, [r0]
	cmp r0, 0
	beq _080965C2
	bl DestroySprite
	ldr r0, [r6]
	adds r0, 0x4
	adds r0, r4
	movs r1, 0
	str r1, [r0]
_080965C2:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x3
	bls _080965A6
	movs r5, 0
_080965CE:
	ldr r0, _080965F4
	ldr r0, [r0]
	lsls r1, r5, 2
	adds r0, 0x20
	adds r0, r1
	ldr r0, [r0]
	cmp r0, 0
	beq _080965E2
	bl DestroySprite
_080965E2:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x1
	bls _080965CE
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080965F4: .4byte gUnknown_02038478
	thumb_func_end sub_809658C

	thumb_func_start sub_80965F8
sub_80965F8: @ 80965F8
	push {lr}
	ldr r2, _08096628
	ldr r1, [r2]
	movs r0, 0x8F
	lsls r0, 2
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xD
	bls _0809661E
	ldr r0, [r2]
	movs r1, 0x8F
	lsls r1, 2
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
_0809661E:
	bl sub_809665C
	pop {r0}
	bx r0
	.align 2, 0
_08096628: .4byte gUnknown_02038478
	thumb_func_end sub_80965F8

	thumb_func_start sub_809662C
sub_809662C: @ 809662C
	push {lr}
	ldr r0, _08096644
	ldr r2, [r0]
	movs r1, 0x8F
	lsls r1, 2
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08096648
	subs r1, r0, 0x1
	b _0809664A
	.align 2, 0
_08096644: .4byte gUnknown_02038478
_08096648:
	movs r1, 0xD
_0809664A:
	movs r3, 0x8F
	lsls r3, 2
	adds r0, r2, r3
	strb r1, [r0]
	bl sub_809665C
	pop {r0}
	bx r0
	thumb_func_end sub_809662C

	thumb_func_start sub_809665C
sub_809665C: @ 809665C
	push {r4-r7,lr}
	ldr r5, _080966B4
	ldr r0, [r5]
	movs r4, 0x8F
	lsls r4, 2
	adds r0, r4
	ldrb r0, [r0]
	bl sub_8095ADC
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r2, _080966B8
	movs r6, 0xFC
	strb r6, [r2]
	movs r0, 0x4
	strb r0, [r2, 0x1]
	movs r0, 0xF
	strb r0, [r2, 0x2]
	movs r0, 0x1
	strb r0, [r2, 0x3]
	movs r0, 0xE
	strb r0, [r2, 0x4]
	adds r2, 0x5
	ldr r0, [r5]
	adds r0, r4
	ldrb r0, [r0]
	lsls r1, r0, 3
	adds r1, r0
	ldr r0, _080966BC
	adds r1, r0
	adds r0, r2, 0
	bl StringCopy
	adds r2, r0, 0
	movs r0, 0xFE
	strb r0, [r2]
	strb r6, [r2, 0x1]
	movs r0, 0x11
	strb r0, [r2, 0x2]
	cmp r7, 0x9
	bhi _080966C0
	movs r0, 0x28
	b _080966C2
	.align 2, 0
_080966B4: .4byte gUnknown_02038478
_080966B8: .4byte gStringVar1
_080966BC: .4byte gUnknown_020383E4
_080966C0:
	movs r0, 0x22
_080966C2:
	strb r0, [r2, 0x3]
	adds r2, 0x4
	adds r0, r2, 0
	adds r1, r7, 0
	bl ConvertIntToDecimalString
	adds r2, r0, 0
	movs r0, 0xBA
	strb r0, [r2]
	movs r0, 0xA4
	strb r0, [r2, 0x1]
	movs r0, 0xA1
	strb r0, [r2, 0x2]
	movs r0, 0xFF
	strb r0, [r2, 0x3]
	ldr r0, _080966F0
	movs r1, 0
	movs r2, 0x1
	bl sub_80966F4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080966F0: .4byte gStringVar1
	thumb_func_end sub_809665C

	thumb_func_start sub_80966F4
sub_80966F4: @ 80966F4
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	mov r8, r0
	adds r5, r1, 0
	adds r4, r2, 0
	lsls r5, 16
	lsrs r5, 16
	lsls r4, 16
	lsrs r4, 16
	ldr r0, _08096764
	ldr r0, [r0]
	movs r1, 0x90
	lsls r1, 2
	adds r0, r1
	ldrh r0, [r0]
	bl GetSpriteTileStartByTag
	adds r6, r0, 0
	lsls r6, 16
	lsrs r6, 11
	lsls r4, 8
	ldr r2, _08096768
	adds r4, r2
	adds r6, r4
	lsls r5, 5
	adds r6, r5
	ldr r0, _0809676C
	ldr r5, [r0]
	mov r1, sp
	ldr r2, _08096770
	adds r0, r2, 0
	strh r0, [r1]
	ldr r4, _08096774
	str r1, [r4]
	str r5, [r4, 0x4]
	ldr r0, _08096778
	str r0, [r4, 0x8]
	ldr r0, [r4, 0x8]
	ldr r0, _0809677C
	adds r1, r5, 0
	mov r2, r8
	bl sub_8004E3C
	str r5, [r4]
	str r6, [r4, 0x4]
	ldr r0, _08096780
	str r0, [r4, 0x8]
	ldr r0, [r4, 0x8]
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08096764: .4byte gUnknown_02038478
_08096768: .4byte 0x06010000
_0809676C: .4byte gUnknown_083B6DB8
_08096770: .4byte 0x00001111
_08096774: .4byte 0x040000d4
_08096778: .4byte 0x81000200
_0809677C: .4byte gWindowConfig_81E6D38
_08096780: .4byte 0x80000200
	thumb_func_end sub_80966F4

	thumb_func_start sub_8096784
sub_8096784: @ 8096784
	push {lr}
	adds r1, r0, 0
	ldrh r0, [r1, 0x30]
	adds r0, 0x1
	movs r2, 0
	strh r0, [r1, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _080967B4
	strh r2, [r1, 0x30]
	ldrh r0, [r1, 0x2E]
	ldrh r3, [r1, 0x24]
	adds r0, r3
	strh r0, [r1, 0x24]
	ldrh r0, [r1, 0x32]
	adds r0, 0x1
	strh r0, [r1, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5
	ble _080967B4
	strh r2, [r1, 0x32]
	strh r2, [r1, 0x24]
_080967B4:
	pop {r0}
	bx r0
	thumb_func_end sub_8096784

	thumb_func_start task_intro_29
task_intro_29: @ 80967B8
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080967D0
	strb r0, [r1]
	ldr r1, _080967D4
	strb r0, [r1, 0x5]
	ldr r0, _080967D8
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080967D0: .4byte gUnknown_0203847D
_080967D4: .4byte 0x02000000
_080967D8: .4byte sub_8096884
	thumb_func_end task_intro_29

	thumb_func_start sub_80967DC
sub_80967DC: @ 80967DC
	ldr r0, _08096800
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	subs r0, 0x2
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08096800: .4byte REG_BG0HOFS
	thumb_func_end sub_80967DC

	thumb_func_start sub_8096804
sub_8096804: @ 8096804
	push {lr}
	bl ResetPaletteFade
	bl ResetSpriteData
	bl FreeSpriteTileRanges
	bl FreeAllSpritePalettes
	bl ResetTasks
	ldr r1, _0809683C
	movs r2, 0xA0
	lsls r2, 2
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _08096840
	adds r1, r0, 0
	adds r1, 0x8
	movs r2, 0x8
	bl sub_809CFDC
	ldr r1, _08096844
	movs r0, 0x14
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0809683C: .4byte gReservedSpriteTileCount
_08096840: .4byte 0x02000020
_08096844: .4byte gKeyRepeatStartDelay
	thumb_func_end sub_8096804

	thumb_func_start sub_8096848
sub_8096848: @ 8096848
	push {lr}
	bl sub_809B0D4
	ldr r2, _08096868
	movs r1, 0
	ldr r0, _0809686C
	ldrb r0, [r0, 0x5]
	cmp r0, 0x1
	bne _0809685C
	movs r1, 0x1
_0809685C:
	strb r1, [r2]
	ldr r1, _08096870
	movs r0, 0
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08096868: .4byte gUnknown_0203847C
_0809686C: .4byte 0x02000000
_08096870: .4byte gUnknown_0203847E
	thumb_func_end sub_8096848

	thumb_func_start sub_8096874
sub_8096874: @ 8096874
	movs r1, 0x80
	lsls r1, 19
	movs r2, 0xFA
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	bx lr
	thumb_func_end sub_8096874

	thumb_func_start sub_8096884
sub_8096884: @ 8096884
	push {lr}
	ldr r0, _080968A0
	ldr r1, _080968A4
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x9
	bls _08096894
	b _08096986
_08096894:
	lsls r0, 2
	ldr r1, _080968A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080968A0: .4byte gMain
_080968A4: .4byte 0x0000043c
_080968A8: .4byte _080968AC
	.align 2, 0
_080968AC:
	.4byte _080968D4
	.4byte _080968E8
	.4byte _080968F4
	.4byte _08096904
	.4byte _0809690E
	.4byte _08096918
	.4byte _0809691E
	.4byte _08096924
	.4byte _0809692A
	.4byte _08096964
_080968D4:
	movs r0, 0
	bl SetVBlankCallback
	movs r1, 0x80
	lsls r1, 19
	movs r0, 0
	strh r0, [r1]
	bl sub_8096804
	b _0809697A
_080968E8:
	ldr r0, _080968F0
	bl SetUpWindowConfig
	b _0809697A
	.align 2, 0
_080968F0: .4byte gWindowConfig_81E6D00
_080968F4:
	ldr r0, _08096900
	bl InitMenuWindow
	bl MenuZeroFillScreen
	b _0809697A
	.align 2, 0
_08096900: .4byte gWindowConfig_81E6D00
_08096904:
	bl sub_80967DC
	bl sub_8096848
	b _0809697A
_0809690E:
	bl sub_8098B48
	bl sub_809AA24
	b _0809697A
_08096918:
	bl sub_8097DE0
	b _0809697A
_0809691E:
	bl sub_8097E70
	b _0809697A
_08096924:
	bl sub_8098400
	b _0809697A
_0809692A:
	ldr r0, _08096950
	ldrb r0, [r0]
	bl sub_8099BF8
	ldr r2, _08096954
	ldr r1, _08096958
	adds r0, r2, r1
	movs r1, 0xA
	strh r1, [r0]
	ldr r1, _0809695C
	adds r2, r1
	ldr r1, _08096960
	strh r1, [r2]
	bl sub_80F727C
	bl sub_80F7404
	b _0809697A
	.align 2, 0
_08096950: .4byte gPokemonStorage
_08096954: .4byte 0x02000000
_08096958: .4byte 0x000012bc
_0809695C: .4byte 0x000012be
_08096960: .4byte 0x0000dacb
_08096964:
	bl sub_8096874
	ldr r0, _0809698C
	bl sub_8096BE0
	ldr r0, _08096990
	bl SetMainCallback2
	ldr r0, _08096994
	bl SetVBlankCallback
_0809697A:
	ldr r1, _08096998
	ldr r0, _0809699C
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08096986:
	pop {r0}
	bx r0
	.align 2, 0
_0809698C: .4byte sub_8096BF0
_08096990: .4byte sub_8096B38
_08096994: .4byte sub_8096AFC
_08096998: .4byte gMain
_0809699C: .4byte 0x0000043c
	thumb_func_end sub_8096884

	thumb_func_start sub_80969A0
sub_80969A0: @ 80969A0
	push {r4,lr}
	sub sp, 0x4
	ldr r0, _080969BC
	ldr r1, _080969C0
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0xA
	bls _080969B2
	b _08096AE4
_080969B2:
	lsls r0, 2
	ldr r1, _080969C4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080969BC: .4byte gMain
_080969C0: .4byte 0x0000043c
_080969C4: .4byte _080969C8
	.align 2, 0
_080969C8:
	.4byte _080969F4
	.4byte _08096A34
	.4byte _08096A40
	.4byte _08096A50
	.4byte _08096A56
	.4byte _08096A60
	.4byte _08096A66
	.4byte _08096A6C
	.4byte _08096A72
	.4byte _08096AAC
	.4byte _08096AC8
_080969F4:
	movs r0, 0
	bl SetVBlankCallback
	movs r1, 0x80
	lsls r1, 19
	movs r0, 0
	strh r0, [r1]
	ldr r1, _08096A28
	ldr r0, _08096A2C
	ldrb r0, [r0]
	strb r0, [r1, 0x5]
	bl sub_8096804
	ldr r4, _08096A30
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _08096A1A
	bl sub_809BBC0
_08096A1A:
	ldrb r0, [r4]
	cmp r0, 0
	bne _08096AD8
	bl sub_809BD14
	b _08096AD8
	.align 2, 0
_08096A28: .4byte 0x02000000
_08096A2C: .4byte gUnknown_0203847D
_08096A30: .4byte gUnknown_0203847F
_08096A34:
	ldr r0, _08096A3C
	bl SetUpWindowConfig
	b _08096AD8
	.align 2, 0
_08096A3C: .4byte gWindowConfig_81E6D00
_08096A40:
	ldr r0, _08096A4C
	bl InitMenuWindow
	bl MenuZeroFillScreen
	b _08096AD8
	.align 2, 0
_08096A4C: .4byte gWindowConfig_81E6D00
_08096A50:
	bl sub_80967DC
	b _08096AD8
_08096A56:
	bl sub_8098B48
	bl sub_809AA98
	b _08096AD8
_08096A60:
	bl sub_8097DE0
	b _08096AD8
_08096A66:
	bl sub_8097E70
	b _08096AD8
_08096A6C:
	bl sub_8098400
	b _08096AD8
_08096A72:
	ldr r0, _08096A98
	ldrb r0, [r0]
	bl sub_8099BF8
	ldr r2, _08096A9C
	ldr r1, _08096AA0
	adds r0, r2, r1
	movs r1, 0xA
	strh r1, [r0]
	ldr r1, _08096AA4
	adds r2, r1
	ldr r1, _08096AA8
	strh r1, [r2]
	bl sub_80F727C
	bl sub_80F7404
	b _08096AD8
	.align 2, 0
_08096A98: .4byte gPokemonStorage
_08096A9C: .4byte 0x02000000
_08096AA0: .4byte 0x000012bc
_08096AA4: .4byte 0x000012be
_08096AA8: .4byte 0x0000dacb
_08096AAC:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r0, _08096AC4
	bl SetVBlankCallback
	b _08096AD8
	.align 2, 0
_08096AC4: .4byte sub_8096AFC
_08096AC8:
	bl sub_8096874
	ldr r0, _08096AEC
	bl sub_8096BE0
	ldr r0, _08096AF0
	bl SetMainCallback2
_08096AD8:
	ldr r1, _08096AF4
	ldr r0, _08096AF8
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
_08096AE4:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096AEC: .4byte sub_8096C68
_08096AF0: .4byte sub_8096B38
_08096AF4: .4byte gMain
_08096AF8: .4byte 0x0000043c
	thumb_func_end sub_80969A0

	thumb_func_start sub_8096AFC
sub_8096AFC: @ 8096AFC
	push {lr}
	ldr r2, _08096B2C
	ldr r1, _08096B30
	ldr r3, _08096B34
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2]
	adds r2, 0x4
	ldrh r0, [r1, 0xA]
	strh r0, [r2]
	adds r2, 0x2
	ldrh r0, [r1, 0x8]
	strh r0, [r2]
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl sub_809CFF0
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	.align 2, 0
_08096B2C: .4byte REG_BG2HOFS
_08096B30: .4byte 0x02000000
_08096B34: .4byte 0x000008b4
	thumb_func_end sub_8096AFC

	thumb_func_start sub_8096B38
sub_8096B38: @ 8096B38
	push {lr}
	ldr r0, _08096B58
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_8097E44
	bl sub_8098734
	bl AnimateSprites
	bl BuildOamBuffer
	pop {r0}
	bx r0
	.align 2, 0
_08096B58: .4byte 0x02000000
	thumb_func_end sub_8096B38

	thumb_func_start sub_8096B5C
sub_8096B5C: @ 8096B5C
	push {r4,r5,lr}
	sub sp, 0x8
	ldr r4, _08096B70
	ldrb r0, [r4, 0x6]
	cmp r0, 0
	beq _08096B74
	cmp r0, 0x1
	beq _08096BAC
	b _08096BCC
	.align 2, 0
_08096B70: .4byte 0x02000000
_08096B74:
	ldr r1, _08096B98
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r2, _08096B9C
	adds r1, r4, r2
	ldrb r1, [r1]
	ldr r3, _08096BA0
	adds r2, r4, r3
	ldrb r2, [r2]
	ldr r3, _08096BA4
	ldr r5, _08096BA8
	adds r4, r5
	ldrb r4, [r4]
	str r4, [sp]
	bl sub_809D8BC
	b _08096BCC
	.align 2, 0
_08096B98: .4byte 0x00002690
_08096B9C: .4byte 0x0000268d
_08096BA0: .4byte 0x0000268c
_08096BA4: .4byte sub_80969A0
_08096BA8: .4byte 0x0000268e
_08096BAC:
	ldr r0, _08096BD4
	ldrb r2, [r0]
	lsls r1, r2, 3
	adds r1, r2
	ldr r2, _08096BD8
	adds r0, r2
	adds r1, r0
	movs r0, 0
	str r0, [sp]
	ldr r0, _08096BDC
	str r0, [sp, 0x4]
	movs r0, 0x1
	movs r2, 0
	movs r3, 0
	bl DoNamingScreen
_08096BCC:
	add sp, 0x8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08096BD4: .4byte gPokemonStorage
_08096BD8: .4byte 0x00008344
_08096BDC: .4byte sub_80969A0
	thumb_func_end sub_8096B5C

	thumb_func_start sub_8096BE0
sub_8096BE0: @ 8096BE0
	ldr r1, _08096BEC
	str r0, [r1]
	movs r0, 0
	strb r0, [r1, 0x4]
	bx lr
	.align 2, 0
_08096BEC: .4byte 0x02000000
	thumb_func_end sub_8096BE0

	thumb_func_start sub_8096BF0
sub_8096BF0: @ 8096BF0
	push {r4,lr}
	ldr r4, _08096C04
	ldrb r0, [r4, 0x4]
	cmp r0, 0x1
	beq _08096C16
	cmp r0, 0x1
	bgt _08096C08
	cmp r0, 0
	beq _08096C0E
	b _08096C5C
	.align 2, 0
_08096C04: .4byte 0x02000000
_08096C08:
	cmp r0, 0x2
	beq _08096C4C
	b _08096C5C
_08096C0E:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0x10
	b _08096C38
_08096C16:
	movs r0, 0x2
	bl PlaySE
	movs r1, 0
	movs r0, 0xE
	strh r0, [r4, 0xC]
	ldr r0, _08096C48
	strh r0, [r4, 0xE]
	strh r1, [r4, 0x10]
	strh r1, [r4, 0x12]
	adds r0, r4, 0
	adds r0, 0xC
	bl sub_80C5CD4
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
_08096C38:
	movs r2, 0
	bl BlendPalettes
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08096C5C
	.align 2, 0
_08096C48: .4byte 0x0000dad0
_08096C4C:
	bl sub_80C5DCC
	lsls r0, 24
	cmp r0, 0
	beq _08096C5C
	ldr r0, _08096C64
	bl sub_8096BE0
_08096C5C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096C64: .4byte sub_8096C84
	thumb_func_end sub_8096BF0

	thumb_func_start sub_8096C68
sub_8096C68: @ 8096C68
	push {lr}
	bl UpdatePaletteFade
	lsls r0, 24
	cmp r0, 0
	bne _08096C7A
	ldr r0, _08096C80
	bl sub_8096BE0
_08096C7A:
	pop {r0}
	bx r0
	.align 2, 0
_08096C80: .4byte sub_8096C84
	thumb_func_end sub_8096C68

	thumb_func_start sub_8096C84
sub_8096C84: @ 8096C84
	push {r4,lr}
	ldr r0, _08096C9C
	ldrb r0, [r0, 0x4]
	cmp r0, 0x6
	bls _08096C90
	b _08096FBA
_08096C90:
	lsls r0, 2
	ldr r1, _08096CA0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08096C9C: .4byte 0x02000000
_08096CA0: .4byte _08096CA4
	.align 2, 0
_08096CA4:
	.4byte _08096CC0
	.4byte _08096EE0
	.4byte _08096F1C
	.4byte _08096F60
	.4byte _08096F80
	.4byte _08096F8A
	.4byte _08096FA4
_08096CC0:
	bl sub_809CA40
	lsls r0, 24
	lsrs r0, 24
	subs r0, 0x1
	cmp r0, 0xF
	bls _08096CD0
	b _08096FBA
_08096CD0:
	lsls r0, 2
	ldr r1, _08096CDC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08096CDC: .4byte _08096CE0
	.align 2, 0
_08096CE0:
	.4byte _08096D20
	.4byte _08096FBA
	.4byte _08096FBA
	.4byte _08096D94
	.4byte _08096D34
	.4byte _08096D5C
	.4byte _08096DAC
	.4byte _08096DC0
	.4byte _08096DD4
	.4byte _08096DFC
	.4byte _08096E30
	.4byte _08096EB8
	.4byte _08096E70
	.4byte _08096E8C
	.4byte _08096ECC
	.4byte _08096DA0
_08096D20:
	movs r0, 0x5
	bl PlaySE
	ldr r1, _08096D30
	movs r0, 0x1
	strb r0, [r1, 0x4]
	b _08096FBA
	.align 2, 0
_08096D30: .4byte 0x02000000
_08096D34:
	ldr r4, _08096D48
	ldrb r0, [r4, 0x5]
	cmp r0, 0x2
	beq _08096D4C
	movs r0, 0x10
	bl sub_8098898
	movs r0, 0x3
	strb r0, [r4, 0x4]
	b _08096FBA
	.align 2, 0
_08096D48: .4byte 0x02000000
_08096D4C:
	bl sub_809B0D4
	ldr r0, _08096D58
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096D58: .4byte sub_8096FC8
_08096D5C:
	ldr r4, _08096D88
	ldrb r0, [r4, 0x5]
	cmp r0, 0x2
	beq _08096D66
	b _08096FBA
_08096D66:
	bl sub_809BF20
	lsls r0, 24
	cmp r0, 0
	beq _08096D80
	ldr r1, _08096D8C
	adds r0, r4, r1
	ldrh r0, [r0]
	bl itemid_is_mail
	lsls r0, 24
	cmp r0, 0
	bne _08096E4C
_08096D80:
	ldr r0, _08096D90
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096D88: .4byte 0x02000000
_08096D8C: .4byte 0x000011f2
_08096D90: .4byte sub_8097004
_08096D94:
	ldr r0, _08096D9C
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096D9C: .4byte sub_8097BA0
_08096DA0:
	ldr r0, _08096DA8
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096DA8: .4byte sub_8097CC0
_08096DAC:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096DBC
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096DBC: .4byte sub_809789C
_08096DC0:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096DD0
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096DD0: .4byte sub_8097078
_08096DD4:
	movs r0, 0x5
	bl PlaySE
	ldr r4, _08096DF0
	ldr r0, _08096DF4
	ldrb r0, [r0]
	adds r0, 0x1
	ldr r2, _08096DF8
	adds r1, r4, r2
	strh r0, [r1]
	cmp r0, 0xD
	ble _08096E18
	movs r0, 0
	b _08096E16
	.align 2, 0
_08096DF0: .4byte 0x02000000
_08096DF4: .4byte gPokemonStorage
_08096DF8: .4byte 0x000008b2
_08096DFC:
	movs r0, 0x5
	bl PlaySE
	ldr r4, _08096E24
	ldr r0, _08096E28
	ldrb r0, [r0]
	subs r0, 0x1
	ldr r2, _08096E2C
	adds r1, r4, r2
	strh r0, [r1]
	cmp r0, 0
	bge _08096E18
	movs r0, 0xD
_08096E16:
	strh r0, [r1]
_08096E18:
	ldrb r0, [r1]
	bl sub_8099C70
	movs r0, 0x2
	strb r0, [r4, 0x4]
	b _08096FBA
	.align 2, 0
_08096E24: .4byte 0x02000000
_08096E28: .4byte gPokemonStorage
_08096E2C: .4byte 0x000008b2
_08096E30:
	bl sub_809BE80
	lsls r0, 24
	cmp r0, 0
	bne _08096E96
	ldr r4, _08096E54
	ldr r1, _08096E58
	adds r0, r4, r1
	ldrh r0, [r0]
	bl itemid_is_mail
	lsls r0, 24
	cmp r0, 0
	beq _08096E5C
_08096E4C:
	movs r0, 0x5
	strb r0, [r4, 0x4]
	b _08096FBA
	.align 2, 0
_08096E54: .4byte 0x02000000
_08096E58: .4byte 0x000011f2
_08096E5C:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096E6C
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096E6C: .4byte sub_809746C
_08096E70:
	bl sub_809BE80
	lsls r0, 24
	cmp r0, 0
	bne _08096E96
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096E88
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096E88: .4byte sub_80972A8
_08096E8C:
	bl sub_809BEBC
	lsls r0, 24
	cmp r0, 0
	bne _08096EA4
_08096E96:
	ldr r1, _08096EA0
	movs r0, 0x4
	strb r0, [r1, 0x4]
	b _08096FBA
	.align 2, 0
_08096EA0: .4byte 0x02000000
_08096EA4:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096EB4
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096EB4: .4byte c3_0808DC50
_08096EB8:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096EC8
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096EC8: .4byte sub_8097390
_08096ECC:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08096EDC
	bl sub_8096BE0
	b _08096FBA
	.align 2, 0
_08096EDC: .4byte sub_80972FC
_08096EE0:
	bl sub_809AC00
	lsls r0, 24
	cmp r0, 0
	bne _08096FBA
	bl sub_809BF48
	lsls r0, 24
	cmp r0, 0
	beq _08096EFA
	bl sub_80986E8
	b _08096EFE
_08096EFA:
	bl sub_8098710
_08096EFE:
	ldr r4, _08096F14
	ldr r2, _08096F18
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _08096F0E
	bl BoxSetMosaic
_08096F0E:
	movs r0, 0
	strb r0, [r4, 0x4]
	b _08096FBA
	.align 2, 0
_08096F14: .4byte 0x02000000
_08096F18: .4byte 0x000011f6
_08096F1C:
	bl sub_8099D34
	lsls r0, 24
	cmp r0, 0
	bne _08096FBA
	ldr r1, _08096F50
	ldr r0, _08096F54
	ldr r2, _08096F58
	adds r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _08096F5C
	ldrb r0, [r0]
	cmp r0, 0
	bne _08096F70
	bl sub_809BF20
	lsls r0, 24
	cmp r0, 0
	bne _08096F70
	bl sub_809B440
	bl BoxSetMosaic
	b _08096F70
	.align 2, 0
_08096F50: .4byte gPokemonStorage
_08096F54: .4byte 0x02000000
_08096F58: .4byte 0x000008b2
_08096F5C: .4byte gUnknown_0203847C
_08096F60:
	ldr r0, _08096F78
	ldrh r1, [r0, 0x2E]
	movs r0, 0xF3
	ands r0, r1
	cmp r0, 0
	beq _08096FBA
	bl sub_8098A5C
_08096F70:
	ldr r1, _08096F7C
	movs r0, 0
	strb r0, [r1, 0x4]
	b _08096FBA
	.align 2, 0
_08096F78: .4byte gMain
_08096F7C: .4byte 0x02000000
_08096F80:
	movs r0, 0x20
	bl PlaySE
	movs r0, 0xD
	b _08096F92
_08096F8A:
	movs r0, 0x20
	bl PlaySE
	movs r0, 0x16
_08096F92:
	bl sub_8098898
	ldr r1, _08096FA0
	movs r0, 0x6
	strb r0, [r1, 0x4]
	b _08096FBA
	.align 2, 0
_08096FA0: .4byte 0x02000000
_08096FA4:
	ldr r0, _08096FC0
	ldrh r1, [r0, 0x2E]
	movs r0, 0xF3
	ands r0, r1
	cmp r0, 0
	beq _08096FBA
	bl sub_8098A5C
	ldr r0, _08096FC4
	bl sub_8096BE0
_08096FBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08096FC0: .4byte gMain
_08096FC4: .4byte sub_8096C84
	thumb_func_end sub_8096C84

	thumb_func_start sub_8096FC8
sub_8096FC8: @ 8096FC8
	push {r4,lr}
	ldr r4, _08096FD8
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _08096FDC
	cmp r0, 0x1
	beq _08096FE8
	b _08096FF8
	.align 2, 0
_08096FD8: .4byte 0x02000000
_08096FDC:
	bl sub_809880C
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08096FF8
_08096FE8:
	bl sub_8098830
	lsls r0, 24
	cmp r0, 0
	bne _08096FF8
	ldr r0, _08097000
	bl sub_8096BE0
_08096FF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097000: .4byte sub_8096C84
	thumb_func_end sub_8096FC8

	thumb_func_start sub_8097004
sub_8097004: @ 8097004
	push {r4,lr}
	ldr r4, _08097018
	ldrb r0, [r4, 0x4]
	cmp r0, 0x1
	beq _0809702E
	cmp r0, 0x1
	bgt _0809701C
	cmp r0, 0
	beq _08097022
	b _0809706A
	.align 2, 0
_08097018: .4byte 0x02000000
_0809701C:
	cmp r0, 0x2
	beq _0809704C
	b _0809706A
_08097022:
	movs r0, 0x5
	bl PlaySE
	bl add_to_c3_somehow
	b _08097044
_0809702E:
	bl sub_80985CC
	lsls r0, 24
	cmp r0, 0
	bne _0809706A
	bl sub_809B0F4
	lsls r0, 24
	lsrs r0, 24
	bl sub_809B0C0
_08097044:
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _0809706A
_0809704C:
	bl sub_809AC00
	lsls r0, 24
	cmp r0, 0
	bne _0809706A
	ldr r1, _08097070
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08097064
	bl BoxSetMosaic
_08097064:
	ldr r0, _08097074
	bl sub_8096BE0
_0809706A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097070: .4byte 0x000011f6
_08097074: .4byte sub_8096C84
	thumb_func_end sub_8097004

	thumb_func_start sub_8097078
sub_8097078: @ 8097078
	push {r4,lr}
	ldr r0, _08097090
	ldrb r0, [r0, 0x4]
	cmp r0, 0x5
	bls _08097084
	b _0809729A
_08097084:
	lsls r0, 2
	ldr r1, _08097094
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08097090: .4byte 0x02000000
_08097094: .4byte _08097098
	.align 2, 0
_08097098:
	.4byte _080970B0
	.4byte _080970C8
	.4byte _08097258
	.4byte _0809726C
	.4byte _08097262
	.4byte _08097284
_080970B0:
	movs r0, 0x4
	bl sub_8098898
	bl sub_809CE84
	ldr r1, _080970C4
	movs r0, 0x1
	strb r0, [r1, 0x4]
	b _0809729A
	.align 2, 0
_080970C4: .4byte 0x02000000
_080970C8:
	bl sub_809CF30
	adds r0, 0x1
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x9
	bls _080970D8
	b _0809729A
_080970D8:
	lsls r0, 2
	ldr r1, _080970E4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080970E4: .4byte _080970E8
	.align 2, 0
_080970E8:
	.4byte _08097110
	.4byte _08097110
	.4byte _08097190
	.4byte _08097178
	.4byte _08097120
	.4byte _08097158
	.4byte _08097140
	.4byte _08097230
	.4byte _080971CC
	.4byte _08097244
_08097110:
	bl sub_8098A5C
	ldr r0, _0809711C
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_0809711C: .4byte sub_8096C84
_08097120:
	bl sub_809BE80
	lsls r0, 24
	cmp r0, 0
	bne _080971D6
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _0809713C
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_0809713C: .4byte sub_80972A8
_08097140:
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _08097154
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_08097154: .4byte sub_80972FC
_08097158:
	bl sub_809BEBC
	lsls r0, 24
	cmp r0, 0
	beq _080971D6
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _08097174
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_08097174: .4byte c3_0808DC50
_08097178:
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _0809718C
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_0809718C: .4byte sub_8097390
_08097190:
	bl sub_809BE80
	lsls r0, 24
	cmp r0, 0
	bne _080971D6
	ldr r4, _080971C0
	ldr r1, _080971C4
	adds r0, r4, r1
	ldrh r0, [r0]
	bl itemid_is_mail
	lsls r0, 24
	cmp r0, 0
	bne _08097210
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _080971C8
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_080971C0: .4byte 0x02000000
_080971C4: .4byte 0x000011f2
_080971C8: .4byte sub_809746C
_080971CC:
	bl sub_809BE80
	lsls r0, 24
	cmp r0, 0
	beq _080971E4
_080971D6:
	ldr r1, _080971E0
	movs r0, 0x2
	strb r0, [r1, 0x4]
	b _0809729A
	.align 2, 0
_080971E0: .4byte 0x02000000
_080971E4:
	ldr r4, _080971F8
	ldr r1, _080971FC
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08097200
	movs r0, 0x4
	strb r0, [r4, 0x4]
	b _0809729A
	.align 2, 0
_080971F8: .4byte 0x02000000
_080971FC: .4byte 0x000011f9
_08097200:
	ldr r1, _08097218
	adds r0, r4, r1
	ldrh r0, [r0]
	bl itemid_is_mail
	lsls r0, 24
	cmp r0, 0
	beq _0809721C
_08097210:
	movs r0, 0x3
	strb r0, [r4, 0x4]
	b _0809729A
	.align 2, 0
_08097218: .4byte 0x000011f2
_0809721C:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _0809722C
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_0809722C: .4byte sub_8097594
_08097230:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08097240
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_08097240: .4byte sub_8097788
_08097244:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _08097254
	bl sub_8096BE0
	b _0809729A
	.align 2, 0
_08097254: .4byte sub_80977E4
_08097258:
	movs r0, 0x20
	bl PlaySE
	movs r0, 0xD
	b _08097274
_08097262:
	movs r0, 0x20
	bl PlaySE
	movs r0, 0x11
	b _08097274
_0809726C:
	movs r0, 0x20
	bl PlaySE
	movs r0, 0x16
_08097274:
	bl sub_8098898
	ldr r1, _08097280
	movs r0, 0x5
	strb r0, [r1, 0x4]
	b _0809729A
	.align 2, 0
_08097280: .4byte 0x02000000
_08097284:
	ldr r0, _080972A0
	ldrh r1, [r0, 0x2E]
	movs r0, 0xF3
	ands r0, r1
	cmp r0, 0
	beq _0809729A
	bl sub_8098A5C
	ldr r0, _080972A4
	bl sub_8096BE0
_0809729A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080972A0: .4byte gMain
_080972A4: .4byte sub_8096C84
	thumb_func_end sub_8097078

	thumb_func_start sub_80972A8
sub_80972A8: @ 80972A8
	push {r4,lr}
	ldr r4, _080972B8
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _080972BC
	cmp r0, 0x1
	beq _080972CA
	b _080972F2
	.align 2, 0
_080972B8: .4byte 0x02000000
_080972BC:
	movs r0, 0
	bl sub_809B100
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _080972F2
_080972CA:
	bl sub_809B130
	lsls r0, 24
	cmp r0, 0
	bne _080972F2
	ldr r0, _080972E4
	ldrb r0, [r0]
	cmp r0, 0
	beq _080972EC
	ldr r0, _080972E8
	bl sub_8096BE0
	b _080972F2
	.align 2, 0
_080972E4: .4byte gUnknown_0203847C
_080972E8: .4byte sub_8097858
_080972EC:
	ldr r0, _080972F8
	bl sub_8096BE0
_080972F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080972F8: .4byte sub_8096C84
	thumb_func_end sub_80972A8

	thumb_func_start sub_80972FC
sub_80972FC: @ 80972FC
	push {r4,lr}
	ldr r4, _0809730C
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _08097310
	cmp r0, 0x1
	beq _0809731E
	b _08097346
	.align 2, 0
_0809730C: .4byte 0x02000000
_08097310:
	movs r0, 0x1
	bl sub_809B100
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097346
_0809731E:
	bl sub_809B130
	lsls r0, 24
	cmp r0, 0
	bne _08097346
	ldr r0, _08097338
	ldrb r0, [r0]
	cmp r0, 0
	beq _08097340
	ldr r0, _0809733C
	bl sub_8096BE0
	b _08097346
	.align 2, 0
_08097338: .4byte gUnknown_0203847C
_0809733C: .4byte sub_8097858
_08097340:
	ldr r0, _0809734C
	bl sub_8096BE0
_08097346:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809734C: .4byte sub_8096C84
	thumb_func_end sub_80972FC

	thumb_func_start c3_0808DC50
c3_0808DC50: @ 8097350
	push {r4,lr}
	ldr r4, _08097360
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _08097364
	cmp r0, 0x1
	beq _08097372
	b _08097386
	.align 2, 0
_08097360: .4byte 0x02000000
_08097364:
	movs r0, 0x2
	bl sub_809B100
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097386
_08097372:
	bl sub_809B130
	lsls r0, 24
	cmp r0, 0
	bne _08097386
	bl BoxSetMosaic
	ldr r0, _0809738C
	bl sub_8096BE0
_08097386:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809738C: .4byte sub_8096C84
	thumb_func_end c3_0808DC50

	thumb_func_start sub_8097390
sub_8097390: @ 8097390
	push {lr}
	ldr r0, _080973A4
	ldrb r0, [r0, 0x4]
	cmp r0, 0x5
	bhi _08097462
	lsls r0, 2
	ldr r1, _080973A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080973A4: .4byte 0x02000000
_080973A8: .4byte _080973AC
	.align 2, 0
_080973AC:
	.4byte _080973C4
	.4byte _080973FC
	.4byte _0809741C
	.4byte _0809742C
	.4byte _0809743E
	.4byte _0809745C
_080973C4:
	bl CalculatePlayerPartyCount
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x6
	bne _080973E4
	movs r0, 0xE
	bl sub_8098898
	ldr r1, _080973E0
	movs r0, 0x1
	strb r0, [r1, 0x4]
	b _08097462
	.align 2, 0
_080973E0: .4byte 0x02000000
_080973E4:
	bl sub_809B0E0
	movs r0, 0
	bl sub_809B100
	ldr r1, _080973F8
	movs r0, 0x2
	strb r0, [r1, 0x4]
	b _08097462
	.align 2, 0
_080973F8: .4byte 0x02000000
_080973FC:
	ldr r0, _08097414
	ldrh r1, [r0, 0x2E]
	movs r0, 0xF3
	ands r0, r1
	cmp r0, 0
	beq _08097462
	bl sub_8098A5C
	ldr r0, _08097418
	bl sub_8096BE0
	b _08097462
	.align 2, 0
_08097414: .4byte gMain
_08097418: .4byte sub_8096C84
_0809741C:
	bl sub_809B130
	lsls r0, 24
	cmp r0, 0
	bne _08097462
	bl sub_809880C
	b _0809744C
_0809742C:
	bl sub_8098830
	lsls r0, 24
	cmp r0, 0
	bne _08097462
	movs r0, 0x1
	bl sub_809B100
	b _0809744C
_0809743E:
	bl sub_809B130
	lsls r0, 24
	cmp r0, 0
	bne _08097462
	bl sub_80987DC
_0809744C:
	ldr r1, _08097458
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _08097462
	.align 2, 0
_08097458: .4byte 0x02000000
_0809745C:
	ldr r0, _08097468
	bl sub_8096BE0
_08097462:
	pop {r0}
	bx r0
	.align 2, 0
_08097468: .4byte sub_8097004
	thumb_func_end sub_8097390

	thumb_func_start sub_809746C
sub_809746C: @ 809746C
	push {r4,lr}
	ldr r0, _08097484
	ldrb r0, [r0, 0x4]
	cmp r0, 0x4
	bls _08097478
	b _08097584
_08097478:
	lsls r0, 2
	ldr r1, _08097488
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08097484: .4byte 0x02000000
_08097488: .4byte _0809748C
	.align 2, 0
_0809748C:
	.4byte _080974A0
	.4byte _080974D8
	.4byte _08097534
	.4byte _08097548
	.4byte _0809756C
_080974A0:
	movs r0, 0x6
	bl sub_8098898
	ldr r4, _080974C8
	ldr r2, _080974CC
	adds r0, r4, 0
	movs r1, 0x7
	movs r3, 0x3
	bl sub_8096264
	ldr r0, _080974D0
	ldrb r0, [r0]
	bl sub_809634C
	ldr r0, _080974D4
	adds r4, r0
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097584
	.align 2, 0
_080974C8: .4byte 0x02002370
_080974CC: .4byte 0x0000daca
_080974D0: .4byte gUnknown_0203847E
_080974D4: .4byte 0xffffdc90
_080974D8:
	bl sub_8096368
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xC8
	beq _08097584
	cmp r4, 0xC9
	bne _080974F6
	bl sub_8098A5C
	bl sub_809635C
	bl sub_8096310
	b _0809755E
_080974F6:
	adds r0, r4, 0
	bl sub_809B62C
	lsls r0, 24
	cmp r0, 0
	beq _08097518
	bl sub_8098A5C
	bl sub_809635C
	bl sub_8096310
	ldr r1, _08097514
	movs r0, 0x2
	b _08097522
	.align 2, 0
_08097514: .4byte 0x02000000
_08097518:
	movs r0, 0x8
	bl sub_8098898
	ldr r1, _0809752C
	movs r0, 0x4
_08097522:
	strb r0, [r1, 0x4]
	ldr r0, _08097530
	strb r4, [r0]
	b _08097584
	.align 2, 0
_0809752C: .4byte 0x02000000
_08097530: .4byte gUnknown_0203847E
_08097534:
	bl party_compaction
	bl sub_8099310
	ldr r1, _08097544
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	b _08097582
	.align 2, 0
_08097544: .4byte 0x02000000
_08097548:
	bl sub_8099374
	lsls r0, 24
	cmp r0, 0
	bne _08097584
	bl sub_809B6BC
	bl BoxSetMosaic
	bl sub_80987DC
_0809755E:
	ldr r0, _08097568
	bl sub_8096BE0
	b _08097584
	.align 2, 0
_08097568: .4byte sub_8096C84
_0809756C:
	ldr r0, _0809758C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _08097584
	movs r0, 0x6
	bl sub_8098898
	ldr r1, _08097590
	movs r0, 0x1
_08097582:
	strb r0, [r1, 0x4]
_08097584:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809758C: .4byte gMain
_08097590: .4byte 0x02000000
	thumb_func_end sub_809746C

	thumb_func_start sub_8097594
sub_8097594: @ 8097594
	push {r4,lr}
	ldr r0, _080975AC
	ldrb r0, [r0, 0x4]
	cmp r0, 0xD
	bls _080975A0
	b _0809777A
_080975A0:
	lsls r0, 2
	ldr r1, _080975B0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080975AC: .4byte 0x02000000
_080975B0: .4byte _080975B4
	.align 2, 0
_080975B4:
	.4byte _080975EC
	.4byte _08097600
	.4byte _0809763A
	.4byte _0809766E
	.4byte _0809767A
	.4byte _08097690
	.4byte _080976C8
	.4byte _080976E0
	.4byte _080976EC
	.4byte _080976F0
	.4byte _08097704
	.4byte _08097720
	.4byte _08097732
	.4byte _08097764
_080975EC:
	movs r0, 0x9
	bl sub_8098898
	movs r0, 0x1
	bl sub_8098A38
	ldr r1, _0809761C
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
_08097600:
	bl ProcessMenuInputNoWrap
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	beq _0809762C
	cmp r1, 0
	bgt _08097620
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _08097626
	b _0809777A
	.align 2, 0
_0809761C: .4byte 0x02000000
_08097620:
	cmp r1, 0x1
	beq _08097626
	b _0809777A
_08097626:
	bl sub_8098A5C
	b _080976E0
_0809762C:
	bl sub_8098A5C
	bl sub_809B7D4
	bl sub_809B6DC
	b _08097744
_0809763A:
	bl sub_809B960
	bl sub_809B734
	lsls r0, 24
	cmp r0, 0
	beq _0809764A
	b _0809777A
_0809764A:
	ldr r4, _08097650
	b _0809765A
	.align 2, 0
_08097650: .4byte 0x02000000
_08097654:
	cmp r0, 0
	bne _0809765A
	b _08097758
_0809765A:
	bl sub_809B960
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _08097654
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _0809777A
_0809766E:
	bl sub_809B760
	bl sub_809801C
	movs r0, 0xA
	b _08097740
_0809767A:
	ldr r0, _0809768C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	bne _08097688
	b _0809777A
_08097688:
	movs r0, 0xB
	b _08097740
	.align 2, 0
_0809768C: .4byte gMain
_08097690:
	ldr r0, _080976B4
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0809777A
	bl sub_8098A5C
	ldr r0, _080976B8
	ldrb r0, [r0]
	cmp r0, 0
	beq _080976BC
	bl party_compaction
	bl sub_8099310
	b _08097744
	.align 2, 0
_080976B4: .4byte gMain
_080976B8: .4byte gUnknown_0203847C
_080976BC:
	ldr r1, _080976C4
	movs r0, 0x7
	strb r0, [r1, 0x4]
	b _0809777A
	.align 2, 0
_080976C4: .4byte 0x02000000
_080976C8:
	bl sub_8099374
	lsls r0, 24
	cmp r0, 0
	bne _0809777A
	bl sub_809B440
	bl BoxSetMosaic
	bl sub_80987DC
	b _08097744
_080976E0:
	ldr r0, _080976E8
	bl sub_8096BE0
	b _0809777A
	.align 2, 0
_080976E8: .4byte sub_8096C84
_080976EC:
	movs r0, 0xA
	b _08097740
_080976F0:
	ldr r0, _08097700
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0809777A
	movs r0, 0x15
	b _08097740
	.align 2, 0
_08097700: .4byte gMain
_08097704:
	ldr r0, _0809771C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0809777A
	bl sub_8098A5C
	bl sub_8099958
	b _08097744
	.align 2, 0
_0809771C: .4byte gMain
_08097720:
	bl sub_8099990
	lsls r0, 24
	cmp r0, 0
	bne _0809777A
	bl sub_809B7AC
	movs r0, 0x13
	b _08097740
_08097732:
	ldr r0, _08097750
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0809777A
	movs r0, 0x14
_08097740:
	bl sub_8098898
_08097744:
	ldr r1, _08097754
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _0809777A
	.align 2, 0
_08097750: .4byte gMain
_08097754: .4byte 0x02000000
_08097758:
	ldr r1, _08097760
	movs r0, 0x8
	strb r0, [r1, 0x4]
	b _0809777A
	.align 2, 0
_08097760: .4byte 0x02000000
_08097764:
	ldr r0, _08097780
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0
	beq _0809777A
	bl sub_8098A5C
	ldr r0, _08097784
	bl sub_8096BE0
_0809777A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097780: .4byte gMain
_08097784: .4byte sub_8096C84
	thumb_func_end sub_8097594

	thumb_func_start sub_8097788
sub_8097788: @ 8097788
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, _0809779C
	ldrb r4, [r5, 0x4]
	cmp r4, 0
	beq _080977A0
	cmp r4, 0x1
	beq _080977BC
	b _080977D4
	.align 2, 0
_0809779C: .4byte 0x02000000
_080977A0:
	bl sub_809BC18
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldrb r0, [r5, 0x4]
	adds r0, 0x1
	strb r0, [r5, 0x4]
	b _080977D4
_080977BC:
	bl UpdatePaletteFade
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0
	bne _080977D4
	ldr r0, _080977DC
	strb r1, [r0]
	strb r1, [r5, 0x6]
	ldr r0, _080977E0
	bl SetMainCallback2
_080977D4:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080977DC: .4byte gUnknown_0203847F
_080977E0: .4byte sub_8096B5C
	thumb_func_end sub_8097788

	thumb_func_start sub_80977E4
sub_80977E4: @ 80977E4
	push {r4,lr}
	ldr r4, _080977F4
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _080977F8
	cmp r0, 0x1
	beq _08097824
	b _0809784C
	.align 2, 0
_080977F4: .4byte 0x02000000
_080977F8:
	movs r0, 0xC
	bl sub_8098898
	ldr r0, _08097820
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r3, 0x96
	lsls r3, 5
	adds r0, r4, r3
	strb r1, [r0]
	ldrb r0, [r2]
	movs r1, 0xB0
	movs r2, 0x10
	bl sub_80F7418
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _0809784C
	.align 2, 0
_08097820: .4byte 0x000011f7
_08097824:
	bl sub_80F7500
	lsls r0, 24
	cmp r0, 0
	bne _0809784C
	bl sub_80F7470
	bl sub_8098A5C
	movs r1, 0x96
	lsls r1, 5
	adds r0, r4, r1
	ldrb r0, [r0]
	bl sub_809BDD8
	bl sub_809801C
	ldr r0, _08097854
	bl sub_8096BE0
_0809784C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097854: .4byte sub_8096C84
	thumb_func_end sub_80977E4

	thumb_func_start sub_8097858
sub_8097858: @ 8097858
	push {r4,lr}
	ldr r4, _08097868
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _0809786C
	cmp r0, 0x1
	beq _0809787C
	b _08097890
	.align 2, 0
_08097868: .4byte 0x02000000
_0809786C:
	bl party_compaction
	bl sub_8099310
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097890
_0809787C:
	bl sub_8099374
	lsls r0, 24
	cmp r0, 0
	bne _08097890
	bl sub_80987DC
	ldr r0, _08097898
	bl sub_8096BE0
_08097890:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097898: .4byte sub_8096C84
	thumb_func_end sub_8097858

	thumb_func_start sub_809789C
sub_809789C: @ 809789C
	push {r4,lr}
	ldr r4, _080978AC
	ldrb r0, [r4, 0x4]
	cmp r0, 0
	beq _080978B0
	cmp r0, 0x1
	beq _080978C2
	b _08097968
	.align 2, 0
_080978AC: .4byte 0x02000000
_080978B0:
	movs r0, 0x1
	bl sub_8098898
	bl sub_809CE84
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097968
_080978C2:
	bl sub_809CF30
	adds r0, 0x1
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xC
	bhi _08097968
	lsls r0, 2
	ldr r1, _080978DC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080978DC: .4byte _080978E0
	.align 2, 0
_080978E0:
	.4byte _08097914
	.4byte _08097914
	.4byte _08097968
	.4byte _08097968
	.4byte _08097968
	.4byte _08097968
	.4byte _08097968
	.4byte _08097968
	.4byte _08097968
	.4byte _08097968
	.4byte _08097958
	.4byte _08097940
	.4byte _0809792C
_08097914:
	movs r0, 0x1
	bl sub_809A860
	bl sub_8098A5C
	ldr r0, _08097928
	bl sub_8096BE0
	b _08097968
	.align 2, 0
_08097928: .4byte sub_8096C84
_0809792C:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _0809793C
	bl sub_8096BE0
	b _08097968
	.align 2, 0
_0809793C: .4byte sub_8097B44
_08097940:
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _08097954
	bl sub_8096BE0
	b _08097968
	.align 2, 0
_08097954: .4byte sub_8097974
_08097958:
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldr r0, _08097970
	bl sub_8096BE0
_08097968:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097970: .4byte sub_8097A64
	thumb_func_end sub_809789C

	thumb_func_start sub_8097974
sub_8097974: @ 8097974
	push {r4,r5,lr}
	ldr r5, _08097988
	ldrb r0, [r5, 0x4]
	cmp r0, 0x1
	beq _080979A2
	cmp r0, 0x1
	bgt _0809798C
	cmp r0, 0
	beq _08097996
	b _08097A5A
	.align 2, 0
_08097988: .4byte 0x02000000
_0809798C:
	cmp r0, 0x2
	beq _080979FC
	cmp r0, 0x3
	beq _08097A44
	b _08097A5A
_08097996:
	bl sub_8098A80
	movs r0, 0x2
	bl sub_8098898
	b _08097A3C
_080979A2:
	bl sub_809CF30
	ldr r1, _080979CC
	adds r4, r5, r1
	strh r0, [r4]
	movs r1, 0
	ldrsh r0, [r4, r1]
	movs r1, 0x1
	negs r1, r1
	cmp r0, r1
	bne _080979D4
	movs r0, 0x1
	bl sub_809A860
	bl sub_8098A5C
	ldr r0, _080979D0
	bl sub_8096BE0
	b _08097A5A
	.align 2, 0
_080979CC: .4byte 0x00000d5e
_080979D0: .4byte sub_8096C84
_080979D4:
	cmp r0, r1
	blt _08097A5A
	cmp r0, 0xF
	bgt _08097A5A
	cmp r0, 0xC
	blt _08097A5A
	movs r0, 0x5
	bl PlaySE
	ldrh r0, [r4]
	subs r0, 0xC
	strh r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8098AA8
	movs r0, 0x3
	bl sub_8098898
	b _08097A3C
_080979FC:
	bl sub_809CF30
	movs r1, 0xD6
	lsls r1, 4
	adds r4, r5, r1
	strh r0, [r4]
	movs r0, 0
	ldrsh r1, [r4, r0]
	movs r0, 0x2
	negs r0, r0
	cmp r1, r0
	beq _08097A5A
	adds r0, 0x1
	cmp r1, r0
	bne _08097A24
	bl sub_8098A5C
	movs r0, 0
	strb r0, [r5, 0x4]
	b _08097A5A
_08097A24:
	movs r0, 0x5
	bl PlaySE
	bl sub_8098A5C
	ldrh r0, [r4]
	subs r0, 0x10
	strh r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8099DCC
_08097A3C:
	ldrb r0, [r5, 0x4]
	adds r0, 0x1
	strb r0, [r5, 0x4]
	b _08097A5A
_08097A44:
	bl sub_8099E08
	lsls r0, 24
	cmp r0, 0
	bne _08097A5A
	movs r0, 0x1
	bl sub_809A860
	ldr r0, _08097A60
	bl sub_8096BE0
_08097A5A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097A60: .4byte sub_8096C84
	thumb_func_end sub_8097974

	thumb_func_start sub_8097A64
sub_8097A64: @ 8097A64
	push {r4,r5,lr}
	ldr r5, _08097A78
	ldrb r0, [r5, 0x4]
	cmp r0, 0x1
	beq _08097AB0
	cmp r0, 0x1
	bgt _08097A7C
	cmp r0, 0
	beq _08097A86
	b _08097B32
	.align 2, 0
_08097A78: .4byte 0x02000000
_08097A7C:
	cmp r0, 0x2
	beq _08097B00
	cmp r0, 0x3
	beq _08097B18
	b _08097B32
_08097A86:
	movs r0, 0x5
	bl sub_8098898
	ldr r1, _08097AA4
	adds r0, r5, r1
	ldr r2, _08097AA8
	movs r1, 0x7
	movs r3, 0x3
	bl sub_8096264
	ldr r0, _08097AAC
	ldrb r0, [r0]
	bl sub_809634C
	b _08097B0A
	.align 2, 0
_08097AA4: .4byte 0x00002370
_08097AA8: .4byte 0x0000daca
_08097AAC: .4byte gPokemonStorage
_08097AB0:
	bl sub_8096368
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08097AF4
	adds r4, r5, r2
	strh r0, [r4]
	movs r1, 0
	ldrsh r0, [r4, r1]
	cmp r0, 0xC8
	beq _08097B32
	bl sub_8098A5C
	bl sub_809635C
	bl sub_8096310
	movs r2, 0
	ldrsh r0, [r4, r2]
	cmp r0, 0xC9
	beq _08097AE4
	adds r1, r0, 0
	ldr r0, _08097AF8
	ldrb r0, [r0]
	cmp r1, r0
	bne _08097B0A
_08097AE4:
	movs r0, 0x1
	bl sub_809A860
	ldr r0, _08097AFC
	bl sub_8096BE0
	b _08097B32
	.align 2, 0
_08097AF4: .4byte 0x000008b2
_08097AF8: .4byte gPokemonStorage
_08097AFC: .4byte sub_8096C84
_08097B00:
	ldr r1, _08097B14
	adds r0, r5, r1
	ldrb r0, [r0]
	bl sub_8099C70
_08097B0A:
	ldrb r0, [r5, 0x4]
	adds r0, 0x1
	strb r0, [r5, 0x4]
	b _08097B32
	.align 2, 0
_08097B14: .4byte 0x000008b2
_08097B18:
	bl sub_8099D34
	lsls r0, 24
	cmp r0, 0
	bne _08097B32
	ldr r1, _08097B38
	ldr r2, _08097B3C
	adds r0, r5, r2
	ldrh r0, [r0]
	strb r0, [r1]
	ldr r0, _08097B40
	bl sub_8096BE0
_08097B32:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097B38: .4byte gPokemonStorage
_08097B3C: .4byte 0x000008b2
_08097B40: .4byte sub_8096C84
	thumb_func_end sub_8097A64

	thumb_func_start sub_8097B44
sub_8097B44: @ 8097B44
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, _08097B58
	ldrb r4, [r5, 0x4]
	cmp r4, 0
	beq _08097B5C
	cmp r4, 0x1
	beq _08097B78
	b _08097B8E
	.align 2, 0
_08097B58: .4byte 0x02000000
_08097B5C:
	bl sub_809BB90
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldrb r0, [r5, 0x4]
	adds r0, 0x1
	strb r0, [r5, 0x4]
	b _08097B8E
_08097B78:
	bl UpdatePaletteFade
	lsls r0, 24
	cmp r0, 0
	bne _08097B8E
	ldr r0, _08097B98
	strb r4, [r0]
	strb r4, [r5, 0x6]
	ldr r0, _08097B9C
	bl SetMainCallback2
_08097B8E:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08097B98: .4byte gUnknown_0203847F
_08097B9C: .4byte sub_8096B5C
	thumb_func_end sub_8097B44

	thumb_func_start sub_8097BA0
sub_8097BA0: @ 8097BA0
	push {r4,lr}
	ldr r0, _08097BB8
	ldrb r1, [r0, 0x4]
	adds r4, r0, 0
	cmp r1, 0x4
	bls _08097BAE
	b _08097CB0
_08097BAE:
	lsls r0, r1, 2
	ldr r1, _08097BBC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08097BB8: .4byte 0x02000000
_08097BBC: .4byte _08097BC0
	.align 2, 0
_08097BC0:
	.4byte _08097BD4
	.4byte _08097C18
	.4byte _08097C2C
	.4byte _08097C74
	.4byte _08097C98
_08097BD4:
	bl sub_809BF20
	lsls r0, 24
	cmp r0, 0
	beq _08097BF8
	movs r0, 0x20
	bl PlaySE
	movs r0, 0xF
	bl sub_8098898
	ldr r1, _08097BF4
	movs r0, 0x1
	strb r0, [r1, 0x4]
	b _08097CB0
	.align 2, 0
_08097BF4: .4byte 0x02000000
_08097BF8:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	bl sub_8098898
	movs r0, 0
	bl sub_8098A38
	ldr r1, _08097C14
	movs r0, 0x2
	strb r0, [r1, 0x4]
	b _08097CB0
	.align 2, 0
_08097C14: .4byte 0x02000000
_08097C18:
	ldr r0, _08097C28
	ldrh r1, [r0, 0x2E]
	movs r0, 0xF3
	ands r0, r1
	cmp r0, 0
	beq _08097CB0
	b _08097C4A
	.align 2, 0
_08097C28: .4byte gMain
_08097C2C:
	bl ProcessMenuInputNoWrap
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	beq _08097C5C
	cmp r1, 0
	bgt _08097C46
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _08097C4A
	b _08097CB0
_08097C46:
	cmp r1, 0x1
	bne _08097CB0
_08097C4A:
	bl sub_8098A5C
	ldr r0, _08097C58
	bl sub_8096BE0
	b _08097CB0
	.align 2, 0
_08097C58: .4byte sub_8096C84
_08097C5C:
	movs r0, 0x3
	bl PlaySE
	bl sub_8098A5C
	ldr r1, _08097C70
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _08097CB0
	.align 2, 0
_08097C70: .4byte 0x02000000
_08097C74:
	movs r1, 0
	movs r0, 0xE
	strh r0, [r4, 0xC]
	ldr r0, _08097C94
	strh r0, [r4, 0xE]
	movs r0, 0x14
	strh r0, [r4, 0x10]
	strh r1, [r4, 0x12]
	adds r0, r4, 0
	adds r0, 0xC
	bl sub_80C5E38
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097CB0
	.align 2, 0
_08097C94: .4byte 0x0000dad0
_08097C98:
	bl sub_80C5F98
	lsls r0, 24
	cmp r0, 0
	beq _08097CB0
	bl CalculatePlayerPartyCount
	ldr r1, _08097CB8
	strb r0, [r1]
	ldr r0, _08097CBC
	bl SetMainCallback2
_08097CB0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097CB8: .4byte gPlayerPartyCount
_08097CBC: .4byte sub_80961A8
	thumb_func_end sub_8097BA0

	thumb_func_start sub_8097CC0
sub_8097CC0: @ 8097CC0
	push {r4,lr}
	ldr r0, _08097CD8
	ldrb r1, [r0, 0x4]
	adds r4, r0, 0
	cmp r1, 0x4
	bls _08097CCE
	b _08097DD0
_08097CCE:
	lsls r0, r1, 2
	ldr r1, _08097CDC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08097CD8: .4byte 0x02000000
_08097CDC: .4byte _08097CE0
	.align 2, 0
_08097CE0:
	.4byte _08097CF4
	.4byte _08097D38
	.4byte _08097D4C
	.4byte _08097D94
	.4byte _08097DB8
_08097CF4:
	bl sub_809BF20
	lsls r0, 24
	cmp r0, 0
	beq _08097D18
	movs r0, 0x20
	bl PlaySE
	movs r0, 0xF
	bl sub_8098898
	ldr r1, _08097D14
	movs r0, 0x1
	strb r0, [r1, 0x4]
	b _08097DD0
	.align 2, 0
_08097D14: .4byte 0x02000000
_08097D18:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x12
	bl sub_8098898
	movs r0, 0
	bl sub_8098A38
	ldr r1, _08097D34
	movs r0, 0x2
	strb r0, [r1, 0x4]
	b _08097DD0
	.align 2, 0
_08097D34: .4byte 0x02000000
_08097D38:
	ldr r0, _08097D48
	ldrh r1, [r0, 0x2E]
	movs r0, 0xF3
	ands r0, r1
	cmp r0, 0
	beq _08097DD0
	b _08097D6C
	.align 2, 0
_08097D48: .4byte gMain
_08097D4C:
	bl ProcessMenuInputNoWrap
	lsls r0, 24
	asrs r1, r0, 24
	cmp r1, 0
	beq _08097D6C
	cmp r1, 0
	bgt _08097D66
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _08097D7C
	b _08097DD0
_08097D66:
	cmp r1, 0x1
	beq _08097D7C
	b _08097DD0
_08097D6C:
	bl sub_8098A5C
	ldr r0, _08097D78
	bl sub_8096BE0
	b _08097DD0
	.align 2, 0
_08097D78: .4byte sub_8096C84
_08097D7C:
	movs r0, 0x3
	bl PlaySE
	bl sub_8098A5C
	ldr r1, _08097D90
	ldrb r0, [r1, 0x4]
	adds r0, 0x1
	strb r0, [r1, 0x4]
	b _08097DD0
	.align 2, 0
_08097D90: .4byte 0x02000000
_08097D94:
	movs r1, 0
	movs r0, 0xE
	strh r0, [r4, 0xC]
	ldr r0, _08097DB4
	strh r0, [r4, 0xE]
	movs r0, 0x14
	strh r0, [r4, 0x10]
	strh r1, [r4, 0x12]
	adds r0, r4, 0
	adds r0, 0xC
	bl sub_80C5E38
	ldrb r0, [r4, 0x4]
	adds r0, 0x1
	strb r0, [r4, 0x4]
	b _08097DD0
	.align 2, 0
_08097DB4: .4byte 0x0000dad0
_08097DB8:
	bl sub_80C5F98
	lsls r0, 24
	cmp r0, 0
	beq _08097DD0
	bl CalculatePlayerPartyCount
	ldr r1, _08097DD8
	strb r0, [r1]
	ldr r0, _08097DDC
	bl SetMainCallback2
_08097DD0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097DD8: .4byte gPlayerPartyCount
_08097DDC: .4byte sub_80961A8
	thumb_func_end sub_8097CC0

	thumb_func_start sub_8097DE0
sub_8097DE0: @ 8097DE0
	push {lr}
	ldr r1, _08097E1C
	movs r0, 0
	strb r0, [r1, 0x7]
	strh r0, [r1, 0x8]
	strh r0, [r1, 0xA]
	ldr r1, _08097E20
	ldr r2, _08097E24
	adds r0, r2, 0
	strh r0, [r1]
	ldr r1, _08097E28
	ldr r2, _08097E2C
	ldr r0, _08097E30
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _08097E34
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	ldr r0, _08097E38
	ldr r1, _08097E3C
	bl LZ77UnCompVram
	ldr r0, _08097E40
	movs r1, 0xD0
	movs r2, 0x10
	bl LoadPalette
	pop {r0}
	bx r0
	.align 2, 0
_08097E1C: .4byte 0x02000000
_08097E20: .4byte REG_BG3CNT
_08097E24: .4byte 0x00001e0f
_08097E28: .4byte gPokemonStorageScrollingBGTile
_08097E2C: .4byte 0x0600e000
_08097E30: .4byte 0x040000d4
_08097E34: .4byte 0x80000010
_08097E38: .4byte gPokemonStorageScrollingBGTilemap
_08097E3C: .4byte 0x0600f000
_08097E40: .4byte gPokemonStorageScrollingBGPalette
	thumb_func_end sub_8097DE0

	thumb_func_start sub_8097E44
sub_8097E44: @ 8097E44
	push {lr}
	ldr r1, _08097E6C
	ldrb r0, [r1, 0x7]
	adds r0, 0x1
	strb r0, [r1, 0x7]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _08097E66
	movs r0, 0
	strb r0, [r1, 0x7]
	ldrh r0, [r1, 0x8]
	subs r0, 0x1
	strh r0, [r1, 0x8]
	ldrh r0, [r1, 0xA]
	adds r0, 0x1
	strh r0, [r1, 0xA]
_08097E66:
	pop {r0}
	bx r0
	.align 2, 0
_08097E6C: .4byte 0x02000000
	thumb_func_end sub_8097E44

	thumb_func_start sub_8097E70
sub_8097E70: @ 8097E70
	push {r4,lr}
	sub sp, 0x10
	ldr r0, _08097F2C
	ldr r1, _08097F30
	bl LZ77UnCompVram
	ldr r0, _08097F34
	ldr r4, _08097F38
	adds r1, r4, 0
	bl LZ77UnCompWram
	ldr r0, _08097F3C
	movs r1, 0
	str r1, [sp]
	str r1, [sp, 0x4]
	movs r1, 0xA
	str r1, [sp, 0x8]
	movs r1, 0x14
	str r1, [sp, 0xC]
	movs r1, 0
	movs r2, 0
	adds r3, r4, 0
	bl sub_809D034
	ldr r0, _08097F40
	movs r1, 0x10
	movs r2, 0x20
	bl LoadPalette
	ldr r0, _08097F44
	movs r1, 0
	movs r2, 0x20
	bl LoadPalette
	ldr r0, _08097F48
	movs r1, 0xB0
	movs r2, 0x20
	bl LoadPalette
	ldr r0, _08097F4C
	movs r1, 0xC0
	movs r2, 0x20
	bl LoadPalette
	ldr r4, _08097F50
	adds r0, r4, 0
	movs r1, 0xF1
	movs r2, 0x2
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0xF2
	movs r2, 0x2
	bl LoadPalette
	adds r0, r4, 0
	adds r0, 0x8
	movs r1, 0xF3
	movs r2, 0x2
	bl LoadPalette
	adds r0, r4, 0
	adds r0, 0x16
	movs r1, 0xF4
	movs r2, 0x4
	bl LoadPalette
	adds r0, r4, 0
	adds r0, 0x12
	movs r1, 0xF6
	movs r2, 0x4
	bl LoadPalette
	adds r4, 0x2
	adds r0, r4, 0
	movs r1, 0xFF
	movs r2, 0x2
	bl LoadPalette
	ldr r0, _08097F54
	bl LoadSpritePalette
	bl sub_80980D4
	bl sub_8097F58
	bl sub_8097FB8
	bl sub_809801C
	add sp, 0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097F2C: .4byte gPSSMenuHeader_Gfx
_08097F30: .4byte 0x06005000
_08097F34: .4byte gPSSMenuHeader_Tilemap
_08097F38: .4byte gUnknown_02039760
_08097F3C: .4byte 0x06007800
_08097F40: .4byte gPSSMenu1_Pal
_08097F44: .4byte gPSSMenu2_Pal
_08097F48: .4byte gUnknown_083B6D74
_08097F4C: .4byte gUnknown_083B6D94
_08097F50: .4byte gUnknownPalette_81E6692+0x2
_08097F54: .4byte gWaveformSpritePalette
	thumb_func_end sub_8097E70

	thumb_func_start sub_8097F58
sub_8097F58: @ 8097F58
	push {r4,lr}
	ldr r1, _08097FA4
	movs r0, 0xD
	movs r2, 0
	bl sub_80F7940
	ldr r4, _08097FA8
	ldr r1, _08097FAC
	adds r3, r4, r1
	str r0, [r3]
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	strb r1, [r0, 0x5]
	ldr r0, [r3]
	adds r0, 0x43
	movs r1, 0x1
	strb r1, [r0]
	ldr r1, [r3]
	movs r0, 0x28
	strh r0, [r1, 0x20]
	ldr r1, [r3]
	movs r0, 0x95
	strh r0, [r1, 0x22]
	movs r0, 0xD
	bl GetSpriteTileStartByTag
	ldr r1, _08097FB0
	adds r4, r1
	lsls r0, 16
	lsrs r0, 11
	ldr r1, _08097FB4
	adds r0, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08097FA4: .4byte 0x0000dace
_08097FA8: .4byte 0x02000000
_08097FAC: .4byte 0x000012ac
_08097FB0: .4byte 0x000012b8
_08097FB4: .4byte 0x06010000
	thumb_func_end sub_8097F58

	thumb_func_start sub_8097FB8
sub_8097FB8: @ 8097FB8
	push {r4,r5,lr}
	sub sp, 0x8
	ldr r0, _0809800C
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, 0x4]
	mov r0, sp
	bl LoadSpriteSheet
	movs r4, 0
	ldr r5, _08098010
_08097FD0:
	lsls r1, r4, 6
	subs r1, r4
	adds r1, 0x8
	lsls r1, 16
	asrs r1, 16
	ldr r0, _08098014
	movs r2, 0x9
	movs r3, 0x2
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r2, r4, 2
	adds r2, r5
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	ldr r0, _08098018
	adds r1, r0
	str r1, [r2]
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1
	bls _08097FD0
	add sp, 0x8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809800C: .4byte gWaveformSpriteSheet
_08098010: .4byte 0x020012b0
_08098014: .4byte gSpriteTemplate_83B6EFC
_08098018: .4byte gSprites
	thumb_func_end sub_8097FB8

	thumb_func_start sub_809801C
sub_809801C: @ 809801C
	push {lr}
	ldr r1, _0809803C
	ldr r2, _08098040
	adds r0, r1, r2
	ldrh r0, [r0]
	subs r2, 0x4
	adds r1, r2
	ldr r1, [r1]
	bl sub_80981F0
	bl sub_80982B4
	bl sub_8098350
	pop {r0}
	bx r0
	.align 2, 0
_0809803C: .4byte 0x02000000
_08098040: .4byte 0x000011f0
	thumb_func_end sub_809801C

	thumb_func_start BoxSetMosaic
BoxSetMosaic: @ 8098044
	push {lr}
	bl sub_809801C
	ldr r0, _08098084
	movs r1, 0x9C
	lsls r1, 6
	adds r3, r0, r1
	ldr r2, [r3]
	cmp r2, 0
	beq _08098080
	ldrb r0, [r2, 0x1]
	movs r1, 0x10
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldr r1, [r3]
	movs r0, 0xA
	strh r0, [r1, 0x2E]
	ldr r1, [r3]
	movs r0, 0x1
	strh r0, [r1, 0x30]
	ldr r1, [r3]
	ldr r0, _08098088
	str r0, [r1, 0x1C]
	ldr r2, _0809808C
	ldr r0, [r3]
	ldrh r0, [r0, 0x2E]
	lsls r1, r0, 12
	lsls r0, 8
	orrs r1, r0
	strh r1, [r2]
_08098080:
	pop {r0}
	bx r0
	.align 2, 0
_08098084: .4byte 0x02000000
_08098088: .4byte sub_8098090
_0809808C: .4byte REG_MOSAIC
	thumb_func_end BoxSetMosaic

	thumb_func_start sub_8098090
sub_8098090: @ 8098090
	push {lr}
	adds r3, r0, 0
	ldrh r0, [r3, 0x2E]
	ldrh r1, [r3, 0x30]
	subs r0, r1
	strh r0, [r3, 0x2E]
	lsls r0, 16
	cmp r0, 0
	bge _080980A6
	movs r0, 0
	strh r0, [r3, 0x2E]
_080980A6:
	ldr r2, _080980CC
	ldrh r0, [r3, 0x2E]
	lsls r1, r0, 12
	lsls r0, 8
	orrs r1, r0
	strh r1, [r2]
	movs r1, 0x2E
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _080980C8
	ldrb r0, [r3, 0x1]
	movs r1, 0x11
	negs r1, r1
	ands r1, r0
	strb r1, [r3, 0x1]
	ldr r0, _080980D0
	str r0, [r3, 0x1C]
_080980C8:
	pop {r0}
	bx r0
	.align 2, 0
_080980CC: .4byte REG_MOSAIC
_080980D0: .4byte SpriteCallbackDummy
	thumb_func_end sub_8098090

	thumb_func_start sub_80980D4
sub_80980D4: @ 80980D4
	push {r4,r5,lr}
	sub sp, 0x28
	ldr r0, _08098150
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp, 0x18]
	str r1, [sp, 0x1C]
	ldr r0, _08098154
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp, 0x20]
	str r1, [sp, 0x24]
	mov r1, sp
	ldr r0, _08098158
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	movs r1, 0
	add r5, sp, 0x18
	ldr r4, _0809815C
	movs r3, 0
	ldr r2, _08098160
_08098102:
	adds r0, r1, r4
	strb r3, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, r2
	bls _08098102
	movs r1, 0
	ldr r3, _08098164
	movs r2, 0
_08098116:
	lsls r0, r1, 1
	adds r0, r3
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0xF
	bls _08098116
	ldr r0, _08098168
	movs r1, 0x9C
	lsls r1, 6
	adds r0, r1
	movs r1, 0
	str r1, [r0]
	adds r0, r5, 0
	bl LoadSpriteSheet
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	beq _080981C4
	add r0, sp, 0x20
	bl LoadSpritePalette
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xFF
	beq _080981C4
	b _080981B0
	.align 2, 0
_08098150: .4byte gUnknown_083B6DCC
_08098154: .4byte gUnknown_083B6DD4
_08098158: .4byte gSpriteTemplate_83B6DDC
_0809815C: .4byte 0x02002784
_08098160: .4byte 0x000007ff
_08098164: .4byte 0x02002704
_08098168: .4byte 0x02000000
_0809816C:
	ldr r2, _0809819C
	movs r0, 0x9C
	lsls r0, 6
	adds r3, r2, r0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080981A0
	adds r0, r1
	str r0, [r3]
	lsls r0, r4, 4
	movs r1, 0x80
	lsls r1, 1
	adds r0, r1
	ldr r3, _080981A4
	adds r1, r2, r3
	strh r0, [r1]
	ldr r4, _080981A8
	adds r2, r4
	lsls r0, r5, 5
	ldr r1, _080981AC
	adds r0, r1
	str r0, [r2]
	b _080981C4
	.align 2, 0
_0809819C: .4byte 0x02000000
_080981A0: .4byte gSprites
_080981A4: .4byte 0x000026fa
_080981A8: .4byte 0x000026fc
_080981AC: .4byte 0x06010000
_080981B0:
	mov r0, sp
	movs r1, 0x28
	movs r2, 0x30
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x40
	bne _0809816C
_080981C4:
	ldr r0, _080981E8
	movs r2, 0x9C
	lsls r2, 6
	adds r0, r2
	ldr r0, [r0]
	cmp r0, 0
	bne _080981DE
	movs r0, 0x2
	bl FreeSpriteTilesByTag
	ldr r0, _080981EC
	bl FreeSpritePaletteByTag
_080981DE:
	add sp, 0x28
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080981E8: .4byte 0x02000000
_080981EC: .4byte 0x0000dac7
	thumb_func_end sub_80980D4

	thumb_func_start sub_80981F0
sub_80981F0: @ 80981F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	adds r7, r1, 0
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r6, _08098274
	movs r0, 0x9C
	lsls r0, 6
	adds r0, r6
	mov r8, r0
	ldr r0, [r0]
	cmp r0, 0
	beq _080982A6
	cmp r4, 0
	beq _0809829C
	lsls r0, r4, 3
	ldr r1, _08098278
	adds r0, r1
	ldr r2, _0809827C
	lsls r1, r4, 2
	adds r1, r2
	ldrb r1, [r1]
	ldr r2, _08098280
	adds r3, r6, r2
	ldr r2, _08098284
	adds r5, r6, r2
	str r5, [sp]
	str r4, [sp, 0x4]
	str r7, [sp, 0x8]
	movs r2, 0x1
	bl sub_800D334
	ldr r1, _08098288
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, _0809828C
	adds r4, r6, r2
	adds r1, r4, 0
	bl LZ77UnCompWram
	ldr r1, _08098290
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r2, _08098294
	adds r0, r5, 0
	bl CpuSet
	ldr r2, _08098298
	adds r0, r6, r2
	ldrh r1, [r0]
	adds r0, r4, 0
	movs r2, 0x20
	bl LoadPalette
	mov r0, r8
	ldr r1, [r0]
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
	b _080982A6
	.align 2, 0
_08098274: .4byte 0x02000000
_08098278: .4byte gMonFrontPicTable
_0809827C: .4byte gMonFrontPicCoords
_08098280: .4byte 0x00004784
_08098284: .4byte 0x00002784
_08098288: .4byte 0x000011e8
_0809828C: .4byte 0x00002704
_08098290: .4byte 0x000026fc
_08098294: .4byte 0x04000200
_08098298: .4byte 0x000026fa
_0809829C:
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_080982A6:
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80981F0

	thumb_func_start sub_80982B4
sub_80982B4: @ 80982B4
	push {r4,lr}
	ldr r4, _080982E4
	ldr r1, _080982E8
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, 0
	beq _080982F4
	ldr r2, _080982EC
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r2, 0xC1
	adds r1, r4, r2
	ldr r1, [r1]
	bl sub_80F7A10
	ldr r1, _080982F0
	adds r0, r4, r1
	ldr r1, [r0]
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	b _08098302
	.align 2, 0
_080982E4: .4byte 0x02000000
_080982E8: .4byte 0x000011f0
_080982EC: .4byte 0x000011f7
_080982F0: .4byte 0x000012ac
_080982F4:
	ldr r2, _08098348
	adds r0, r4, r2
	ldr r1, [r0]
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
_08098302:
	strb r0, [r1]
	movs r0, 0
	movs r1, 0xB
	movs r2, 0x9
	movs r3, 0x11
	bl MenuZeroFillWindowRect
	ldr r4, _0809834C
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0x10
	bl MenuPrint
	adds r0, r4, 0
	subs r0, 0x6B
	movs r1, 0x1
	movs r2, 0xB
	bl MenuPrint
	adds r0, r4, 0
	subs r0, 0x46
	movs r1, 0
	movs r2, 0xD
	bl MenuPrint
	subs r4, 0x21
	adds r0, r4, 0
	movs r1, 0x1
	movs r2, 0xF
	bl MenuPrint
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08098348: .4byte 0x000012ac
_0809834C: .4byte 0x0200127a
	thumb_func_end sub_80982B4

	thumb_func_start sub_8098350
sub_8098350: @ 8098350
	push {r4,r5,lr}
	sub sp, 0x10
	ldr r5, _080983A0
	ldr r1, _080983A4
	adds r0, r5, r1
	ldrh r2, [r0]
	cmp r2, 0
	beq _080983B4
	ldr r0, _080983A8
	ldr r3, _080983AC
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	movs r1, 0x8
	str r1, [sp, 0x8]
	movs r1, 0x2
	str r1, [sp, 0xC]
	movs r1, 0x1
	movs r2, 0
	bl sub_809D034
	movs r4, 0
	ldr r0, _080983B0
	adds r5, r0
_08098382:
	lsls r0, r4, 2
	adds r0, r5
	ldr r0, [r0]
	lsls r1, r4, 1
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	bl StartSpriteAnimIfDifferent
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1
	bls _08098382
	b _080983EC
	.align 2, 0
_080983A0: .4byte 0x02000000
_080983A4: .4byte 0x000011f0
_080983A8: .4byte 0x06007800
_080983AC: .4byte gUnknown_02039760
_080983B0: .4byte 0x000012b0
_080983B4:
	ldr r0, _080983F4
	ldr r3, _080983F8
	movs r1, 0xA
	str r1, [sp]
	str r2, [sp, 0x4]
	movs r1, 0x8
	str r1, [sp, 0x8]
	movs r1, 0x2
	str r1, [sp, 0xC]
	movs r1, 0x1
	movs r2, 0
	bl sub_809D034
	movs r4, 0
	ldr r1, _080983FC
	adds r5, r1
_080983D4:
	lsls r0, r4, 2
	adds r0, r5
	ldr r0, [r0]
	lsls r1, r4, 25
	lsrs r1, 24
	bl StartSpriteAnim
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1
	bls _080983D4
_080983EC:
	add sp, 0x10
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080983F4: .4byte 0x06007800
_080983F8: .4byte gUnknown_02039760
_080983FC: .4byte 0x000012b0
	thumb_func_end sub_8098350

	thumb_func_start sub_8098400
sub_8098400: @ 8098400
	push {r4,r5,lr}
	sub sp, 0x14
	ldr r1, _0809847C
	ldr r2, _08098480
	adds r0, r2, 0
	strh r0, [r1]
	ldr r0, _08098484
	ldr r1, _08098488
	bl LZ77UnCompVram
	ldr r0, _0809848C
	ldr r5, _08098490
	adds r1, r5, 0
	bl LZ77UnCompWram
	ldr r0, _08098494
	movs r1, 0x20
	movs r2, 0x20
	bl LoadPalette
	ldr r0, _08098498
	movs r1, 0x30
	movs r2, 0x20
	bl LoadPalette
	ldr r4, _0809849C
	add r1, sp, 0x10
	movs r0, 0
	strh r0, [r1]
	ldr r0, _080984A0
	str r1, [r0]
	str r4, [r0, 0x4]
	ldr r1, _080984A4
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	bl sub_8098780
	ldr r0, _080984A8
	ldrb r0, [r0]
	cmp r0, 0
	beq _080984AC
	movs r0, 0x1
	bl sub_8098690
	movs r0, 0x1
	bl sub_8099200
	movs r0, 0
	str r0, [sp]
	str r0, [sp, 0x4]
	movs r0, 0xC
	str r0, [sp, 0x8]
	movs r0, 0x16
	str r0, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0xA
	movs r2, 0
	adds r3, r5, 0
	bl sub_809D034
	b _080984CC
	.align 2, 0
_0809847C: .4byte REG_BG1CNT
_08098480: .4byte 0x00000f01
_08098484: .4byte gPSSMenuMisc_Gfx
_08098488: .4byte 0x06006800
_0809848C: .4byte gPSSMenuMisc_Tilemap
_08098490: .4byte 0x020000a8
_08098494: .4byte gPSSMenu3_Pal
_08098498: .4byte gPSSMenu4_Pal
_0809849C: .4byte 0x06007800
_080984A0: .4byte 0x040000d4
_080984A4: .4byte 0x81000400
_080984A8: .4byte gUnknown_0203847C
_080984AC:
	str r0, [sp]
	movs r0, 0x14
	str r0, [sp, 0x4]
	movs r0, 0xC
	str r0, [sp, 0x8]
	movs r0, 0x2
	str r0, [sp, 0xC]
	adds r0, r4, 0
	movs r1, 0xA
	movs r2, 0
	adds r3, r5, 0
	bl sub_809D034
	movs r0, 0x1
	bl sub_8098690
_080984CC:
	ldr r0, _080984E0
	ldr r1, _080984E4
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	add sp, 0x14
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080984E0: .4byte 0x02000000
_080984E4: .4byte 0x000008af
	thumb_func_end sub_8098400

	thumb_func_start sub_80984E8
sub_80984E8: @ 80984E8
	push {lr}
	ldr r1, _08098510
	ldr r0, _08098514
	adds r2, r1, r0
	movs r3, 0
	movs r0, 0x14
	strh r0, [r2]
	ldr r0, _08098518
	adds r2, r1, r0
	movs r0, 0x2
	strh r0, [r2]
	ldr r0, _0809851C
	adds r1, r0
	strb r3, [r1]
	movs r0, 0
	bl sub_8099200
	pop {r0}
	bx r0
	.align 2, 0
_08098510: .4byte 0x02000000
_08098514: .4byte 0x000008a8
_08098518: .4byte 0x000008aa
_0809851C: .4byte 0x000008ad
	thumb_func_end sub_80984E8

	thumb_func_start sub_8098520
sub_8098520: @ 8098520
	push {r4,r5,lr}
	sub sp, 0x10
	ldr r3, _08098578
	ldr r0, _0809857C
	adds r5, r3, r0
	ldrb r0, [r5]
	cmp r0, 0x14
	beq _08098592
	ldr r0, _08098580
	adds r1, r3, r0
	ldrh r0, [r1]
	subs r0, 0x1
	movs r4, 0
	strh r0, [r1]
	ldr r0, _08098584
	adds r2, r3, r0
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	ldr r0, _08098588
	adds r3, 0xA8
	str r4, [sp]
	ldrh r1, [r1]
	str r1, [sp, 0x4]
	movs r1, 0xC
	str r1, [sp, 0x8]
	ldrh r1, [r2]
	str r1, [sp, 0xC]
	movs r1, 0xA
	movs r2, 0
	bl sub_809D034
	movs r0, 0x8
	bl sub_80994A8
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x14
	beq _0809858C
	movs r0, 0x1
	b _08098594
	.align 2, 0
_08098578: .4byte 0x02000000
_0809857C: .4byte 0x000008ad
_08098580: .4byte 0x000008a8
_08098584: .4byte 0x000008aa
_08098588: .4byte 0x06007800
_0809858C:
	ldr r1, _0809859C
	movs r0, 0x1
	strb r0, [r1]
_08098592:
	movs r0, 0
_08098594:
	add sp, 0x10
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809859C: .4byte gUnknown_0203847C
	thumb_func_end sub_8098520

	thumb_func_start add_to_c3_somehow
add_to_c3_somehow: @ 80985A0
	ldr r1, _080985BC
	ldr r0, _080985C0
	adds r2, r1, r0
	movs r3, 0
	movs r0, 0
	strh r0, [r2]
	ldr r0, _080985C4
	adds r2, r1, r0
	movs r0, 0x16
	strh r0, [r2]
	ldr r0, _080985C8
	adds r1, r0
	strb r3, [r1]
	bx lr
	.align 2, 0
_080985BC: .4byte 0x02000000
_080985C0: .4byte 0x000008a8
_080985C4: .4byte 0x000008aa
_080985C8: .4byte 0x000008ad
	thumb_func_end add_to_c3_somehow

	thumb_func_start sub_80985CC
sub_80985CC: @ 80985CC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x10
	ldr r3, _08098640
	ldr r0, _08098644
	adds r6, r3, r0
	ldrb r0, [r6]
	cmp r0, 0x14
	beq _0809867A
	ldr r2, _08098648
	adds r1, r3, r2
	ldrh r0, [r1]
	adds r0, 0x1
	movs r2, 0
	mov r9, r2
	strh r0, [r1]
	ldr r0, _0809864C
	adds r4, r3, r0
	ldrh r0, [r4]
	subs r0, 0x1
	strh r0, [r4]
	ldr r5, _08098650
	adds r3, 0xA8
	mov r8, r3
	str r2, [sp]
	ldrh r0, [r1]
	str r0, [sp, 0x4]
	movs r7, 0xC
	str r7, [sp, 0x8]
	ldrh r0, [r4]
	str r0, [sp, 0xC]
	adds r0, r5, 0
	movs r1, 0xA
	bl sub_809D034
	ldrh r2, [r4]
	movs r4, 0x1
	str r4, [sp]
	adds r0, r5, 0
	movs r1, 0xA
	movs r3, 0xC
	bl sub_809D16C
	movs r0, 0x8
	negs r0, r0
	bl sub_80994A8
	ldrb r0, [r6]
	adds r0, 0x1
	strb r0, [r6]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x14
	beq _08098654
	movs r0, 0x1
	b _0809867C
	.align 2, 0
_08098640: .4byte 0x02000000
_08098644: .4byte 0x000008ad
_08098648: .4byte 0x000008a8
_0809864C: .4byte 0x000008aa
_08098650: .4byte 0x06007800
_08098654:
	ldr r0, _0809868C
	movs r1, 0
	strb r1, [r0]
	bl sub_809954C
	bl party_compaction
	str r7, [sp]
	mov r2, r9
	str r2, [sp, 0x4]
	str r4, [sp, 0x8]
	movs r0, 0x2
	str r0, [sp, 0xC]
	adds r0, r5, 0
	movs r1, 0x15
	movs r2, 0
	mov r3, r8
	bl sub_809D034
_0809867A:
	movs r0, 0
_0809867C:
	add sp, 0x10
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809868C: .4byte gUnknown_0203847C
	thumb_func_end sub_80985CC

	thumb_func_start sub_8098690
sub_8098690: @ 8098690
	push {lr}
	sub sp, 0x10
	lsls r0, 24
	cmp r0, 0
	beq _080986C0
	ldr r0, _080986B8
	ldr r3, _080986BC
	movs r1, 0xC
	str r1, [sp]
	movs r1, 0
	str r1, [sp, 0x4]
	movs r1, 0x9
	str r1, [sp, 0x8]
	movs r1, 0x2
	str r1, [sp, 0xC]
	movs r1, 0x15
	movs r2, 0
	bl sub_809D034
	b _080986DA
	.align 2, 0
_080986B8: .4byte 0x06007800
_080986BC: .4byte 0x020000a8
_080986C0:
	ldr r0, _080986E0
	ldr r3, _080986E4
	movs r1, 0xC
	str r1, [sp]
	movs r2, 0x2
	str r2, [sp, 0x4]
	movs r1, 0x9
	str r1, [sp, 0x8]
	str r2, [sp, 0xC]
	movs r1, 0x15
	movs r2, 0
	bl sub_809D034
_080986DA:
	add sp, 0x10
	pop {r0}
	bx r0
	.align 2, 0
_080986E0: .4byte 0x06007800
_080986E4: .4byte 0x020000a8
	thumb_func_end sub_8098690

	thumb_func_start sub_80986E8
sub_80986E8: @ 80986E8
	ldr r1, _08098704
	ldr r2, _08098708
	adds r0, r1, r2
	movs r3, 0x1
	strb r3, [r0]
	movs r0, 0x8B
	lsls r0, 4
	adds r2, r1, r0
	movs r0, 0x1E
	strb r0, [r2]
	ldr r2, _0809870C
	adds r1, r2
	strb r3, [r1]
	bx lr
	.align 2, 0
_08098704: .4byte 0x02000000
_08098708: .4byte 0x000008af
_0809870C: .4byte 0x000008b1
	thumb_func_end sub_80986E8

	thumb_func_start sub_8098710
sub_8098710: @ 8098710
	push {lr}
	ldr r0, _0809872C
	ldr r2, _08098730
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, 0
	beq _08098728
	movs r0, 0
	strb r0, [r1]
	movs r0, 0x1
	bl sub_8098690
_08098728:
	pop {r0}
	bx r0
	.align 2, 0
_0809872C: .4byte 0x02000000
_08098730: .4byte 0x000008af
	thumb_func_end sub_8098710

	thumb_func_start sub_8098734
sub_8098734: @ 8098734
	push {lr}
	ldr r2, _08098774
	ldr r1, _08098778
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _08098770
	movs r0, 0x8B
	lsls r0, 4
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1E
	bls _08098770
	movs r0, 0
	strb r0, [r1]
	movs r3, 0
	ldr r0, _0809877C
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, 0
	bne _08098768
	movs r3, 0x1
_08098768:
	strb r3, [r1]
	ldrb r0, [r1]
	bl sub_8098690
_08098770:
	pop {r0}
	bx r0
	.align 2, 0
_08098774: .4byte 0x02000000
_08098778: .4byte 0x000008af
_0809877C: .4byte 0x000008b1
	thumb_func_end sub_8098734

	thumb_func_start sub_8098780
sub_8098780: @ 8098780
	push {r4-r6,lr}
	sub sp, 0x10
	movs r4, 0x1
	ldr r6, _080987D4
	movs r5, 0x80
	lsls r5, 9
_0809878C:
	movs r0, 0x64
	muls r0, r4
	ldr r1, _080987D8
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _080987A0
	movs r0, 0x1
_080987A0:
	movs r1, 0x10
	cmp r0, 0
	beq _080987A8
	movs r1, 0xC
_080987A8:
	lsrs r2, r5, 16
	str r1, [sp]
	movs r0, 0x4
	str r0, [sp, 0x4]
	str r0, [sp, 0x8]
	movs r0, 0x3
	str r0, [sp, 0xC]
	adds r0, r6, 0
	movs r1, 0x7
	adds r3, r6, 0
	bl sub_809D104
	movs r0, 0xC0
	lsls r0, 10
	adds r5, r0
	adds r4, 0x1
	cmp r4, 0x5
	ble _0809878C
	add sp, 0x10
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080987D4: .4byte 0x020000a8
_080987D8: .4byte gPlayerParty
	thumb_func_end sub_8098780

	thumb_func_start sub_80987DC
sub_80987DC: @ 80987DC
	push {lr}
	sub sp, 0x10
	bl sub_8098780
	ldr r0, _08098804
	ldr r3, _08098808
	movs r1, 0
	str r1, [sp]
	str r1, [sp, 0x4]
	movs r1, 0xC
	str r1, [sp, 0x8]
	movs r1, 0x16
	str r1, [sp, 0xC]
	movs r1, 0xA
	movs r2, 0
	bl sub_809D034
	add sp, 0x10
	pop {r0}
	bx r0
	.align 2, 0
_08098804: .4byte 0x06007800
_08098808: .4byte 0x020000a8
	thumb_func_end sub_80987DC

	thumb_func_start sub_809880C
sub_809880C: @ 809880C
	push {lr}
	ldr r0, _08098828
	ldr r1, _0809882C
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	movs r0, 0x6
	bl PlaySE
	bl sub_80984E8
	pop {r0}
	bx r0
	.align 2, 0
_08098828: .4byte 0x02000000
_0809882C: .4byte 0x000008ae
	thumb_func_end sub_809880C

	thumb_func_start sub_8098830
sub_8098830: @ 8098830
	push {r4,r5,lr}
	ldr r5, _08098848
	ldr r0, _0809884C
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, 0x1
	beq _08098866
	cmp r0, 0x1
	bgt _08098850
	cmp r0, 0
	beq _08098856
	b _08098890
	.align 2, 0
_08098848: .4byte 0x02000000
_0809884C: .4byte 0x000008ae
_08098850:
	cmp r0, 0x2
	beq _0809888C
	b _08098890
_08098856:
	bl sub_8098520
	lsls r0, 24
	cmp r0, 0
	bne _08098890
	bl sub_809B068
	b _0809887E
_08098866:
	bl sub_809AC00
	lsls r0, 24
	cmp r0, 0
	bne _08098890
	ldr r1, _08098888
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809887E
	bl BoxSetMosaic
_0809887E:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _08098890
	.align 2, 0
_08098888: .4byte 0x000011f6
_0809888C:
	movs r0, 0
	b _08098892
_08098890:
	movs r0, 0x1
_08098892:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8098830

	thumb_func_start sub_8098898
sub_8098898: @ 8098898
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0xA
	movs r1, 0x10
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuDrawTextWindow
	ldr r1, _080988C4
	lsls r0, r5, 3
	adds r0, r1
	ldrb r0, [r0, 0x4]
	cmp r0, 0x6
	bls _080988B8
	b _080989F4
_080988B8:
	lsls r0, 2
	ldr r1, _080988C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080988C4: .4byte gUnknown_083B6DF4
_080988C8: .4byte _080988CC
	.align 2, 0
_080988CC:
	.4byte _080989F4
	.4byte _08098930
	.4byte _080988E8
	.4byte _08098974
	.4byte _08098954
	.4byte _08098910
	.4byte _080989B8
_080988E8:
	ldr r4, _08098904
	ldr r1, _08098908
	lsls r0, r5, 3
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl StringCopy
	adds r2, r0, 0
	ldr r0, _0809890C
	adds r4, r0
	adds r0, r2, 0
	adds r1, r4, 0
	b _080989FE
	.align 2, 0
_08098904: .4byte 0x02002694
_08098908: .4byte gUnknown_083B6DF4
_0809890C: .4byte 0xffffeb66
_08098910:
	ldr r4, _08098928
	ldr r1, _0809892C
	lsls r0, r5, 3
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl StringCopy
	adds r2, r0, 0
	adds r4, 0x50
	adds r1, r4, 0
	b _080989FE
	.align 2, 0
_08098928: .4byte 0x02002694
_0809892C: .4byte gUnknown_083B6DF4
_08098930:
	ldr r0, _08098948
	ldr r2, _0809894C
	adds r1, r0, r2
	bl StringCopy
	adds r2, r0, 0
	ldr r1, _08098950
	lsls r0, r5, 3
	adds r0, r1
	ldr r1, [r0]
	adds r0, r2, 0
	b _080989FE
	.align 2, 0
_08098948: .4byte 0x02002694
_0809894C: .4byte 0xffffeb66
_08098950: .4byte gUnknown_083B6DF4
_08098954:
	ldr r0, _0809896C
	adds r1, r0, 0
	adds r1, 0x50
	bl StringCopy
	adds r2, r0, 0
	ldr r1, _08098970
	lsls r0, r5, 3
	adds r0, r1
	ldr r1, [r0]
	adds r0, r2, 0
	b _080989FE
	.align 2, 0
_0809896C: .4byte 0x02002694
_08098970: .4byte gUnknown_083B6DF4
_08098974:
	ldr r1, _080989AC
	lsls r0, r5, 3
	adds r0, r1
	ldr r6, [r0]
	adds r0, r6, 0
	bl StringLength
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r4, r6, r4
	adds r4, 0x1
	ldr r5, _080989B0
	adds r0, r5, 0
	adds r1, r6, 0
	bl StringCopy
	adds r2, r0, 0
	ldr r0, _080989B4
	adds r5, r0
	adds r0, r2, 0
	adds r1, r5, 0
	bl StringCopy
	adds r2, r0, 0
	adds r1, r4, 0
	b _080989FE
	.align 2, 0
_080989AC: .4byte gUnknown_083B6DF4
_080989B0: .4byte 0x02002694
_080989B4: .4byte 0xffffeb66
_080989B8:
	ldr r1, _080989EC
	lsls r0, r5, 3
	adds r0, r1
	ldr r6, [r0]
	adds r0, r6, 0
	bl StringLength
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r4, r6, r4
	subs r4, 0x1
	ldr r5, _080989F0
	adds r0, r5, 0
	adds r1, r6, 0
	bl StringCopy
	adds r2, r0, 0
	subs r0, r2, 0x1
	adds r5, 0x50
	adds r1, r5, 0
	bl StringCopy
	adds r2, r0, 0
	adds r1, r4, 0
	b _080989FE
	.align 2, 0
_080989EC: .4byte gUnknown_083B6DF4
_080989F0: .4byte 0x02002694
_080989F4:
	ldr r0, _08098A2C
	ldr r2, _08098A30
	lsls r1, r5, 3
	adds r1, r2
	ldr r1, [r1]
_080989FE:
	bl StringCopy
	adds r2, r0, 0
	ldr r0, _08098A34
	adds r3, r0, 0
	subs r3, 0x12
	cmp r2, r0
	bcs _08098A18
	movs r1, 0
_08098A10:
	strb r1, [r2]
	adds r2, 0x1
	cmp r2, r0
	bcc _08098A10
_08098A18:
	movs r0, 0xFF
	strb r0, [r2]
	adds r0, r3, 0
	movs r1, 0xB
	movs r2, 0x11
	bl MenuPrint
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098A2C: .4byte 0x02002694
_08098A30: .4byte gUnknown_083B6DF4
_08098A34: .4byte 0x020026a6
	thumb_func_end sub_8098898

	thumb_func_start sub_8098A38
sub_8098A38: @ 8098A38
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x17
	movs r1, 0xA
	movs r2, 0
	bl DisplayYesNoMenu
	lsls r4, 24
	asrs r4, 24
	adds r0, r4, 0
	bl MoveMenuCursor
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8098A38

	thumb_func_start sub_8098A5C
sub_8098A5C: @ 8098A5C
	push {lr}
	bl sub_8072DEC
	movs r0, 0xA
	movs r1, 0x10
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	movs r0, 0x17
	movs r1, 0xA
	movs r2, 0x1D
	movs r3, 0xF
	bl MenuZeroFillWindowRect
	pop {r0}
	bx r0
	thumb_func_end sub_8098A5C

	thumb_func_start sub_8098A80
sub_8098A80: @ 8098A80
	push {lr}
	bl sub_809CDCC
	movs r0, 0xC
	bl sub_809CDEC
	movs r0, 0xD
	bl sub_809CDEC
	movs r0, 0xE
	bl sub_809CDEC
	movs r0, 0xF
	bl sub_809CDEC
	bl sub_809CE84
	pop {r0}
	bx r0
	thumb_func_end sub_8098A80

	thumb_func_start sub_8098AA8
sub_8098AA8: @ 8098AA8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	bl sub_809CDCC
	cmp r4, 0x1
	beq _08098AE6
	cmp r4, 0x1
	bgt _08098AC2
	cmp r4, 0
	beq _08098ACC
	b _08098B32
_08098AC2:
	cmp r5, 0x2
	beq _08098B00
	cmp r5, 0x3
	beq _08098B1A
	b _08098B32
_08098ACC:
	movs r0, 0x10
	bl sub_809CDEC
	movs r0, 0x11
	bl sub_809CDEC
	movs r0, 0x12
	bl sub_809CDEC
	movs r0, 0x13
	bl sub_809CDEC
	b _08098B32
_08098AE6:
	movs r0, 0x14
	bl sub_809CDEC
	movs r0, 0x15
	bl sub_809CDEC
	movs r0, 0x16
	bl sub_809CDEC
	movs r0, 0x17
	bl sub_809CDEC
	b _08098B32
_08098B00:
	movs r0, 0x18
	bl sub_809CDEC
	movs r0, 0x19
	bl sub_809CDEC
	movs r0, 0x1A
	bl sub_809CDEC
	movs r0, 0x1B
	bl sub_809CDEC
	b _08098B32
_08098B1A:
	movs r0, 0x1C
	bl sub_809CDEC
	movs r0, 0x1D
	bl sub_809CDEC
	movs r0, 0x1E
	bl sub_809CDEC
	movs r0, 0x1F
	bl sub_809CDEC
_08098B32:
	bl sub_809CE84
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8098AA8

	thumb_func_start get_preferred_box
get_preferred_box: @ 8098B3C
	ldr r0, _08098B44
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08098B44: .4byte gPokemonStorage
	thumb_func_end get_preferred_box

	thumb_func_start sub_8098B48
sub_8098B48: @ 8098B48
	push {r4,r5,lr}
	bl sub_809D51C
	movs r2, 0
	ldr r1, _08098BD8
	ldr r0, [r1]
	ldr r4, _08098BDC
	adds r3, r0, r4
	movs r4, 0
	adds r5, r1, 0
_08098B5C:
	lsls r0, r2, 1
	adds r0, r3, r0
	strh r4, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x27
	bls _08098B5C
	movs r2, 0
	ldr r0, _08098BD8
	ldr r0, [r0]
	movs r1, 0x89
	lsls r1, 5
	adds r3, r0, r1
	movs r1, 0
_08098B7A:
	lsls r0, r2, 1
	adds r0, r3, r0
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x27
	bls _08098B7A
	movs r2, 0
	ldr r0, _08098BD8
	ldr r0, [r0]
	ldr r4, _08098BE0
	adds r3, r0, r4
	movs r1, 0
_08098B96:
	lsls r0, r2, 2
	adds r0, r3, r0
	str r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x5
	bls _08098B96
	movs r2, 0
	ldr r0, _08098BD8
	ldr r0, [r0]
	ldr r1, _08098BE4
	adds r3, r0, r1
	movs r1, 0
_08098BB2:
	lsls r0, r2, 2
	adds r0, r3, r0
	str r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x1D
	bls _08098BB2
	ldr r0, [r5]
	ldr r2, _08098BE8
	adds r1, r0, r2
	movs r2, 0
	str r2, [r1]
	ldr r4, _08098BEC
	adds r0, r4
	strh r2, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08098BD8: .4byte gUnknown_083B6DB4
_08098BDC: .4byte 0x000010d0
_08098BE0: .4byte 0x00001038
_08098BE4: .4byte 0x00001050
_08098BE8: .4byte 0x00001034
_08098BEC: .4byte 0x00000d5c
	thumb_func_end sub_8098B48

	thumb_func_start sub_8098BF0
sub_8098BF0: @ 8098BF0
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r0, _08098C38
	ldr r5, [r0]
	ldr r0, _08098C3C
	adds r4, r5, r0
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r6, r0, 0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0x7
	str r1, [sp, 0x4]
	adds r1, r6, 0
	movs r2, 0
	movs r3, 0
	bl sub_8099AFC
	ldr r1, _08098C40
	adds r5, r1
	str r0, [r5]
	ldr r1, _08098C44
	str r1, [r0, 0x1C]
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098C38: .4byte gUnknown_083B6DB4
_08098C3C: .4byte 0x000025b4
_08098C40: .4byte 0x00001034
_08098C44: .4byte sub_80999C4
	thumb_func_end sub_8098BF0

	thumb_func_start sub_8098C48
sub_8098C48: @ 8098C48
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	ldr r1, _08098CCC
	adds r6, r0, r1
	movs r0, 0
	mov r8, r0
	movs r7, 0
_08098C6A:
	movs r5, 0
	adds r1, r7, 0x1
	mov r9, r1
_08098C70:
	adds r0, r6, 0
	movs r1, 0x41
	bl GetBoxMonData
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _08098CD8
	adds r0, r6, 0
	movs r1, 0
	bl GetBoxMonData
	adds r1, r0, 0
	lsls r2, r5, 1
	adds r2, r5
	lsls r2, 19
	movs r3, 0xC8
	lsls r3, 15
	adds r2, r3
	asrs r2, 16
	lsls r3, r7, 1
	adds r3, r7
	lsls r3, 19
	movs r0, 0xB0
	lsls r0, 14
	adds r3, r0
	movs r0, 0x2
	str r0, [sp]
	movs r0, 0x12
	subs r0, r5
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	adds r0, r4, 0
	asrs r3, 16
	bl sub_8099AFC
	ldr r1, _08098CD0
	ldr r1, [r1]
	mov r3, r8
	lsls r2, r3, 2
	ldr r3, _08098CD4
	adds r1, r3
	adds r1, r2
	str r0, [r1]
	b _08098CE8
	.align 2, 0
_08098CCC: .4byte gUnknown_020300A4
_08098CD0: .4byte gUnknown_083B6DB4
_08098CD4: .4byte 0x00001050
_08098CD8:
	ldr r0, _08098D18
	ldr r0, [r0]
	mov r2, r8
	lsls r1, r2, 2
	ldr r3, _08098D1C
	adds r0, r3
	adds r0, r1
	str r4, [r0]
_08098CE8:
	adds r6, 0x50
	mov r0, r8
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _08098C70
	mov r1, r9
	lsls r0, r1, 16
	lsrs r7, r0, 16
	cmp r7, 0x4
	bls _08098C6A
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098D18: .4byte gUnknown_083B6DB4
_08098D1C: .4byte 0x00001050
	thumb_func_end sub_8098C48

	thumb_func_start sub_8098D20
sub_8098D20: @ 8098D20
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r2, r1, 4
	subs r2, r1
	lsls r2, 5
	lsls r0, r4, 2
	mov r9, r0
	adds r0, r4
	lsls r0, 4
	ldr r1, _08098DD4
	adds r0, r1
	adds r7, r2, r0
	adds r0, r7, 0
	movs r1, 0x41
	bl GetBoxMonData
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	cmp r0, 0
	beq _08098DC4
	adds r0, r4, 0
	movs r1, 0x6
	bl __umodsi3
	adds r6, r0, 0
	lsls r0, r6, 24
	lsrs r0, 24
	lsls r5, r0, 1
	adds r5, r0
	lsls r5, 19
	movs r1, 0xC8
	lsls r1, 15
	adds r5, r1
	lsrs r5, 16
	adds r0, r4, 0
	movs r1, 0x6
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 1
	adds r4, r0
	lsls r4, 19
	movs r2, 0xB0
	lsls r2, 14
	adds r4, r2
	lsrs r4, 16
	adds r0, r7, 0
	movs r1, 0
	bl GetBoxMonData
	adds r1, r0, 0
	movs r0, 0x2
	str r0, [sp]
	movs r0, 0x12
	subs r0, r6
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	mov r0, r8
	adds r2, r5, 0
	adds r3, r4, 0
	bl sub_8099AFC
	ldr r1, _08098DD8
	ldr r1, [r1]
	ldr r2, _08098DDC
	adds r1, r2
	add r1, r9
	str r0, [r1]
_08098DC4:
	add sp, 0x8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098DD4: .4byte gUnknown_020300A4
_08098DD8: .4byte gUnknown_083B6DB4
_08098DDC: .4byte 0x00001050
	thumb_func_end sub_8098D20

	thumb_func_start sub_8098DE0
sub_8098DE0: @ 8098DE0
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	movs r2, 0
	ldr r0, _08098E18
	ldr r0, [r0]
	ldr r1, _08098E1C
	adds r3, r0, r1
	movs r6, 0x1
	ldr r5, _08098E20
_08098DF4:
	lsls r0, r2, 2
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, 0
	beq _08098E08
	strh r4, [r0, 0x32]
	ldr r0, [r1]
	strh r6, [r0, 0x36]
	ldr r0, [r1]
	str r5, [r0, 0x1C]
_08098E08:
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x1D
	bls _08098DF4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098E18: .4byte gUnknown_083B6DB4
_08098E1C: .4byte 0x00001050
_08098E20: .4byte sub_8098E68
	thumb_func_end sub_8098DE0

	thumb_func_start sub_8098E24
sub_8098E24: @ 8098E24
	push {lr}
	adds r2, r0, 0
	ldrh r1, [r2, 0x30]
	movs r3, 0x30
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _08098E40
	subs r0, r1, 0x1
	strh r0, [r2, 0x30]
	ldrh r0, [r2, 0x32]
	ldrh r1, [r2, 0x20]
	adds r0, r1
	strh r0, [r2, 0x20]
	b _08098E56
_08098E40:
	ldr r0, _08098E5C
	ldr r1, [r0]
	ldr r3, _08098E60
	adds r1, r3
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	ldrh r0, [r2, 0x34]
	strh r0, [r2, 0x20]
	ldr r0, _08098E64
	str r0, [r2, 0x1C]
_08098E56:
	pop {r0}
	bx r0
	.align 2, 0
_08098E5C: .4byte gUnknown_083B6DB4
_08098E60: .4byte 0x00001178
_08098E64: .4byte SpriteCallbackDummy
	thumb_func_end sub_8098E24

	thumb_func_start sub_8098E68
sub_8098E68: @ 8098E68
	push {lr}
	adds r2, r0, 0
	ldrh r1, [r2, 0x36]
	movs r3, 0x36
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _08098E7C
	subs r0, r1, 0x1
	strh r0, [r2, 0x36]
	b _08098E98
_08098E7C:
	ldrh r0, [r2, 0x32]
	ldrh r1, [r2, 0x20]
	adds r0, r1
	strh r0, [r2, 0x20]
	ldrh r1, [r2, 0x24]
	adds r0, r1
	strh r0, [r2, 0x38]
	subs r0, 0x45
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xB6
	bls _08098E98
	ldr r0, _08098E9C
	str r0, [r2, 0x1C]
_08098E98:
	pop {r0}
	bx r0
	.align 2, 0
_08098E9C: .4byte SpriteCallbackDummy
	thumb_func_end sub_8098E68

	thumb_func_start sub_8098EA0
sub_8098EA0: @ 8098EA0
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	ldr r0, _08098ED8
	ldr r0, [r0]
	ldr r1, _08098EDC
	adds r7, r0, r1
_08098EB0:
	lsls r0, r5, 2
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, 0
	beq _08098EC2
	bl sub_8099BE0
	movs r0, 0
	str r0, [r4]
_08098EC2:
	adds r0, r5, 0x6
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x4
	bls _08098EB0
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098ED8: .4byte gUnknown_083B6DB4
_08098EDC: .4byte 0x00001050
	thumb_func_end sub_8098EA0

	thumb_func_start sub_8098EE0
sub_8098EE0: @ 8098EE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 16
	lsrs r1, 16
	str r1, [sp, 0x8]
	lsls r2, 16
	movs r0, 0x2C
	str r0, [sp, 0x10]
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 19
	movs r1, 0xC8
	lsls r1, 15
	adds r0, r1
	lsrs r0, 16
	mov r10, r0
	ldr r0, [sp, 0x8]
	adds r0, 0x1
	lsrs r3, r2, 16
	str r3, [sp, 0xC]
	asrs r2, 16
	adds r1, r0, 0
	muls r1, r2
	mov r4, r10
	subs r1, r4, r1
	movs r0, 0x12
	subs r0, r6
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x18]
	movs r0, 0
	str r0, [sp, 0x14]
	mov r9, r0
	ldr r0, _08098FF8
	ldr r0, [r0]
	ldr r2, _08098FFC
	adds r2, r0
	mov r8, r2
	ldr r3, _08099000
	adds r3, r0, r3
	str r3, [sp, 0x20]
	lsls r1, 16
	str r1, [sp, 0x1C]
_08098F42:
	mov r4, r8
	ldrb r0, [r4]
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	lsls r7, r6, 2
	adds r1, r7, r6
	lsls r1, 4
	ldr r2, _08099004
	adds r4, r1, r2
	adds r0, r4
	movs r1, 0x41
	bl GetBoxMonData
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	beq _08098FC8
	mov r1, r8
	ldrb r0, [r1]
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	adds r0, r4
	movs r1, 0
	bl GetBoxMonData
	adds r1, r0, 0
	ldr r2, [sp, 0x10]
	lsls r3, r2, 16
	asrs r3, 16
	movs r0, 0x2
	str r0, [sp]
	ldr r4, [sp, 0x18]
	str r4, [sp, 0x4]
	adds r0, r5, 0
	ldr r4, [sp, 0x1C]
	asrs r2, r4, 16
	bl sub_8099AFC
	ldr r2, [sp, 0x20]
	adds r1, r2, r7
	str r0, [r1]
	cmp r0, 0
	beq _08098FC8
	mov r3, sp
	ldrh r3, [r3, 0x8]
	strh r3, [r0, 0x30]
	ldr r0, [r1]
	mov r4, sp
	ldrh r4, [r4, 0xC]
	strh r4, [r0, 0x32]
	ldr r0, [r1]
	mov r2, r10
	strh r2, [r0, 0x34]
	ldr r1, [r1]
	ldr r0, _08099008
	str r0, [r1, 0x1C]
	ldr r0, [sp, 0x14]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x14]
_08098FC8:
	adds r0, r6, 0x6
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, [sp, 0x10]
	adds r0, 0x18
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x10]
	mov r0, r9
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	cmp r0, 0x4
	bls _08098F42
	ldr r0, [sp, 0x14]
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08098FF8: .4byte gUnknown_083B6DB4
_08098FFC: .4byte 0x0000117d
_08099000: .4byte 0x00001050
_08099004: .4byte gUnknown_020300A4
_08099008: .4byte sub_8098E24
	thumb_func_end sub_8098EE0

	thumb_func_start sub_809900C
sub_809900C: @ 809900C
	push {r4-r6,lr}
	lsls r1, 24
	lsrs r1, 24
	ldr r4, _08099058
	ldr r5, [r4]
	ldr r3, _0809905C
	adds r2, r5, r3
	movs r3, 0
	strb r3, [r2]
	ldr r6, _08099060
	adds r2, r5, r6
	strb r0, [r2]
	ldr r2, _08099064
	adds r0, r5, r2
	strb r1, [r0]
	subs r6, 0xB
	adds r2, r5, r6
	movs r0, 0x20
	strh r0, [r2]
	lsls r1, 24
	asrs r1, 24
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	negs r0, r0
	adds r6, 0x4
	adds r2, r5, r6
	strh r0, [r2]
	ldr r2, _08099068
	adds r0, r5, r2
	strh r3, [r0]
	cmp r1, 0
	ble _08099070
	ldr r3, _0809906C
	adds r1, r5, r3
	movs r0, 0
	b _08099076
	.align 2, 0
_08099058: .4byte gUnknown_083B6DB4
_0809905C: .4byte 0x0000117c
_08099060: .4byte 0x0000117d
_08099064: .4byte 0x0000117b
_08099068: .4byte 0x00001178
_0809906C: .4byte 0x0000117a
_08099070:
	ldr r6, _080990A0
	adds r1, r5, r6
	movs r0, 0x5
_08099076:
	strb r0, [r1]
	ldr r2, [r4]
	ldr r1, _080990A0
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, 0x64
	ldr r3, _080990A4
	adds r1, r2, r3
	strh r0, [r1]
	ldr r6, _080990A8
	adds r2, r6
	movs r1, 0
	ldrsh r0, [r2, r1]
	bl sub_8098DE0
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080990A0: .4byte 0x0000117a
_080990A4: .4byte 0x00001174
_080990A8: .4byte 0x00001176
	thumb_func_end sub_809900C

	thumb_func_start sub_80990AC
sub_80990AC: @ 80990AC
	push {r4-r6,lr}
	ldr r0, _080990D4
	ldr r4, [r0]
	ldr r0, _080990D8
	adds r3, r4, r0
	ldrh r0, [r3]
	cmp r0, 0
	beq _080990C0
	subs r0, 0x1
	strh r0, [r3]
_080990C0:
	ldr r1, _080990DC
	adds r6, r4, r1
	ldrb r0, [r6]
	cmp r0, 0x1
	beq _08099138
	cmp r0, 0x1
	bgt _080990E0
	cmp r0, 0
	beq _080990E8
	b _080991F0
	.align 2, 0
_080990D4: .4byte gUnknown_083B6DB4
_080990D8: .4byte 0x00001172
_080990DC: .4byte 0x0000117c
_080990E0:
	cmp r0, 0x2
	bne _080990E6
	b _080991E0
_080990E6:
	b _080991F0
_080990E8:
	ldr r2, _0809912C
	adds r5, r4, r2
	ldr r3, _08099130
	adds r0, r4, r3
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r0, r1
	strh r0, [r5]
	subs r0, 0x41
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xBA
	bhi _08099104
	b _080991F8
_08099104:
	adds r2, 0x6
	adds r0, r4, r2
	ldrb r0, [r0]
	bl sub_8098EA0
	ldr r3, _08099134
	adds r0, r4, r3
	movs r1, 0
	ldrsb r1, [r0, r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	ldrh r1, [r5]
	adds r0, r1
	strh r0, [r5]
	ldrb r0, [r6]
	adds r0, 0x1
	strb r0, [r6]
	b _080991F8
	.align 2, 0
_0809912C: .4byte 0x00001174
_08099130: .4byte 0x00001176
_08099134: .4byte 0x0000117b
_08099138:
	ldr r2, _08099194
	adds r1, r4, r2
	ldr r5, _08099198
	adds r2, r4, r5
	ldrh r0, [r2]
	ldrh r5, [r1]
	adds r0, r5
	strh r0, [r1]
	ldr r0, _0809919C
	adds r5, r4, r0
	ldrb r0, [r5]
	ldrh r1, [r3]
	movs r3, 0
	ldrsh r2, [r2, r3]
	bl sub_8098EE0
	ldr r2, _080991A0
	adds r1, r4, r2
	lsls r0, 24
	lsrs r0, 24
	ldrh r3, [r1]
	adds r0, r3
	strh r0, [r1]
	ldr r1, _080991A4
	adds r0, r4, r1
	movs r1, 0
	ldrsb r1, [r0, r1]
	cmp r1, 0
	ble _08099178
	ldrb r0, [r5]
	cmp r0, 0x5
	beq _08099182
_08099178:
	cmp r1, 0
	bge _080991B0
	ldrb r0, [r5]
	cmp r0, 0
	bne _080991B0
_08099182:
	ldr r0, _080991A8
	ldr r1, [r0]
	ldr r2, _080991AC
	adds r1, r2
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080991F8
	.align 2, 0
_08099194: .4byte 0x00001174
_08099198: .4byte 0x00001176
_0809919C: .4byte 0x0000117a
_080991A0: .4byte 0x00001178
_080991A4: .4byte 0x0000117b
_080991A8: .4byte gUnknown_083B6DB4
_080991AC: .4byte 0x0000117c
_080991B0:
	ldr r0, _080991D0
	ldr r1, [r0]
	ldr r5, _080991D4
	adds r3, r1, r5
	ldr r2, _080991D8
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r5, [r3]
	adds r0, r5
	movs r2, 0
	strb r0, [r3]
	ldr r0, _080991DC
	adds r1, r0
	strb r2, [r1]
	b _080991F8
	.align 2, 0
_080991D0: .4byte gUnknown_083B6DB4
_080991D4: .4byte 0x0000117a
_080991D8: .4byte 0x0000117b
_080991DC: .4byte 0x0000117c
_080991E0:
	ldr r1, _080991F4
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _080991F8
	ldrh r0, [r3]
	adds r0, 0x1
	strh r0, [r3]
_080991F0:
	movs r0, 0
	b _080991FA
	.align 2, 0
_080991F4: .4byte 0x00001178
_080991F8:
	movs r0, 0x1
_080991FA:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80990AC

	thumb_func_start sub_8099200
sub_8099200: @ 8099200
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r4, _080992A0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r1, r0, 0
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xB
	str r0, [sp, 0x4]
	adds r0, r5, 0
	movs r2, 0x68
	movs r3, 0x40
	bl sub_8099AFC
	ldr r1, _080992A4
	ldr r1, [r1]
	ldr r2, _080992A8
	adds r1, r2
	str r0, [r1]
	movs r7, 0x1
	movs r6, 0x1
_08099246:
	movs r0, 0x64
	adds r1, r6, 0
	muls r1, r0
	ldr r0, _080992A0
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0
	beq _080992AC
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r1, r0, 0
	subs r0, r6, 0x1
	lsls r3, r0, 1
	adds r3, r0
	lsls r3, 19
	movs r0, 0x80
	lsls r0, 13
	adds r3, r0
	asrs r3, 16
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xB
	str r0, [sp, 0x4]
	adds r0, r5, 0
	movs r2, 0x98
	bl sub_8099AFC
	ldr r1, _080992A4
	ldr r1, [r1]
	lsls r2, r6, 2
	ldr r3, _080992A8
	adds r1, r3
	adds r1, r2
	str r0, [r1]
	adds r0, r7, 0x1
	lsls r0, 16
	lsrs r7, r0, 16
	b _080992BA
	.align 2, 0
_080992A0: .4byte gPlayerParty
_080992A4: .4byte gUnknown_083B6DB4
_080992A8: .4byte 0x00001038
_080992AC:
	ldr r0, _08099308
	ldr r0, [r0]
	lsls r1, r6, 2
	ldr r2, _0809930C
	adds r0, r2
	adds r0, r1
	str r5, [r0]
_080992BA:
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x5
	bls _08099246
	mov r3, r8
	cmp r3, 0
	bne _080992FA
	movs r6, 0
	cmp r6, r7
	bcs _080992FA
	ldr r0, _08099308
	ldr r0, [r0]
	ldr r1, _0809930C
	adds r3, r0, r1
	movs r4, 0x4
_080992DA:
	lsls r1, r6, 2
	adds r1, r3, r1
	ldr r2, [r1]
	ldrh r0, [r2, 0x22]
	subs r0, 0xA0
	strh r0, [r2, 0x22]
	ldr r1, [r1]
	adds r1, 0x3E
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, r7
	bcc _080992DA
_080992FA:
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099308: .4byte gUnknown_083B6DB4
_0809930C: .4byte 0x00001038
	thumb_func_end sub_8099200

	thumb_func_start sub_8099310
sub_8099310: @ 8099310
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _08099368
	ldr r2, [r0]
	ldr r0, _0809936C
	adds r1, r2, r0
	movs r0, 0
	strb r0, [r1]
	movs r5, 0
	movs r6, 0
	mov r8, r2
	ldr r7, _0809936C
	add r7, r8
_0809932C:
	lsls r1, r5, 2
	ldr r0, _08099370
	add r0, r8
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, 0
	beq _08099354
	cmp r5, r6
	beq _0809934E
	adds r1, r6, 0
	bl sub_8099388
	movs r0, 0
	str r0, [r4]
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
_0809934E:
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
_08099354:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _0809932C
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099368: .4byte gUnknown_083B6DB4
_0809936C: .4byte 0x00001171
_08099370: .4byte 0x00001038
	thumb_func_end sub_8099310

	thumb_func_start sub_8099374
sub_8099374: @ 8099374
	ldr r0, _08099380
	ldr r0, [r0]
	ldr r1, _08099384
	adds r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08099380: .4byte gUnknown_083B6DB4
_08099384: .4byte 0x00001171
	thumb_func_end sub_8099374

	thumb_func_start sub_8099388
sub_8099388: @ 8099388
	push {r4,lr}
	adds r2, r0, 0
	lsls r1, 16
	lsrs r1, 16
	strh r1, [r2, 0x30]
	cmp r1, 0
	bne _0809939C
	movs r3, 0x68
	movs r4, 0x40
	b _080993AE
_0809939C:
	movs r3, 0x98
	subs r1, 0x1
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 19
	movs r1, 0x80
	lsls r1, 13
	adds r0, r1
	lsrs r4, r0, 16
_080993AE:
	ldrh r0, [r2, 0x20]
	lsls r0, 3
	strh r0, [r2, 0x32]
	ldrh r0, [r2, 0x22]
	lsls r0, 3
	strh r0, [r2, 0x34]
	lsls r1, r3, 3
	movs r3, 0x32
	ldrsh r0, [r2, r3]
	subs r0, r1, r0
	cmp r0, 0
	bge _080993C8
	adds r0, 0x7
_080993C8:
	asrs r0, 3
	strh r0, [r2, 0x36]
	lsls r0, r4, 16
	asrs r0, 13
	movs r3, 0x34
	ldrsh r1, [r2, r3]
	subs r0, r1
	cmp r0, 0
	bge _080993DC
	adds r0, 0x7
_080993DC:
	asrs r0, 3
	strh r0, [r2, 0x38]
	movs r0, 0x8
	strh r0, [r2, 0x3A]
	ldr r0, _080993F0
	str r0, [r2, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080993F0: .4byte sub_80993F4
	thumb_func_end sub_8099388

	thumb_func_start sub_80993F4
sub_80993F4: @ 80993F4
	push {r4,lr}
	adds r3, r0, 0
	ldrh r2, [r3, 0x3A]
	movs r1, 0x3A
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _08099424
	ldrh r0, [r3, 0x36]
	ldrh r4, [r3, 0x32]
	adds r0, r4
	strh r0, [r3, 0x32]
	ldrh r1, [r3, 0x38]
	ldrh r4, [r3, 0x34]
	adds r1, r4
	strh r1, [r3, 0x34]
	lsls r0, 16
	asrs r0, 19
	strh r0, [r3, 0x20]
	lsls r1, 16
	asrs r1, 19
	strh r1, [r3, 0x22]
	subs r0, r2, 0x1
	strh r0, [r3, 0x3A]
	b _08099468
_08099424:
	movs r1, 0x30
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _08099434
	movs r0, 0x68
	strh r0, [r3, 0x20]
	movs r0, 0x40
	b _08099446
_08099434:
	movs r0, 0x98
	strh r0, [r3, 0x20]
	movs r4, 0x30
	ldrsh r1, [r3, r4]
	subs r1, 0x1
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, 0x10
_08099446:
	strh r0, [r3, 0x22]
	ldr r0, _08099470
	str r0, [r3, 0x1C]
	ldr r0, _08099474
	ldr r2, [r0]
	movs r0, 0x30
	ldrsh r1, [r3, r0]
	lsls r1, 2
	ldr r4, _08099478
	adds r0, r2, r4
	adds r0, r1
	str r3, [r0]
	ldr r0, _0809947C
	adds r2, r0
	ldrb r0, [r2]
	subs r0, 0x1
	strb r0, [r2]
_08099468:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099470: .4byte SpriteCallbackDummy
_08099474: .4byte gUnknown_083B6DB4
_08099478: .4byte 0x00001038
_0809947C: .4byte 0x00001171
	thumb_func_end sub_80993F4

	thumb_func_start sub_8099480
sub_8099480: @ 8099480
	push {r4,lr}
	ldr r0, _080994A0
	ldr r0, [r0]
	ldr r1, _080994A4
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, 0
	beq _08099498
	bl sub_8099BE0
	movs r0, 0
	str r0, [r4]
_08099498:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080994A0: .4byte gUnknown_083B6DB4
_080994A4: .4byte 0x00001034
	thumb_func_end sub_8099480

	thumb_func_start sub_80994A8
sub_80994A8: @ 80994A8
	push {r4-r6,lr}
	movs r3, 0
	ldr r1, _080994FC
	ldr r1, [r1]
	ldr r2, _08099500
	adds r5, r1, r2
	lsls r0, 16
	asrs r4, r0, 16
	movs r6, 0x5
	negs r6, r6
_080994BC:
	lsls r0, r3, 2
	adds r2, r5, r0
	ldr r1, [r2]
	cmp r1, 0
	beq _0809950E
	ldrh r0, [r1, 0x22]
	adds r0, r4, r0
	strh r0, [r1, 0x22]
	ldr r2, [r2]
	ldrh r1, [r2, 0x26]
	ldrh r0, [r2, 0x22]
	adds r1, r0
	adds r0, r2, 0
	adds r0, 0x29
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	adds r0, r1
	lsls r0, 16
	movs r1, 0x80
	lsls r1, 13
	adds r0, r1
	lsrs r0, 16
	cmp r0, 0xC0
	bls _08099504
	adds r0, r2, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	b _0809950E
	.align 2, 0
_080994FC: .4byte gUnknown_083B6DB4
_08099500: .4byte 0x00001038
_08099504:
	adds r2, 0x3E
	ldrb r1, [r2]
	adds r0, r6, 0
	ands r0, r1
	strb r0, [r2]
_0809950E:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x5
	bls _080994BC
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80994A8

	thumb_func_start sub_8099520
sub_8099520: @ 8099520
	push {r4,lr}
	lsls r0, 24
	ldr r1, _08099544
	ldr r1, [r1]
	lsrs r0, 22
	ldr r2, _08099548
	adds r1, r2
	adds r4, r1, r0
	ldr r0, [r4]
	cmp r0, 0
	beq _0809953E
	bl sub_8099BE0
	movs r0, 0
	str r0, [r4]
_0809953E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099544: .4byte gUnknown_083B6DB4
_08099548: .4byte 0x00001038
	thumb_func_end sub_8099520

	thumb_func_start sub_809954C
sub_809954C: @ 809954C
	push {r4-r6,lr}
	movs r5, 0
	ldr r0, _0809957C
	ldr r0, [r0]
	ldr r1, _08099580
	adds r6, r0, r1
_08099558:
	lsls r0, r5, 2
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, 0
	beq _0809956A
	bl sub_8099BE0
	movs r0, 0
	str r0, [r4]
_0809956A:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _08099558
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809957C: .4byte gUnknown_083B6DB4
_08099580: .4byte 0x00001038
	thumb_func_end sub_809954C

	thumb_func_start sub_8099584
sub_8099584: @ 8099584
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r1, 24
	adds r5, r1, 0
	cmp r4, 0
	bne _080995B4
	ldr r3, _080995AC
	ldr r0, [r3]
	ldr r5, _080995B0
	adds r2, r0, r5
	lsls r1, 2
	adds r5, 0x4
	adds r0, r5
	adds r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r4, [r0]
	b _080995D0
	.align 2, 0
_080995AC: .4byte gUnknown_083B6DB4
_080995B0: .4byte 0x00001034
_080995B4:
	cmp r4, 0x1
	bne _080995F4
	ldr r3, _080995FC
	ldr r0, [r3]
	ldr r1, _08099600
	adds r2, r0, r1
	lsls r1, r5, 2
	ldr r4, _08099604
	adds r0, r4
	adds r0, r1
	ldr r1, [r0]
	str r1, [r2]
	movs r1, 0
	str r1, [r0]
_080995D0:
	ldr r2, [r3]
	ldr r5, _08099600
	adds r2, r5
	ldr r1, [r2]
	ldr r0, _08099608
	str r0, [r1, 0x1C]
	ldr r3, [r2]
	ldrb r1, [r3, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3, 0x5]
	ldr r0, [r2]
	adds r0, 0x43
	movs r1, 0x7
	strb r1, [r0]
_080995F4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080995FC: .4byte gUnknown_083B6DB4
_08099600: .4byte 0x00001034
_08099604: .4byte 0x00001050
_08099608: .4byte sub_80999C4
	thumb_func_end sub_8099584

	thumb_func_start sub_809960C
sub_809960C: @ 809960C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	cmp r0, 0xE
	bne _08099654
	ldr r4, _08099648
	ldr r0, [r4]
	lsls r1, r6, 2
	ldr r2, _0809964C
	adds r3, r0, r2
	adds r3, r1
	ldr r1, _08099650
	adds r0, r1
	ldr r2, [r0]
	str r2, [r3]
	ldrb r1, [r2, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2, 0x5]
	ldr r0, [r3]
	adds r0, 0x43
	movs r1, 0xB
	strb r1, [r0]
	b _0809968A
	.align 2, 0
_08099648: .4byte gUnknown_083B6DB4
_0809964C: .4byte 0x00001038
_08099650: .4byte 0x00001034
_08099654:
	ldr r5, _080996A0
	ldr r0, [r5]
	lsls r1, r6, 2
	ldr r2, _080996A4
	adds r3, r0, r2
	adds r3, r1
	ldr r1, _080996A8
	adds r0, r1
	ldr r2, [r0]
	str r2, [r3]
	ldrb r1, [r2, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r2, 0x5]
	ldr r4, [r3]
	adds r0, r6, 0
	movs r1, 0x6
	bl __umodsi3
	movs r1, 0x12
	subs r1, r0
	adds r4, 0x43
	strb r1, [r4]
	adds r4, r5, 0
_0809968A:
	ldr r1, [r4]
	ldr r2, _080996A8
	adds r1, r2
	ldr r2, [r1]
	ldr r0, _080996AC
	str r0, [r2, 0x1C]
	movs r0, 0
	str r0, [r1]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080996A0: .4byte gUnknown_083B6DB4
_080996A4: .4byte 0x00001050
_080996A8: .4byte 0x00001034
_080996AC: .4byte SpriteCallbackDummy
	thumb_func_end sub_809960C

	thumb_func_start sub_80996B0
sub_80996B0: @ 80996B0
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	cmp r0, 0xE
	bne _080996D8
	ldr r3, _080996CC
	ldr r1, [r3]
	ldr r0, _080996D0
	adds r2, r1, r0
	lsls r0, r4, 2
	ldr r4, _080996D4
	b _080996E4
	.align 2, 0
_080996CC: .4byte gUnknown_083B6DB4
_080996D0: .4byte 0x000010c8
_080996D4: .4byte 0x00001038
_080996D8:
	ldr r3, _08099704
	ldr r1, [r3]
	ldr r0, _08099708
	adds r2, r1, r0
	lsls r0, r4, 2
	ldr r4, _0809970C
_080996E4:
	adds r0, r4
	adds r1, r0
	str r1, [r2]
	ldr r1, [r3]
	ldr r2, _08099710
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r0, _08099714
	str r0, [r2, 0x1C]
	ldr r4, _08099718
	adds r1, r4
	movs r0, 0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099704: .4byte gUnknown_083B6DB4
_08099708: .4byte 0x000010c8
_0809970C: .4byte 0x00001050
_08099710: .4byte 0x00001034
_08099714: .4byte SpriteCallbackDummy
_08099718: .4byte 0x00001170
	thumb_func_end sub_80996B0

	thumb_func_start sub_809971C
sub_809971C: @ 809971C
	push {r4-r7,lr}
	ldr r0, _08099730
	ldr r2, [r0]
	ldr r0, _08099734
	adds r7, r2, r0
	ldrb r0, [r7]
	cmp r0, 0x10
	bne _08099738
	movs r0, 0
	b _08099800
	.align 2, 0
_08099730: .4byte gUnknown_083B6DB4
_08099734: .4byte 0x00001170
_08099738:
	adds r0, 0x1
	strb r0, [r7]
	movs r1, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809975E
	ldr r1, _08099808
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, [r0]
	ldrh r0, [r1, 0x22]
	subs r0, 0x1
	strh r0, [r1, 0x22]
	ldr r4, _0809980C
	adds r0, r2, r4
	ldr r1, [r0]
	ldrh r0, [r1, 0x22]
	adds r0, 0x1
	strh r0, [r1, 0x22]
_0809975E:
	ldr r0, _08099808
	adds r5, r2, r0
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, _08099810
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r3
	movs r4, 0
	ldrsh r0, [r0, r4]
	cmp r0, 0
	bge _08099778
	adds r0, 0xF
_08099778:
	asrs r0, 4
	strh r0, [r1, 0x24]
	ldr r0, _0809980C
	adds r6, r2, r0
	ldr r1, [r6]
	ldrb r0, [r7]
	lsls r0, 4
	adds r0, r3
	movs r2, 0
	ldrsh r0, [r0, r2]
	cmp r0, 0
	bge _08099792
	adds r0, 0xF
_08099792:
	asrs r0, 4
	negs r0, r0
	strh r0, [r1, 0x24]
	ldrb r0, [r7]
	cmp r0, 0x8
	bne _080997DE
	ldr r4, [r6]
	ldr r0, [r5]
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	movs r2, 0xC
	ands r2, r0
	ldrb r3, [r4, 0x5]
	movs r1, 0xD
	negs r1, r1
	adds r0, r1, 0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, 0x5]
	ldr r2, [r6]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, 0x43
	ldrb r0, [r0]
	adds r2, 0x43
	strb r0, [r2]
	ldr r0, [r5]
	ldr r2, [r0]
	ldrb r0, [r2, 0x5]
	ands r1, r0
	movs r0, 0x4
	orrs r1, r0
	strb r1, [r2, 0x5]
	ldr r0, [r5]
	ldr r0, [r0]
	adds r0, 0x43
	movs r1, 0x7
	strb r1, [r0]
_080997DE:
	ldrb r0, [r7]
	cmp r0, 0x10
	bne _080997FE
	ldr r1, [r6]
	ldr r0, [r5]
	ldr r0, [r0]
	str r0, [r6]
	ldr r0, [r5]
	str r1, [r0]
	ldr r1, [r6]
	ldr r0, _08099814
	str r0, [r1, 0x1C]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r0, _08099818
	str r0, [r1, 0x1C]
_080997FE:
	movs r0, 0x1
_08099800:
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_08099808: .4byte 0x000010c8
_0809980C: .4byte 0x00001034
_08099810: .4byte gSineTable
_08099814: .4byte sub_80999C4
_08099818: .4byte SpriteCallbackDummy
	thumb_func_end sub_809971C

	thumb_func_start sub_809981C
sub_809981C: @ 809981C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r2, r0, 0
	lsls r1, 24
	lsrs r4, r1, 24
	cmp r0, 0x1
	beq _08099858
	cmp r0, 0x1
	bgt _08099836
	cmp r0, 0
	beq _0809983C
	b _080998C0
_08099836:
	cmp r2, 0x2
	beq _0809987C
	b _080998C0
_0809983C:
	ldr r3, _0809984C
	ldr r1, [r3]
	ldr r0, _08099850
	adds r2, r1, r0
	lsls r0, r4, 2
	ldr r4, _08099854
	b _08099864
	.align 2, 0
_0809984C: .4byte gUnknown_083B6DB4
_08099850: .4byte 0x000010cc
_08099854: .4byte 0x00001038
_08099858:
	ldr r3, _08099870
	ldr r1, [r3]
	ldr r0, _08099874
	adds r2, r1, r0
	lsls r0, r4, 2
	ldr r4, _08099878
_08099864:
	adds r0, r4
	adds r1, r0
	str r1, [r2]
	adds r0, r3, 0
	b _0809988A
	.align 2, 0
_08099870: .4byte gUnknown_083B6DB4
_08099874: .4byte 0x000010cc
_08099878: .4byte 0x00001050
_0809987C:
	ldr r0, _080998C8
	ldr r1, [r0]
	ldr r3, _080998CC
	adds r2, r1, r3
	ldr r4, _080998D0
	adds r1, r4
	str r1, [r2]
_0809988A:
	ldr r0, [r0]
	ldr r1, _080998CC
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, 0
	beq _080998C0
	bl InitSpriteAffineAnim
	ldr r0, [r4]
	ldr r2, [r0]
	ldrb r1, [r2, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r2, 0x1]
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r0, _080998D4
	str r0, [r1, 0x10]
	ldr r0, [r4]
	ldr r0, [r0]
	movs r1, 0
	bl StartSpriteAffineAnim
_080998C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080998C8: .4byte gUnknown_083B6DB4
_080998CC: .4byte 0x000010cc
_080998D0: .4byte 0x00001034
_080998D4: .4byte gUnknown_083B6F5C
	thumb_func_end sub_809981C

	thumb_func_start sub_80998D8
sub_80998D8: @ 80998D8
	push {lr}
	ldr r0, _080998FC
	ldr r0, [r0]
	ldr r1, _08099900
	adds r0, r1
	ldr r0, [r0]
	ldr r1, [r0]
	cmp r1, 0
	beq _080998F8
	adds r3, r1, 0
	adds r3, 0x3E
	ldrb r2, [r3]
	movs r0, 0x4
	ands r0, r2
	cmp r0, 0
	beq _08099904
_080998F8:
	movs r0, 0
	b _0809991A
	.align 2, 0
_080998FC: .4byte gUnknown_083B6DB4
_08099900: .4byte 0x000010cc
_08099904:
	adds r0, r1, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _08099918
	movs r0, 0x4
	orrs r0, r2
	strb r0, [r3]
_08099918:
	movs r0, 0x1
_0809991A:
	pop {r1}
	bx r1
	thumb_func_end sub_80998D8

	thumb_func_start sub_8099920
sub_8099920: @ 8099920
	push {r4,lr}
	ldr r0, _08099950
	ldr r0, [r0]
	ldr r1, _08099954
	adds r4, r0, r1
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, 0
	beq _0809994A
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_8099BE0
	ldr r1, [r4]
	movs r0, 0
	str r0, [r1]
_0809994A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099950: .4byte gUnknown_083B6DB4
_08099954: .4byte 0x000010cc
	thumb_func_end sub_8099920

	thumb_func_start sub_8099958
sub_8099958: @ 8099958
	push {lr}
	ldr r0, _08099988
	ldr r0, [r0]
	ldr r1, _0809998C
	adds r3, r0, r1
	ldr r0, [r3]
	ldr r0, [r0]
	cmp r0, 0
	beq _08099982
	adds r2, r0, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r3]
	ldr r0, [r0]
	movs r1, 0x1
	bl StartSpriteAffineAnim
_08099982:
	pop {r0}
	bx r0
	.align 2, 0
_08099988: .4byte gUnknown_083B6DB4
_0809998C: .4byte 0x000010cc
	thumb_func_end sub_8099958

	thumb_func_start sub_8099990
sub_8099990: @ 8099990
	push {lr}
	ldr r0, _080999A4
	ldr r0, [r0]
	ldr r1, _080999A8
	adds r2, r0, r1
	ldr r0, [r2]
	cmp r0, 0
	bne _080999AC
	movs r0, 0
	b _080999C0
	.align 2, 0
_080999A4: .4byte gUnknown_083B6DB4
_080999A8: .4byte 0x000010cc
_080999AC:
	ldr r0, [r0]
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080999BE
	movs r0, 0
	str r0, [r2]
_080999BE:
	movs r0, 0x1
_080999C0:
	pop {r1}
	bx r1
	thumb_func_end sub_8099990

	thumb_func_start sub_80999C4
sub_80999C4: @ 80999C4
	ldr r1, _080999E4
	ldr r1, [r1]
	movs r2, 0x8E
	lsls r2, 5
	adds r1, r2
	ldr r2, [r1]
	ldrh r2, [r2, 0x20]
	strh r2, [r0, 0x20]
	ldr r2, [r1]
	ldrh r1, [r2, 0x26]
	ldrh r2, [r2, 0x22]
	adds r1, r2
	adds r1, 0x4
	strh r1, [r0, 0x22]
	bx lr
	.align 2, 0
_080999E4: .4byte gUnknown_083B6DB4
	thumb_func_end sub_80999C4

	thumb_func_start sub_80999E8
sub_80999E8: @ 80999E8
	push {r4-r6,lr}
	lsls r0, 16
	lsrs r3, r0, 16
	movs r4, 0
	ldr r1, _08099A58
	ldr r0, [r1]
	movs r2, 0x89
	lsls r2, 5
	adds r0, r2
	ldrh r0, [r0]
	adds r2, r1, 0
	cmp r0, r3
	beq _08099A20
	adds r6, r2, 0
	movs r5, 0x89
	lsls r5, 5
_08099A08:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x27
	bhi _08099A20
	ldr r0, [r6]
	lsls r1, r4, 1
	adds r0, r5
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bne _08099A08
_08099A20:
	cmp r4, 0x28
	bne _08099A60
	movs r4, 0
	ldr r0, [r2]
	movs r5, 0x89
	lsls r5, 5
	adds r0, r5
	ldrh r0, [r0]
	cmp r0, 0
	beq _08099A4E
	adds r6, r2, 0
_08099A36:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x27
	bhi _08099A4E
	ldr r0, [r6]
	lsls r1, r4, 1
	adds r0, r5
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _08099A36
_08099A4E:
	cmp r4, 0x28
	bne _08099A60
	ldr r0, _08099A5C
	b _08099A94
	.align 2, 0
_08099A58: .4byte gUnknown_083B6DB4
_08099A5C: .4byte 0x0000ffff
_08099A60:
	ldr r1, [r2]
	lsls r2, r4, 1
	movs r5, 0x89
	lsls r5, 5
	adds r0, r1, r5
	adds r0, r2
	strh r3, [r0]
	ldr r0, _08099A9C
	adds r1, r0
	adds r1, r2
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	lsls r4, 20
	lsrs r4, 16
	ldr r1, _08099AA0
	lsls r0, r3, 2
	adds r0, r1
	ldr r0, [r0]
	lsls r1, r4, 5
	ldr r2, _08099AA4
	adds r1, r2
	ldr r2, _08099AA8
	bl CpuSet
	adds r0, r4, 0
_08099A94:
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_08099A9C: .4byte 0x000010d0
_08099AA0: .4byte gMonIconTable
_08099AA4: .4byte 0x06010000
_08099AA8: .4byte 0x04000080
	thumb_func_end sub_80999E8

	thumb_func_start sub_8099AAC
sub_8099AAC: @ 8099AAC
	push {r4-r7,lr}
	lsls r0, 16
	lsrs r6, r0, 16
	movs r3, 0
	ldr r0, _08099AE4
	ldr r0, [r0]
	movs r1, 0x89
	lsls r1, 5
	adds r5, r0, r1
	subs r1, 0x50
	adds r4, r0, r1
	ldr r0, _08099AE8
	adds r7, r0, 0
_08099AC6:
	lsls r1, r3, 1
	adds r2, r5, r1
	ldrh r0, [r2]
	cmp r0, r6
	bne _08099AEC
	adds r1, r4, r1
	ldrh r0, [r1]
	subs r0, 0x1
	strh r0, [r1]
	ands r0, r7
	cmp r0, 0
	bne _08099AF6
	strh r0, [r2]
	b _08099AF6
	.align 2, 0
_08099AE4: .4byte gUnknown_083B6DB4
_08099AE8: .4byte 0x0000ffff
_08099AEC:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x27
	bls _08099AC6
_08099AF6:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8099AAC

	thumb_func_start sub_8099AFC
sub_8099AFC: @ 8099AFC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x1C
	ldr r4, [sp, 0x3C]
	ldr r5, [sp, 0x40]
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r2, 16
	lsrs r2, 16
	str r2, [sp, 0x18]
	lsls r3, 16
	lsrs r3, 16
	mov r8, r3
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	mov r9, r5
	mov r2, sp
	ldr r0, _08099BAC
	ldm r0!, {r3,r5,r7}
	stm r2!, {r3,r5,r7}
	ldm r0!, {r3,r5,r7}
	stm r2!, {r3,r5,r7}
	adds r0, r6, 0
	bl mon_icon_convert_unown_species_id
	mov r10, r0
	mov r6, r10
	mov r2, sp
	ldr r1, _08099BB0
	adds r1, r6, r1
	ldr r3, _08099BB4
	adds r0, r3, 0
	ldrb r1, [r1]
	adds r0, r1
	strh r0, [r2, 0x2]
	adds r0, r6, 0
	bl sub_80999E8
	lsls r0, 16
	lsrs r0, 16
	adds r5, r0, 0
	ldr r0, _08099BB8
	cmp r5, r0
	beq _08099BCE
	ldr r7, [sp, 0x18]
	lsls r1, r7, 16
	asrs r1, 16
	mov r0, r8
	lsls r2, r0, 16
	asrs r2, 16
	mov r0, sp
	mov r3, r9
	bl CreateSprite
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x40
	beq _08099BC8
	ldr r1, _08099BBC
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldr r2, _08099BC0
	ands r2, r5
	ldrh r3, [r0, 0x4]
	ldr r1, _08099BC4
	ands r1, r3
	orrs r1, r2
	strh r1, [r0, 0x4]
	movs r1, 0x3
	ands r4, r1
	lsls r3, r4, 2
	ldrb r2, [r0, 0x5]
	movs r1, 0xD
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, 0x5]
	mov r1, r10
	strh r1, [r0, 0x2E]
	b _08099BD0
	.align 2, 0
_08099BAC: .4byte gSpriteTemplate_83B6F14
_08099BB0: .4byte gMonIconPaletteIndices
_08099BB4: .4byte 0x0000dac0
_08099BB8: .4byte 0x0000ffff
_08099BBC: .4byte gSprites
_08099BC0: .4byte 0x000003ff
_08099BC4: .4byte 0xfffffc00
_08099BC8:
	adds r0, r6, 0
	bl sub_8099AAC
_08099BCE:
	movs r0, 0
_08099BD0:
	add sp, 0x1C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8099AFC

	thumb_func_start sub_8099BE0
sub_8099BE0: @ 8099BE0
	push {r4,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x2E]
	bl sub_8099AAC
	adds r0, r4, 0
	bl DestroySprite
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8099BE0

	thumb_func_start sub_8099BF8
sub_8099BF8: @ 8099BF8
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _08099C50
	ldr r0, [r0]
	ldr r1, _08099C54
	adds r2, r0, r1
	movs r1, 0
	strb r1, [r2]
	ldr r2, _08099C58
	adds r0, r2
	strh r1, [r0]
	str r1, [sp]
	ldr r1, _08099C5C
	mov r0, sp
	str r0, [r1]
	ldr r0, _08099C60
	str r0, [r1, 0x4]
	ldr r0, _08099C64
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r0, r4, 0
	movs r1, 0
	bl sub_8099EB0
	adds r0, r4, 0
	bl sub_809A23C
	bl sub_809A6DC
	adds r0, r4, 0
	bl sub_8098C48
	ldr r1, _08099C68
	ldr r2, _08099C6C
	adds r0, r2, 0
	strh r0, [r1]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099C50: .4byte gUnknown_083B6DB4
_08099C54: .4byte 0x000008ba
_08099C58: .4byte 0x000008b4
_08099C5C: .4byte 0x040000d4
_08099C60: .4byte 0x0600d000
_08099C64: .4byte 0x85000400
_08099C68: .4byte REG_BG2CNT
_08099C6C: .4byte 0x00005a0a
	thumb_func_end sub_8099BF8

	thumb_func_start sub_8099C70
sub_8099C70: @ 8099C70
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	bl sub_8099D90
	lsls r0, 24
	asrs r4, r0, 24
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_8099EB0
	ldr r0, _08099D10
	ldr r2, [r0]
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 1
	ldr r3, _08099D14
	adds r1, r2, r3
	strh r0, [r1]
	ldr r0, _08099D18
	adds r1, r2, r0
	movs r0, 0x20
	strh r0, [r1]
	ldr r1, _08099D1C
	adds r0, r2, r1
	strb r5, [r0]
	movs r1, 0
	cmp r4, 0
	bgt _08099CAE
	movs r1, 0x5
_08099CAE:
	ldr r3, _08099D20
	adds r0, r2, r3
	strh r1, [r0]
	ldr r1, _08099D24
	adds r0, r2, r1
	strh r4, [r0]
	movs r1, 0x38
	cmp r4, 0
	ble _08099CC6
	movs r3, 0x84
	lsls r3, 1
	adds r1, r3, 0
_08099CC6:
	movs r3, 0x8C
	lsls r3, 4
	adds r0, r2, r3
	strh r1, [r0]
	movs r1, 0
	cmp r4, 0
	bgt _08099CD6
	movs r1, 0x5
_08099CD6:
	ldr r3, _08099D28
	adds r0, r2, r3
	strh r1, [r0]
	ldr r1, _08099D2C
	adds r0, r2, r1
	strh r4, [r0]
	adds r3, 0x4
	adds r1, r2, r3
	movs r0, 0
	strh r0, [r1]
	ldr r0, _08099D30
	adds r1, r2, r0
	movs r0, 0x2
	strh r0, [r1]
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_809900C
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_809A3D0
	adds r0, r4, 0
	bl sub_809A774
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099D10: .4byte gUnknown_083B6DB4
_08099D14: .4byte 0x000008b6
_08099D18: .4byte 0x000008b8
_08099D1C: .4byte 0x000008bb
_08099D20: .4byte 0x000008bc
_08099D24: .4byte 0x000008be
_08099D28: .4byte 0x000008c2
_08099D2C: .4byte 0x000008c4
_08099D30: .4byte 0x000008c8
	thumb_func_end sub_8099C70

	thumb_func_start sub_8099D34
sub_8099D34: @ 8099D34
	push {r4,lr}
	bl sub_80990AC
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _08099D78
	ldr r1, [r0]
	ldr r0, _08099D7C
	adds r3, r1, r0
	ldrh r0, [r3]
	cmp r0, 0
	beq _08099D88
	ldr r4, _08099D80
	adds r2, r1, r4
	adds r4, 0x2
	adds r0, r1, r4
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r1
	ldr r1, _08099D84
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	subs r0, 0x1
	strh r0, [r3]
	lsls r0, 16
	cmp r0, 0
	bne _08099D74
	bl sub_809A598
	bl sub_809A810
_08099D74:
	movs r0, 0x1
	b _08099D8A
	.align 2, 0
_08099D78: .4byte gUnknown_083B6DB4
_08099D7C: .4byte 0x000008b8
_08099D80: .4byte 0x000008b4
_08099D84: .4byte 0x000001ff
_08099D88:
	adds r0, r2, 0
_08099D8A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8099D34

	thumb_func_start sub_8099D90
sub_8099D90: @ 8099D90
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl get_preferred_box
	lsls r0, 24
	lsrs r1, r0, 24
	movs r2, 0
	cmp r1, r4
	beq _08099DBA
_08099DA4:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0xD
	bls _08099DB0
	movs r1, 0
_08099DB0:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r1, r4
	bne _08099DA4
_08099DBA:
	movs r0, 0x1
	negs r0, r0
	cmp r2, 0x6
	bhi _08099DC4
	movs r0, 0x1
_08099DC4:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8099D90

	thumb_func_start sub_8099DCC
sub_8099DCC: @ 8099DCC
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _08099DF8
	ldr r2, _08099DFC
	adds r1, r2
	adds r0, r1
	movs r1, 0
	strb r4, [r0]
	ldr r0, _08099E00
	ldr r0, [r0]
	ldr r2, _08099E04
	adds r0, r2
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08099DF8: .4byte gPokemonStorage
_08099DFC: .4byte 0x000083c2
_08099E00: .4byte gUnknown_083B6DB4
_08099E04: .4byte 0x00001032
	thumb_func_end sub_8099DCC

	thumb_func_start sub_8099E08
sub_8099E08: @ 8099E08
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r0, _08099E24
	ldr r5, [r0]
	ldr r0, _08099E28
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, 0x1
	beq _08099E54
	cmp r0, 0x1
	bgt _08099E2C
	cmp r0, 0
	beq _08099E36
	b _08099EA6
	.align 2, 0
_08099E24: .4byte gUnknown_083B6DB4
_08099E28: .4byte 0x00001032
_08099E2C:
	cmp r0, 0x2
	beq _08099E90
	cmp r0, 0x3
	beq _08099EA2
	b _08099EA6
_08099E36:
	ldr r1, _08099E4C
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08099E50
	str r1, [sp]
	movs r1, 0x1
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	b _08099E9A
	.align 2, 0
_08099E4C: .4byte 0x00000d08
_08099E50: .4byte 0x0000ffff
_08099E54:
	bl UpdatePaletteFade
	lsls r0, 24
	cmp r0, 0
	bne _08099EA6
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl sub_8099EB0
	bl sub_809A654
	ldr r1, _08099E88
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08099E8C
	str r1, [sp]
	movs r1, 0x1
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	b _08099E9A
	.align 2, 0
_08099E88: .4byte 0x00000d08
_08099E8C: .4byte 0x0000ffff
_08099E90:
	bl UpdatePaletteFade
	lsls r0, 24
	cmp r0, 0
	bne _08099EA6
_08099E9A:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _08099EA6
_08099EA2:
	movs r0, 0
	b _08099EA8
_08099EA6:
	movs r0, 0x1
_08099EA8:
	add sp, 0x4
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8099E08

	thumb_func_start sub_8099EB0
sub_8099EB0: @ 8099EB0
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	cmp r1, 0
	beq _08099ED8
	ldr r0, _08099F38
	ldr r0, [r0]
	movs r2, 0
	ldr r3, _08099F3C
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, 0
	bne _08099ED0
	movs r2, 0x1
_08099ED0:
	strb r2, [r1]
	ldr r0, _08099F40
	bl sub_809A14C
_08099ED8:
	ldr r0, _08099F44
	ldr r1, _08099F48
	adds r0, r1
	adds r0, r4, r0
	ldrb r4, [r0]
	lsls r4, 4
	ldr r0, _08099F4C
	adds r4, r0
	ldr r0, [r4, 0xC]
	ldr r1, _08099F38
	ldr r5, [r1]
	ldr r2, _08099F3C
	adds r6, r5, r2
	ldrb r2, [r6]
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 20
	movs r3, 0x80
	lsls r3, 15
	adds r1, r3
	lsrs r1, 16
	movs r2, 0x60
	bl LoadPalette
	ldr r0, [r4, 0x8]
	ldr r1, _08099F50
	adds r5, r1
	adds r1, r5, 0
	bl LZ77UnCompWram
	ldr r0, _08099F40
	lsls r2, r7, 24
	asrs r2, 24
	ldrb r3, [r6]
	adds r1, r5, 0
	bl sub_8099F58
	ldr r0, [r4]
	ldrb r1, [r6]
	lsls r1, 13
	ldr r2, _08099F54
	adds r1, r2
	bl LZ77UnCompVram
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08099F38: .4byte gUnknown_083B6DB4
_08099F3C: .4byte 0x000008ba
_08099F40: .4byte 0x0600d000
_08099F44: .4byte gPokemonStorage
_08099F48: .4byte 0x000083c2
_08099F4C: .4byte gWallpaperTable
_08099F50: .4byte 0x00000d62
_08099F54: .4byte 0x06008000
	thumb_func_end sub_8099EB0

	thumb_func_start sub_8099F58
sub_8099F58: @ 8099F58
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	mov r9, r0
	adds r5, r1, 0
	lsls r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r0, r3, 8
	str r0, [sp]
	lsls r0, r3, 1
	adds r0, r3
	adds r0, 0x4
	lsls r0, 28
	lsrs r0, 16
	str r0, [sp, 0x4]
	ldr r0, _08099FB8
	ldr r0, [r0]
	ldr r1, _08099FBC
	adds r0, r1
	ldrh r1, [r0]
	lsrs r1, 3
	adds r1, 0xA
	lsrs r0, r2, 24
	mov r8, r0
	asrs r2, 24
	lsls r0, r2, 1
	adds r0, r2
	lsls r0, 3
	adds r1, r0
	movs r0, 0x3F
	ands r1, r0
	str r1, [sp, 0x8]
	adds r2, r1, 0
	cmp r2, 0xC
	bgt _08099FC0
	movs r6, 0x14
	movs r3, 0
	lsls r0, r2, 1
	adds r0, 0x80
	mov r1, r9
	adds r4, r1, r0
	movs r7, 0
	b _0809A020
	.align 2, 0
_08099FB8: .4byte gUnknown_083B6DB4
_08099FBC: .4byte 0x000008b4
_08099FC0:
	cmp r2, 0x1F
	bgt _08099FE6
	movs r0, 0x20
	subs r0, r2
	lsls r0, 16
	movs r1, 0x14
	lsrs r6, r0, 16
	asrs r0, 16
	subs r1, r0
	lsls r1, 16
	lsrs r3, r1, 16
	lsls r0, r2, 1
	adds r0, 0x80
	mov r2, r9
	adds r4, r2, r0
	movs r7, 0x88
	lsls r7, 4
	add r7, r9
	b _0809A020
_08099FE6:
	cmp r2, 0x2C
	bgt _08099FFE
	movs r6, 0x14
	movs r3, 0
	lsls r0, r2, 1
	movs r1, 0x84
	lsls r1, 4
	adds r0, r1
	mov r2, r9
	adds r4, r2, r0
	movs r7, 0
	b _0809A020
_08099FFE:
	movs r0, 0x40
	subs r0, r2
	lsls r0, 16
	movs r1, 0x14
	lsrs r6, r0, 16
	asrs r0, 16
	subs r1, r0
	lsls r1, 16
	lsrs r3, r1, 16
	lsls r0, r2, 1
	movs r1, 0x84
	lsls r1, 4
	adds r0, r1
	mov r2, r9
	adds r4, r2, r0
	mov r7, r9
	adds r7, 0x80
_0809A020:
	movs r1, 0
	mov r0, r8
	lsls r0, 24
	str r0, [sp, 0x14]
	lsls r0, r6, 16
	asrs r0, 16
	mov r8, r0
	lsls r3, 16
	str r3, [sp, 0xC]
	asrs r2, r3, 16
	str r2, [sp, 0x10]
_0809A036:
	movs r3, 0
	adds r0, r4, 0
	adds r0, 0x40
	str r0, [sp, 0x18]
	adds r2, r7, 0
	adds r2, 0x40
	str r2, [sp, 0x1C]
	adds r1, 0x1
	mov r10, r1
	cmp r3, r8
	bge _0809A07A
	ldr r0, _0809A0D4
	mov r12, r0
	movs r6, 0xF0
	lsls r6, 8
_0809A054:
	ldrh r2, [r5]
	mov r0, r12
	ands r0, r2
	ldr r1, [sp]
	adds r0, r1, r0
	adds r1, r6, 0
	ands r1, r2
	ldr r2, [sp, 0x4]
	adds r1, r2, r1
	orrs r1, r0
	lsls r0, r3, 1
	adds r0, r4
	strh r1, [r0]
	adds r5, 0x2
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, r8
	blt _0809A054
_0809A07A:
	movs r3, 0
	ldr r0, [sp, 0x10]
	cmp r3, r0
	bge _0809A0B4
	ldr r1, _0809A0D4
	mov r12, r1
	movs r6, 0xF0
	lsls r6, 8
	ldr r2, [sp, 0xC]
	asrs r4, r2, 16
_0809A08E:
	ldrh r2, [r5]
	mov r0, r12
	ands r0, r2
	ldr r1, [sp]
	adds r0, r1, r0
	adds r1, r6, 0
	ands r1, r2
	ldr r2, [sp, 0x4]
	adds r1, r2, r1
	orrs r1, r0
	lsls r0, r3, 1
	adds r0, r7
	strh r1, [r0]
	adds r5, 0x2
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, r4
	blt _0809A08E
_0809A0B4:
	ldr r4, [sp, 0x18]
	ldr r7, [sp, 0x1C]
	mov r1, r10
	lsls r0, r1, 16
	lsrs r1, r0, 16
	cmp r1, 0x11
	bls _0809A036
	ldr r0, [sp, 0x14]
	asrs r2, r0, 24
	cmp r2, 0
	beq _0809A13A
	cmp r2, 0
	ble _0809A0D8
	ldr r1, [sp, 0x8]
	adds r1, 0x14
	b _0809A0DC
	.align 2, 0
_0809A0D4: .4byte 0x00000fff
_0809A0D8:
	ldr r1, [sp, 0x8]
	subs r1, 0x4
_0809A0DC:
	movs r0, 0x3F
	ands r1, r0
	adds r4, r1, 0
	adds r0, r4, 0
	cmp r0, 0x1F
	bgt _0809A0EE
	lsls r0, 1
	adds r0, 0x80
	b _0809A0F6
_0809A0EE:
	lsls r0, 1
	movs r2, 0x84
	lsls r2, 4
	adds r0, r2
_0809A0F6:
	mov r1, r9
	adds r2, r1, r0
	movs r3, 0
	movs r6, 0
_0809A0FE:
	movs r1, 0
	adds r5, r3, 0x1
	lsls r3, r4, 16
_0809A104:
	strh r6, [r2]
	adds r2, 0x40
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x11
	bls _0809A104
	asrs r0, r3, 16
	adds r4, r0, 0x1
	movs r0, 0x3F
	ands r4, r0
	adds r0, r4, 0
	cmp r0, 0x1F
	bgt _0809A126
	lsls r0, 1
	adds r0, 0x80
	b _0809A12E
_0809A126:
	lsls r0, 1
	movs r2, 0x84
	lsls r2, 4
	adds r0, r2
_0809A12E:
	mov r1, r9
	adds r2, r1, r0
	lsls r0, r5, 16
	lsrs r3, r0, 16
	cmp r3, 0x3
	bls _0809A0FE
_0809A13A:
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8099F58

	thumb_func_start sub_809A14C
sub_809A14C: @ 809A14C
	push {r4-r6,lr}
	adds r2, r0, 0
	ldr r0, _0809A174
	ldr r0, [r0]
	ldr r1, _0809A178
	adds r0, r1
	ldrh r0, [r0]
	lsrs r0, 3
	adds r3, r0, 0
	adds r3, 0x1E
	movs r0, 0x3F
	ands r3, r0
	adds r0, r3, 0
	cmp r0, 0x1F
	bgt _0809A17C
	lsls r0, 1
	movs r6, 0x98
	lsls r6, 3
	adds r0, r6
	b _0809A184
	.align 2, 0
_0809A174: .4byte gUnknown_083B6DB4
_0809A178: .4byte 0x000008b4
_0809A17C:
	lsls r0, 1
	movs r1, 0xC8
	lsls r1, 4
	adds r0, r1
_0809A184:
	adds r2, r0
	movs r0, 0
	movs r5, 0
	movs r4, 0x3F
_0809A18C:
	strh r5, [r2]
	adds r2, 0x2
	adds r3, 0x1
	ands r3, r4
	adds r1, r3, 0
	cmp r1, 0
	bne _0809A19E
	ldr r6, _0809A1B8
	adds r2, r6
_0809A19E:
	cmp r1, 0x20
	bne _0809A1A8
	movs r1, 0xF8
	lsls r1, 3
	adds r2, r1
_0809A1A8:
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x2B
	bls _0809A18C
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A1B8: .4byte 0xfffff7c0
	thumb_func_end sub_809A14C

	thumb_func_start sub_809A1BC
sub_809A1BC: @ 809A1BC
	push {r4-r6,lr}
	sub sp, 0x8
	adds r3, r0, 0
	adds r2, r1, 0
	ldr r0, _0809A228
	ldr r5, [r0]
	mov r1, sp
	movs r0, 0
	strh r0, [r1]
	ldr r4, _0809A22C
	str r1, [r4]
	str r5, [r4, 0x4]
	movs r6, 0x80
	lsls r6, 1
	ldr r0, _0809A230
	str r0, [r4, 0x8]
	ldr r0, [r4, 0x8]
	ldr r0, _0809A234
	adds r1, r5, 0
	str r3, [sp, 0x4]
	bl sub_8004E3C
	str r5, [r4]
	ldr r3, [sp, 0x4]
	str r3, [r4, 0x4]
	ldr r1, _0809A238
	str r1, [r4, 0x8]
	ldr r0, [r4, 0x8]
	adds r0, r5, r6
	str r0, [r4]
	adds r0, r3, 0
	adds r0, 0x80
	str r0, [r4, 0x4]
	str r1, [r4, 0x8]
	ldr r0, [r4, 0x8]
	adds r0, r5, 0
	adds r0, 0x80
	str r0, [r4]
	adds r6, r3, r6
	str r6, [r4, 0x4]
	str r1, [r4, 0x8]
	ldr r0, [r4, 0x8]
	movs r0, 0xC0
	lsls r0, 1
	adds r5, r0
	str r5, [r4]
	adds r3, r0
	str r3, [r4, 0x4]
	str r1, [r4, 0x8]
	ldr r0, [r4, 0x8]
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A228: .4byte gUnknown_083B6DB8
_0809A22C: .4byte 0x040000d4
_0809A230: .4byte 0x81000100
_0809A234: .4byte gWindowConfig_81E6D38
_0809A238: .4byte 0x80000040
	thumb_func_end sub_809A1BC

	thumb_func_start sub_809A23C
sub_809A23C: @ 809A23C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x24
	mov r8, r0
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, _0809A384
	ldr r5, [r0]
	ldr r1, _0809A388
	adds r7, r5, r1
	str r7, [sp, 0x18]
	mov r2, sp
	adds r2, 0x18
	str r2, [sp, 0x20]
	ldr r0, _0809A38C
	str r0, [r2, 0x4]
	mov r1, sp
	ldr r3, _0809A390
	adds r0, r5, r3
	str r0, [sp]
	ldr r4, _0809A394
	strh r4, [r1, 0x4]
	str r0, [sp, 0x8]
	ldr r6, _0809A398
	strh r6, [r1, 0xC]
	add r0, sp, 0x10
	movs r1, 0
	movs r2, 0x8
	bl memset
	ldr r0, _0809A39C
	mov r9, r0
	ldr r0, _0809A3A0
	add r0, r9
	add r0, r8
	ldrb r1, [r0]
	ldr r2, _0809A3A4
	lsls r1, 2
	adds r0, r1, r2
	ldrh r3, [r0]
	ldr r6, _0809A3A8
	adds r0, r5, r6
	strh r3, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrh r1, [r1]
	ldr r2, _0809A3AC
	adds r0, r5, r2
	strh r1, [r0]
	mov r0, sp
	bl LoadSpritePalettes
	ldr r3, _0809A3B0
	adds r6, r5, r3
	movs r0, 0xFC
	lsls r0, 2
	str r0, [r6]
	adds r0, r4, 0
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	movs r2, 0x87
	lsls r2, 1
	mov r10, r2
	add r1, r10
	ldr r3, _0809A3B4
	adds r2, r5, r3
	strh r1, [r2]
	movs r4, 0x80
	lsls r4, 9
	adds r1, r4, 0
	lsls r1, r0
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
	ldr r0, _0809A3B8
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	add r1, r10
	ldr r2, _0809A3BC
	adds r5, r2
	strh r1, [r5]
	lsls r4, r0
	ldr r0, [r6]
	orrs r0, r4
	str r0, [r6]
	mov r3, r8
	lsls r4, r3, 3
	add r4, r8
	ldr r6, _0809A3C0
	add r9, r6
	add r4, r9
	adds r0, r7, 0
	adds r1, r4, 0
	bl sub_809A1BC
	ldr r0, [sp, 0x20]
	bl LoadSpriteSheet
	adds r0, r4, 0
	bl sub_8072CA4
	lsls r0, 24
	lsrs r0, 24
	bl sub_809A6D0
	movs r4, 0
	lsls r0, 16
	asrs r6, r0, 16
_0809A328:
	lsls r1, r4, 5
	adds r1, r6, r1
	lsls r1, 16
	asrs r1, 16
	ldr r0, _0809A3C4
	movs r2, 0x1C
	movs r3, 0x17
	bl CreateSprite
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, _0809A384
	ldr r5, [r0]
	lsls r0, r4, 2
	movs r3, 0xCF
	lsls r3, 4
	adds r2, r5, r3
	adds r2, r0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0809A3C8
	adds r0, r1
	str r0, [r2]
	lsls r1, r4, 24
	lsrs r1, 24
	bl StartSpriteAnim
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x1
	bls _0809A328
	ldr r6, _0809A3CC
	adds r1, r5, r6
	movs r0, 0
	strb r0, [r1]
	add sp, 0x24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A384: .4byte gUnknown_083B6DB4
_0809A388: .4byte 0x000008ca
_0809A38C: .4byte 0x00030200
_0809A390: .4byte 0x00000ccc
_0809A394: .4byte 0x0000dac8
_0809A398: .4byte 0xffffdac9
_0809A39C: .4byte gPokemonStorage
_0809A3A0: .4byte 0x000083c2
_0809A3A4: .4byte gUnknown_083BB0A8
_0809A3A8: .4byte 0x00000ce8
_0809A3AC: .4byte 0x00000cea
_0809A3B0: .4byte 0x00000d08
_0809A3B4: .4byte 0x00000cec
_0809A3B8: .4byte 0x0000dac9
_0809A3BC: .4byte 0x00000cee
_0809A3C0: .4byte 0x00008344
_0809A3C4: .4byte gSpriteTemplate_83BB2B8
_0809A3C8: .4byte gSprites
_0809A3CC: .4byte 0x00000cca
	thumb_func_end sub_809A23C

	thumb_func_start sub_809A3D0
sub_809A3D0: @ 809A3D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x2C
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x28]
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	ldr r3, _0809A43C
	ldr r5, [r3]
	ldr r1, _0809A440
	adds r0, r5, r1
	str r0, [sp, 0x18]
	add r2, sp, 0x18
	ldr r4, _0809A444
	mov r9, r4
	movs r6, 0xC0
	lsls r6, 10
	mov r8, r6
	ldr r0, _0809A448
	str r0, [r2, 0x4]
	mov r1, sp
	ldr r0, _0809A44C
	ldm r0!, {r4,r6,r7}
	stm r1!, {r4,r6,r7}
	ldm r0!, {r4,r6,r7}
	stm r1!, {r4,r6,r7}
	movs r1, 0
	ldr r7, _0809A450
	adds r4, r5, r7
	ldrb r0, [r4]
	adds r6, r2, 0
	cmp r0, 0
	bne _0809A41E
	movs r1, 0x1
_0809A41E:
	strb r1, [r4]
	cmp r1, 0
	bne _0809A458
	ldr r0, [r6, 0x4]
	mov r1, r9
	ands r0, r1
	mov r4, r8
	orrs r0, r4
	str r0, [r6, 0x4]
	ldr r7, _0809A454
	adds r0, r5, r7
	ldrh r0, [r0]
	mov r8, r0
	b _0809A478
	.align 2, 0
_0809A43C: .4byte gUnknown_083B6DB4
_0809A440: .4byte 0x000008ca
_0809A444: .4byte 0x0000ffff
_0809A448: .4byte 0x00030200
_0809A44C: .4byte gSpriteTemplate_83BB2B8
_0809A450: .4byte 0x00000cca
_0809A454: .4byte 0x00000cec
_0809A458:
	ldr r0, [r6, 0x4]
	mov r1, r9
	ands r0, r1
	movs r1, 0x80
	lsls r1, 11
	orrs r0, r1
	str r0, [r6, 0x4]
	ldr r4, _0809A570
	adds r0, r5, r4
	ldrh r0, [r0]
	mov r8, r0
	mov r1, sp
	movs r0, 0x4
	strh r0, [r1]
	ldr r0, _0809A574
	strh r0, [r1, 0x2]
_0809A478:
	ldr r0, [r3]
	ldr r7, _0809A578
	adds r0, r7
	ldr r1, [sp, 0x28]
	lsls r5, r1, 3
	adds r5, r1
	ldr r4, _0809A57C
	adds r5, r4
	adds r1, r5, 0
	bl sub_809A1BC
	adds r0, r6, 0
	bl LoadSpriteSheet
	adds r4, 0x7E
	ldr r3, [sp, 0x28]
	adds r4, r3, r4
	ldrb r0, [r4]
	lsls r0, 2
	ldr r1, _0809A580
	adds r0, r1
	mov r1, r8
	movs r2, 0x4
	bl LoadPalette
	adds r0, r5, 0
	bl sub_8072CA4
	lsls r0, 24
	lsrs r0, 24
	bl sub_809A6D0
	lsls r0, 16
	mov r4, r10
	lsls r2, r4, 24
	asrs r2, 24
	lsls r1, r2, 1
	adds r1, r2
	lsls r1, 6
	lsrs r6, r0, 16
	str r6, [sp, 0x20]
	asrs r0, 16
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x24]
	movs r7, 0
	negs r2, r2
	mov r9, r2
	movs r0, 0x1
	mov r10, r0
_0809A4DE:
	lsls r1, r7, 5
	mov r8, r1
	ldr r3, [sp, 0x24]
	lsls r1, r3, 16
	asrs r1, 16
	add r1, r8
	lsls r1, 16
	asrs r1, 16
	mov r0, sp
	movs r2, 0x1C
	movs r3, 0x17
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0809A584
	ldr r4, [r1]
	lsls r6, r7, 2
	ldr r1, _0809A588
	adds r2, r4, r1
	adds r2, r6
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	ldr r0, _0809A58C
	adds r1, r0
	str r1, [r2]
	mov r3, r9
	lsls r5, r3, 1
	add r5, r9
	lsls r5, 1
	strh r5, [r1, 0x2E]
	ldr r1, [r2]
	ldr r3, [sp, 0x20]
	lsls r0, r3, 16
	asrs r0, 16
	add r0, r8
	strh r0, [r1, 0x30]
	ldr r0, [r2]
	mov r1, r10
	strh r1, [r0, 0x32]
	ldr r0, [r2]
	ldr r1, _0809A590
	str r1, [r0, 0x1C]
	lsls r1, r7, 24
	lsrs r1, 24
	bl StartSpriteAnim
	movs r3, 0xCF
	lsls r3, 4
	adds r4, r3
	adds r4, r6
	ldr r0, [r4]
	strh r5, [r0, 0x2E]
	ldr r0, [r4]
	mov r6, r10
	strh r6, [r0, 0x30]
	ldr r1, [r4]
	ldr r0, _0809A594
	str r0, [r1, 0x1C]
	adds r0, r7, 0x1
	lsls r0, 16
	lsrs r7, r0, 16
	cmp r7, 0x1
	bls _0809A4DE
	add sp, 0x2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A570: .4byte 0x00000cec
_0809A574: .4byte 0x0000dac9
_0809A578: .4byte 0x000008ca
_0809A57C: .4byte gUnknown_020383E4
_0809A580: .4byte gUnknown_083BB0A8
_0809A584: .4byte gUnknown_083B6DB4
_0809A588: .4byte 0x00000cf8
_0809A58C: .4byte gSprites
_0809A590: .4byte sub_809A5E8
_0809A594: .4byte sub_809A61C
	thumb_func_end sub_809A3D0

	thumb_func_start sub_809A598
sub_809A598: @ 809A598
	push {lr}
	ldr r0, _0809A5B0
	ldr r0, [r0]
	ldr r1, _0809A5B4
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809A5B8
	movs r0, 0x4
	bl FreeSpriteTilesByTag
	b _0809A5BE
	.align 2, 0
_0809A5B0: .4byte gUnknown_083B6DB4
_0809A5B4: .4byte 0x00000cca
_0809A5B8:
	movs r0, 0x3
	bl FreeSpriteTilesByTag
_0809A5BE:
	ldr r0, _0809A5E0
	ldr r0, [r0]
	movs r3, 0xCF
	lsls r3, 4
	adds r2, r0, r3
	adds r3, 0x8
	adds r1, r0, r3
	ldr r1, [r1]
	str r1, [r2]
	ldr r2, _0809A5E4
	adds r1, r0, r2
	adds r3, 0x4
	adds r0, r3
	ldr r0, [r0]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0809A5E0: .4byte gUnknown_083B6DB4
_0809A5E4: .4byte 0x00000cf4
	thumb_func_end sub_809A598

	thumb_func_start sub_809A5E8
sub_809A5E8: @ 809A5E8
	push {lr}
	adds r2, r0, 0
	ldrh r1, [r2, 0x32]
	movs r3, 0x32
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _0809A5FC
	subs r0, r1, 0x1
	strh r0, [r2, 0x32]
	b _0809A614
_0809A5FC:
	ldrh r0, [r2, 0x2E]
	ldrh r1, [r2, 0x20]
	adds r0, r1
	strh r0, [r2, 0x20]
	lsls r0, 16
	asrs r0, 16
	movs r3, 0x30
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bne _0809A614
	ldr r0, _0809A618
	str r0, [r2, 0x1C]
_0809A614:
	pop {r0}
	bx r0
	.align 2, 0
_0809A618: .4byte SpriteCallbackDummy
	thumb_func_end sub_809A5E8

	thumb_func_start sub_809A61C
sub_809A61C: @ 809A61C
	push {lr}
	adds r2, r0, 0
	ldrh r1, [r2, 0x30]
	movs r3, 0x30
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _0809A630
	subs r0, r1, 0x1
	strh r0, [r2, 0x30]
	b _0809A64E
_0809A630:
	ldrh r0, [r2, 0x2E]
	ldrh r1, [r2, 0x20]
	adds r0, r1
	strh r0, [r2, 0x20]
	ldrh r1, [r2, 0x24]
	adds r0, r1
	strh r0, [r2, 0x32]
	subs r0, 0x40
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xC0
	bls _0809A64E
	adds r0, r2, 0
	bl DestroySprite
_0809A64E:
	pop {r0}
	bx r0
	thumb_func_end sub_809A61C

	thumb_func_start sub_809A654
sub_809A654: @ 809A654
	push {lr}
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _0809A690
	ldr r2, _0809A694
	adds r1, r2
	adds r0, r1
	ldrb r1, [r0]
	ldr r0, _0809A698
	ldr r2, [r0]
	ldr r3, _0809A69C
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809A6A8
	lsls r0, r1, 2
	ldr r1, _0809A6A0
	adds r0, r1
	adds r3, 0x22
	adds r1, r2, r3
	ldrh r1, [r1]
	lsls r1, 1
	ldr r2, _0809A6A4
	adds r1, r2
	movs r2, 0x2
	bl CpuSet
	b _0809A6C0
	.align 2, 0
_0809A690: .4byte gPokemonStorage
_0809A694: .4byte 0x000083c2
_0809A698: .4byte gUnknown_083B6DB4
_0809A69C: .4byte 0x00000cca
_0809A6A0: .4byte gUnknown_083BB0A8
_0809A6A4: .4byte gPlttBufferUnfaded
_0809A6A8:
	lsls r0, r1, 2
	ldr r1, _0809A6C4
	adds r0, r1
	ldr r3, _0809A6C8
	adds r1, r2, r3
	ldrh r1, [r1]
	lsls r1, 1
	ldr r2, _0809A6CC
	adds r1, r2
	movs r2, 0x2
	bl CpuSet
_0809A6C0:
	pop {r0}
	bx r0
	.align 2, 0
_0809A6C4: .4byte gUnknown_083BB0A8
_0809A6C8: .4byte 0x00000cee
_0809A6CC: .4byte gPlttBufferUnfaded
	thumb_func_end sub_809A654

	thumb_func_start sub_809A6D0
sub_809A6D0: @ 809A6D0
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 25
	movs r0, 0xB0
	subs r0, r1
	bx lr
	thumb_func_end sub_809A6D0

	thumb_func_start sub_809A6DC
sub_809A6DC: @ 809A6DC
	push {r4,r5,lr}
	ldr r0, _0809A760
	bl LoadSpriteSheet
	ldr r0, _0809A764
	bl LoadSpritePalette
	movs r5, 0
_0809A6EC:
	lsls r1, r5, 4
	adds r1, r5
	lsls r1, 19
	movs r0, 0xB8
	lsls r0, 15
	adds r1, r0
	asrs r1, 16
	ldr r0, _0809A768
	movs r2, 0x1C
	movs r3, 0x15
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x40
	beq _0809A73E
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0809A76C
	adds r4, r0, r1
	lsls r1, r5, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	movs r0, 0x1
	cmp r5, 0
	bne _0809A72C
	movs r1, 0x1
	negs r1, r1
	adds r0, r1, 0
_0809A72C:
	strh r0, [r4, 0x34]
	ldr r0, _0809A770
	ldr r0, [r0]
	lsls r1, r5, 2
	movs r2, 0xD0
	lsls r2, 4
	adds r0, r2
	adds r0, r1
	str r4, [r0]
_0809A73E:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x1
	bls _0809A6EC
	bl sub_809BF2C
	lsls r0, 24
	cmp r0, 0
	beq _0809A758
	movs r0, 0x1
	bl sub_809A860
_0809A758:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A760: .4byte gUnknown_083BB288
_0809A764: .4byte gUnknown_083BB290
_0809A768: .4byte gSpriteTemplate_83BB2F0
_0809A76C: .4byte gSprites
_0809A770: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809A6DC

	thumb_func_start sub_809A774
sub_809A774: @ 809A774
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r2, 0
	ldr r7, _0809A7C4
	ldr r0, [r7]
	movs r1, 0xD0
	lsls r1, 4
	adds r3, r0, r1
	movs r5, 0
	movs r4, 0x2
_0809A78A:
	lsls r1, r2, 2
	adds r1, r3, r1
	ldr r0, [r1]
	strh r5, [r0, 0x24]
	ldr r0, [r1]
	strh r4, [r0, 0x2E]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x1
	bls _0809A78A
	lsls r0, r6, 24
	cmp r0, 0
	bge _0809A7CC
	ldr r1, [r7]
	movs r2, 0xD0
	lsls r2, 4
	adds r3, r1, r2
	ldr r2, [r3]
	movs r0, 0x1D
	strh r0, [r2, 0x30]
	ldr r0, _0809A7C8
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x5
	strh r0, [r2, 0x30]
	ldr r0, [r3]
	movs r2, 0x48
	b _0809A7E8
	.align 2, 0
_0809A7C4: .4byte gUnknown_083B6DB4
_0809A7C8: .4byte 0x00000d04
_0809A7CC:
	ldr r1, [r7]
	movs r2, 0xD0
	lsls r2, 4
	adds r3, r1, r2
	ldr r2, [r3]
	movs r0, 0x5
	strh r0, [r2, 0x30]
	ldr r0, _0809A80C
	adds r1, r0
	ldr r2, [r1]
	movs r0, 0x1D
	strh r0, [r2, 0x30]
	ldr r0, [r3]
	movs r2, 0xF8
_0809A7E8:
	strh r2, [r0, 0x32]
	ldr r0, [r1]
	strh r2, [r0, 0x32]
	ldr r1, [r7]
	movs r2, 0xD0
	lsls r2, 4
	adds r0, r1, r2
	ldr r2, [r0]
	movs r0, 0
	strh r0, [r2, 0x3C]
	ldr r0, _0809A80C
	adds r1, r0
	ldr r1, [r1]
	movs r0, 0x1
	strh r0, [r1, 0x3C]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A80C: .4byte 0x00000d04
	thumb_func_end sub_809A774

	thumb_func_start sub_809A810
sub_809A810: @ 809A810
	push {r4-r6,lr}
	movs r3, 0
	ldr r0, _0809A85C
	ldr r0, [r0]
	movs r1, 0xD0
	lsls r1, 4
	adds r4, r0, r1
	movs r5, 0
	movs r6, 0x5
	negs r6, r6
_0809A824:
	lsls r1, r3, 2
	adds r1, r4, r1
	ldr r2, [r1]
	lsls r0, r3, 4
	adds r0, r3
	lsls r0, 3
	adds r0, 0x5C
	strh r0, [r2, 0x20]
	ldr r0, [r1]
	strh r5, [r0, 0x24]
	ldr r1, [r1]
	adds r1, 0x3E
	ldrb r2, [r1]
	adds r0, r6, 0
	ands r0, r2
	strb r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x1
	bls _0809A824
	movs r0, 0x1
	bl sub_809A860
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809A85C: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809A810

	thumb_func_start sub_809A860
sub_809A860: @ 809A860
	push {r4,r5,lr}
	lsls r0, 24
	cmp r0, 0
	beq _0809A89C
	movs r2, 0
	ldr r0, _0809A898
	ldr r0, [r0]
	movs r1, 0xD0
	lsls r1, 4
	adds r4, r0, r1
	movs r3, 0
	movs r5, 0x1
_0809A878:
	lsls r1, r2, 2
	adds r1, r4, r1
	ldr r0, [r1]
	strh r5, [r0, 0x2E]
	ldr r0, [r1]
	strh r3, [r0, 0x30]
	ldr r0, [r1]
	strh r3, [r0, 0x32]
	ldr r0, [r1]
	strh r3, [r0, 0x36]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x1
	bls _0809A878
	b _0809A8BC
	.align 2, 0
_0809A898: .4byte gUnknown_083B6DB4
_0809A89C:
	movs r2, 0
	ldr r0, _0809A8C4
	ldr r0, [r0]
	movs r3, 0xD0
	lsls r3, 4
	adds r1, r0, r3
	movs r3, 0
_0809A8AA:
	lsls r0, r2, 2
	adds r0, r1, r0
	ldr r0, [r0]
	strh r3, [r0, 0x2E]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x1
	bls _0809A8AA
_0809A8BC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809A8C4: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809A860

	thumb_func_start sub_809A8C8
sub_809A8C8: @ 809A8C8
	push {lr}
	adds r2, r0, 0
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0x4
	bhi _0809A994
	lsls r0, 2
	ldr r1, _0809A8E0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809A8E0: .4byte _0809A8E4
	.align 2, 0
_0809A8E4:
	.4byte _0809A8F8
	.4byte _0809A8FE
	.4byte _0809A92C
	.4byte _0809A932
	.4byte _0809A984
_0809A8F8:
	movs r0, 0
	strh r0, [r2, 0x24]
	b _0809A994
_0809A8FE:
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	movs r1, 0
	strh r0, [r2, 0x30]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x3
	ble _0809A994
	strh r1, [r2, 0x30]
	ldrh r0, [r2, 0x34]
	ldrh r3, [r2, 0x24]
	adds r0, r3
	strh r0, [r2, 0x24]
	ldrh r0, [r2, 0x32]
	adds r0, 0x1
	strh r0, [r2, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x5
	ble _0809A994
	strh r1, [r2, 0x32]
	strh r1, [r2, 0x24]
	b _0809A994
_0809A92C:
	movs r0, 0x3
	strh r0, [r2, 0x2E]
	b _0809A994
_0809A932:
	ldr r0, _0809A97C
	ldr r1, [r0]
	ldr r0, _0809A980
	adds r1, r0
	ldrh r0, [r2, 0x20]
	ldrh r1, [r1]
	subs r0, r1
	strh r0, [r2, 0x20]
	subs r0, 0x49
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAE
	bls _0809A958
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
_0809A958:
	ldrh r0, [r2, 0x30]
	subs r0, 0x1
	strh r0, [r2, 0x30]
	lsls r0, 16
	cmp r0, 0
	bne _0809A994
	ldrh r0, [r2, 0x32]
	strh r0, [r2, 0x20]
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	movs r0, 0x4
	strh r0, [r2, 0x2E]
	b _0809A994
	.align 2, 0
_0809A97C: .4byte gUnknown_083B6DB4
_0809A980: .4byte 0x000008b6
_0809A984:
	ldr r0, _0809A998
	ldr r0, [r0]
	ldr r1, _0809A99C
	adds r0, r1
	ldrh r1, [r2, 0x20]
	ldrh r0, [r0]
	subs r1, r0
	strh r1, [r2, 0x20]
_0809A994:
	pop {r0}
	bx r0
	.align 2, 0
_0809A998: .4byte gUnknown_083B6DB4
_0809A99C: .4byte 0x000008b6
	thumb_func_end sub_809A8C8

	thumb_func_start sub_809A9A0
sub_809A9A0: @ 809A9A0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r5, r0, 0
	adds r6, r1, 0
	ldr r4, [sp, 0x18]
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r8, r3
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _0809AA0C
	lsls r5, 16
	asrs r5, 16
	lsls r6, 16
	asrs r6, 16
	adds r1, r5, 0
	adds r2, r6, 0
	adds r3, r4, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x40
	beq _0809AA18
	movs r1, 0x1
	ands r1, r7
	lsls r4, r0, 4
	adds r4, r0
	lsls r4, 2
	ldr r5, _0809AA10
	adds r6, r4, r5
	adds r0, r6, 0
	bl StartSpriteAnim
	movs r0, 0x3
	mov r1, r8
	ands r1, r0
	lsls r1, 2
	ldrb r2, [r6, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, 0x5]
	adds r5, 0x1C
	adds r4, r5
	ldr r0, _0809AA14
	str r0, [r4]
	adds r0, r6, 0
	b _0809AA1A
	.align 2, 0
_0809AA0C: .4byte gSpriteTemplate_83BB2F0
_0809AA10: .4byte gSprites
_0809AA14: .4byte SpriteCallbackDummy
_0809AA18:
	movs r0, 0
_0809AA1A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809A9A0

	thumb_func_start sub_809AA24
sub_809AA24: @ 809AA24
	push {lr}
	ldr r0, _0809AA38
	ldr r0, [r0]
	ldrb r1, [r0, 0x5]
	cmp r1, 0x1
	beq _0809AA40
	ldr r1, _0809AA3C
	movs r0, 0
	strb r0, [r1]
	b _0809AA44
	.align 2, 0
_0809AA38: .4byte gUnknown_083B6DB4
_0809AA3C: .4byte gUnknown_020384E4
_0809AA40:
	ldr r0, _0809AA78
	strb r1, [r0]
_0809AA44:
	ldr r0, _0809AA7C
	movs r1, 0
	strb r1, [r0]
	ldr r0, _0809AA80
	strb r1, [r0]
	ldr r0, _0809AA84
	strb r1, [r0]
	ldr r0, _0809AA88
	strb r1, [r0]
	ldr r0, _0809AA8C
	strb r1, [r0]
	bl sub_809B0D4
	bl sub_809CC04
	ldr r0, _0809AA90
	ldr r0, [r0]
	ldr r1, _0809AA94
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	bl sub_809BF74
	pop {r0}
	bx r0
	.align 2, 0
_0809AA78: .4byte gUnknown_020384E4
_0809AA7C: .4byte gUnknown_020384E5
_0809AA80: .4byte gUnknown_020384E6
_0809AA84: .4byte gUnknown_020384E7
_0809AA88: .4byte gUnknown_020384E8
_0809AA8C: .4byte gUnknown_020384E9
_0809AA90: .4byte gUnknown_083B6DB4
_0809AA94: .4byte 0x000011e2
	thumb_func_end sub_809AA24

	thumb_func_start sub_809AA98
sub_809AA98: @ 809AA98
	push {lr}
	bl sub_809CC04
	bl sub_809C028
	ldr r0, _0809AAC0
	ldr r0, [r0]
	ldr r1, _0809AAC4
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, _0809AAC8
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809AABA
	bl sub_8098BF0
_0809AABA:
	pop {r0}
	bx r0
	.align 2, 0
_0809AAC0: .4byte gUnknown_083B6DB4
_0809AAC4: .4byte 0x000011e2
_0809AAC8: .4byte gUnknown_020384E6
	thumb_func_end sub_809AA98

	thumb_func_start sub_809AACC
sub_809AACC: @ 809AACC
	push {r4-r6,lr}
	adds r4, r2, 0
	adds r6, r3, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	cmp r0, 0x4
	bhi _0809AB84
	lsls r0, 2
	ldr r1, _0809AAE8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809AAE8: .4byte _0809AAEC
	.align 2, 0
_0809AAEC:
	.4byte _0809AB00
	.4byte _0809AB2E
	.4byte _0809AB56
	.4byte _0809AB5E
	.4byte _0809AB7C
_0809AB00:
	adds r0, r5, 0
	movs r1, 0x6
	bl __umodsi3
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 3
	adds r1, 0x64
	strh r1, [r4]
	adds r0, r5, 0
	movs r1, 0x6
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 3
	adds r1, 0x20
	strh r1, [r6]
	b _0809AB84
_0809AB2E:
	cmp r5, 0
	bne _0809AB3A
	movs r0, 0x68
	strh r0, [r4]
	movs r0, 0x34
	b _0809AB82
_0809AB3A:
	cmp r5, 0x6
	bne _0809AB46
	movs r0, 0x98
	strh r0, [r4]
	movs r0, 0x84
	b _0809AB82
_0809AB46:
	movs r0, 0x98
	strh r0, [r4]
	subs r1, r5, 0x1
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 3
	adds r0, 0x4
	b _0809AB82
_0809AB56:
	movs r0, 0xA2
	strh r0, [r4]
	movs r0, 0xC
	b _0809AB82
_0809AB5E:
	ldr r0, _0809AB78
	ldrb r0, [r0]
	movs r1, 0xE
	cmp r0, 0
	beq _0809AB6A
	movs r1, 0x8
_0809AB6A:
	strh r1, [r6]
	movs r0, 0x58
	muls r0, r5
	adds r0, 0x78
	strh r0, [r4]
	b _0809AB84
	.align 2, 0
_0809AB78: .4byte gUnknown_020384E6
_0809AB7C:
	movs r0, 0xA0
	strh r0, [r4]
	movs r0, 0x60
_0809AB82:
	strh r0, [r6]
_0809AB84:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_809AACC

	thumb_func_start sub_809AB8C
sub_809AB8C: @ 809AB8C
	push {lr}
	ldr r0, _0809ABB4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0809ABC0
	cmp r0, 0x1
	bne _0809ABF8
	ldr r0, _0809ABB8
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0809ABBC
	adds r0, r1
	movs r1, 0xB
	bl GetMonData
	b _0809ABEA
	.align 2, 0
_0809ABB4: .4byte gUnknown_020384E4
_0809ABB8: .4byte gUnknown_020384E5
_0809ABBC: .4byte gPlayerParty
_0809ABC0:
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	ldr r1, _0809ABF0
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	ldr r2, _0809ABF4
	adds r1, r2
	adds r0, r1
	movs r1, 0xB
	bl GetBoxMonData
_0809ABEA:
	lsls r0, 16
	lsrs r0, 16
	b _0809ABFA
	.align 2, 0
_0809ABF0: .4byte gUnknown_020384E5
_0809ABF4: .4byte gUnknown_020300A4
_0809ABF8:
	movs r0, 0
_0809ABFA:
	pop {r1}
	bx r1
	thumb_func_end sub_809AB8C

	thumb_func_start sub_809AC00
sub_809AC00: @ 809AC00
	push {r4-r6,lr}
	ldr r0, _0809AC14
	ldr r4, [r0]
	ldr r0, _0809AC18
	adds r1, r4, r0
	ldrh r0, [r1]
	cmp r0, 0
	bne _0809AC1C
	movs r0, 0
	b _0809AD2C
	.align 2, 0
_0809AC14: .4byte gUnknown_083B6DB4
_0809AC18: .4byte 0x000011dc
_0809AC1C:
	subs r0, 0x1
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	beq _0809AD0C
	ldr r1, _0809ACF4
	adds r3, r4, r1
	ldr r2, _0809ACF8
	adds r1, r4, r2
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r1
	str r0, [r3]
	ldr r6, _0809ACFC
	adds r2, r4, r6
	ldr r0, _0809AD00
	adds r1, r4, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r1
	str r0, [r2]
	movs r1, 0x8E
	lsls r1, 5
	adds r5, r4, r1
	ldr r1, [r5]
	ldr r0, [r3]
	asrs r0, 8
	strh r0, [r1, 0x20]
	ldr r1, [r5]
	ldr r0, [r2]
	asrs r0, 8
	strh r0, [r1, 0x22]
	ldr r1, [r5]
	ldrh r2, [r1, 0x20]
	movs r3, 0x20
	ldrsh r0, [r1, r3]
	movs r3, 0x80
	lsls r3, 1
	cmp r0, r3
	ble _0809AC78
	ldr r6, _0809AD04
	adds r0, r2, r6
	lsls r0, 16
	asrs r0, 16
	adds r0, 0x40
	strh r0, [r1, 0x20]
_0809AC78:
	ldr r1, [r5]
	ldrh r2, [r1, 0x20]
	movs r6, 0x20
	ldrsh r0, [r1, r6]
	cmp r0, 0x3F
	bgt _0809AC90
	movs r0, 0x40
	subs r0, r2
	lsls r0, 16
	asrs r0, 16
	subs r0, r3, r0
	strh r0, [r1, 0x20]
_0809AC90:
	ldr r1, [r5]
	ldrh r2, [r1, 0x22]
	movs r3, 0x22
	ldrsh r0, [r1, r3]
	cmp r0, 0xB0
	ble _0809ACA8
	adds r0, r2, 0
	subs r0, 0xB0
	lsls r0, 16
	asrs r0, 16
	subs r0, 0x10
	strh r0, [r1, 0x22]
_0809ACA8:
	ldr r2, [r5]
	ldrh r3, [r2, 0x22]
	movs r6, 0x22
	ldrsh r0, [r2, r6]
	movs r1, 0x10
	negs r1, r1
	cmp r0, r1
	bge _0809ACC4
	subs r0, r1, r3
	movs r1, 0xB0
	lsls r0, 16
	asrs r0, 16
	subs r1, r0
	strh r1, [r2, 0x22]
_0809ACC4:
	ldr r0, _0809AD08
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _0809AD2A
	subs r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	cmp r0, 0
	bne _0809AD2A
	ldr r2, [r5]
	adds r2, 0x3F
	ldrb r3, [r2]
	lsrs r1, r3, 1
	movs r0, 0x1
	eors r1, r0
	ands r1, r0
	lsls r1, 1
	movs r0, 0x3
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	b _0809AD2A
	.align 2, 0
_0809ACF4: .4byte 0x000011c8
_0809ACF8: .4byte 0x000011d0
_0809ACFC: .4byte 0x000011cc
_0809AD00: .4byte 0x000011d4
_0809AD04: .4byte 0xffffff00
_0809AD08: .4byte 0x000011e3
_0809AD0C:
	movs r1, 0x8E
	lsls r1, 5
	adds r2, r4, r1
	ldr r1, [r2]
	ldr r3, _0809AD34
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1, 0x20]
	ldr r1, [r2]
	ldr r6, _0809AD38
	adds r0, r4, r6
	ldrh r0, [r0]
	strh r0, [r1, 0x22]
	bl sub_809AFB8
_0809AD2A:
	movs r0, 0x1
_0809AD2C:
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809AD34: .4byte 0x000011d8
_0809AD38: .4byte 0x000011da
	thumb_func_end sub_809AC00

	thumb_func_start sub_809AD3C
sub_809AD3C: @ 809AD3C
	push {r4-r6,lr}
	sub sp, 0x4
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	mov r6, sp
	adds r6, 0x2
	adds r0, r4, 0
	adds r1, r5, 0
	mov r2, sp
	adds r3, r6, 0
	bl sub_809AACC
	ldr r0, _0809AD88
	ldr r1, [r0]
	movs r2, 0x8F
	lsls r2, 5
	adds r0, r1, r2
	strb r4, [r0]
	ldr r3, _0809AD8C
	adds r0, r1, r3
	strb r5, [r0]
	mov r0, sp
	ldrh r2, [r0]
	subs r3, 0x9
	adds r0, r1, r3
	strh r2, [r0]
	ldrh r0, [r6]
	ldr r2, _0809AD90
	adds r1, r2
	strh r0, [r1]
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809AD88: .4byte gUnknown_083B6DB4
_0809AD8C: .4byte 0x000011e1
_0809AD90: .4byte 0x000011da
	thumb_func_end sub_809AD3C

	thumb_func_start sub_809AD94
sub_809AD94: @ 809AD94
	push {r4-r7,lr}
	ldr r0, _0809ADB0
	ldr r2, [r0]
	ldr r3, _0809ADB4
	adds r1, r2, r3
	ldrh r1, [r1]
	adds r4, r0, 0
	cmp r1, 0
	beq _0809ADBC
	ldr r0, _0809ADB8
	adds r1, r2, r0
	movs r0, 0xC
	b _0809ADC2
	.align 2, 0
_0809ADB0: .4byte gUnknown_083B6DB4
_0809ADB4: .4byte 0x000011de
_0809ADB8: .4byte 0x000011dc
_0809ADBC:
	ldr r3, _0809AE04
	adds r1, r2, r3
	movs r0, 0x6
_0809ADC2:
	strh r0, [r1]
	ldr r2, [r4]
	ldr r0, _0809AE08
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, 0
	beq _0809ADDA
	ldr r3, _0809AE04
	adds r0, r2, r3
	ldrh r0, [r0]
	lsrs r0, 1
	strb r0, [r1]
_0809ADDA:
	ldr r1, _0809AE0C
	adds r0, r2, r1
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _0809AE14
	cmp r1, 0x1
	beq _0809AE30
	ldr r3, _0809AE10
	adds r0, r2, r3
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r3, 0x8E
	lsls r3, 5
	adds r0, r2, r3
	ldr r0, [r0]
	movs r2, 0x22
	ldrsh r0, [r0, r2]
	b _0809AE46
	.align 2, 0
_0809AE04: .4byte 0x000011dc
_0809AE08: .4byte 0x000011e3
_0809AE0C: .4byte 0x000011de
_0809AE10: .4byte 0x000011da
_0809AE14:
	ldr r3, _0809AE2C
	adds r0, r2, r3
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r3, 0x8E
	lsls r3, 5
	adds r0, r2, r3
	ldr r0, [r0]
	movs r2, 0x22
	ldrsh r0, [r0, r2]
	adds r0, 0xC0
	b _0809AE46
	.align 2, 0
_0809AE2C: .4byte 0x000011da
_0809AE30:
	ldr r3, _0809AE74
	adds r0, r2, r3
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r3, 0x8E
	lsls r3, 5
	adds r0, r2, r3
	ldr r0, [r0]
	movs r2, 0x22
	ldrsh r0, [r0, r2]
	subs r0, 0xC0
_0809AE46:
	subs r7, r1, r0
	ldr r2, [r4]
	ldr r3, _0809AE78
	adds r0, r2, r3
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _0809AE80
	cmp r1, 0x1
	beq _0809AE9C
	ldr r1, _0809AE7C
	adds r0, r2, r1
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r3, 0x8E
	lsls r3, 5
	adds r0, r2, r3
	ldr r0, [r0]
	movs r2, 0x20
	ldrsh r0, [r0, r2]
	b _0809AEB2
	.align 2, 0
_0809AE74: .4byte 0x000011da
_0809AE78: .4byte 0x000011df
_0809AE7C: .4byte 0x000011d8
_0809AE80:
	ldr r3, _0809AE98
	adds r0, r2, r3
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r3, 0x8E
	lsls r3, 5
	adds r0, r2, r3
	ldr r0, [r0]
	movs r2, 0x20
	ldrsh r0, [r0, r2]
	adds r0, 0xC0
	b _0809AEB2
	.align 2, 0
_0809AE98: .4byte 0x000011d8
_0809AE9C:
	ldr r3, _0809AF00
	adds r0, r2, r3
	movs r3, 0
	ldrsh r1, [r0, r3]
	movs r3, 0x8E
	lsls r3, 5
	adds r0, r2, r3
	ldr r0, [r0]
	movs r2, 0x20
	ldrsh r0, [r0, r2]
	subs r0, 0xC0
_0809AEB2:
	subs r0, r1, r0
	lsls r7, 8
	lsls r0, 8
	ldr r4, [r4]
	ldr r3, _0809AF04
	adds r6, r4, r3
	ldr r1, _0809AF08
	adds r5, r4, r1
	ldrh r1, [r5]
	bl __divsi3
	str r0, [r6]
	ldr r2, _0809AF0C
	adds r6, r4, r2
	ldrh r1, [r5]
	adds r0, r7, 0
	bl __divsi3
	str r0, [r6]
	ldr r3, _0809AF10
	adds r2, r4, r3
	movs r0, 0x8E
	lsls r0, 5
	adds r1, r4, r0
	ldr r0, [r1]
	movs r3, 0x20
	ldrsh r0, [r0, r3]
	lsls r0, 8
	str r0, [r2]
	ldr r0, _0809AF14
	adds r4, r0
	ldr r0, [r1]
	movs r1, 0x22
	ldrsh r0, [r0, r1]
	lsls r0, 8
	str r0, [r4]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809AF00: .4byte 0x000011d8
_0809AF04: .4byte 0x000011d0
_0809AF08: .4byte 0x000011dc
_0809AF0C: .4byte 0x000011d4
_0809AF10: .4byte 0x000011c8
_0809AF14: .4byte 0x000011cc
	thumb_func_end sub_809AD94

	thumb_func_start sub_809AF18
sub_809AF18: @ 809AF18
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_809AD3C
	bl sub_809AD94
	ldr r0, _0809AFA4
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809AF46
	ldr r0, _0809AFA8
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x1
	bl StartSpriteAnim
_0809AF46:
	cmp r4, 0x1
	bne _0809AF70
	ldr r0, _0809AFAC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	beq _0809AF70
	ldr r0, _0809AFA8
	ldr r0, [r0]
	ldr r2, _0809AFB0
	adds r1, r0, r2
	strb r4, [r1]
	ldr r1, _0809AFB4
	adds r0, r1
	ldr r1, [r0]
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r2, 0x4
	orrs r0, r2
	strb r0, [r1]
_0809AF70:
	cmp r4, 0
	beq _0809AF9E
	cmp r4, 0
	blt _0809AF9E
	cmp r4, 0x3
	bgt _0809AF9E
	ldr r0, _0809AFA8
	ldr r2, [r0]
	ldr r0, _0809AFB4
	adds r2, r0
	ldr r1, [r2]
	adds r1, 0x3E
	ldrb r0, [r1]
	movs r3, 0x4
	orrs r0, r3
	strb r0, [r1]
	ldr r2, [r2]
	ldrb r1, [r2, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, 0x5]
_0809AF9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809AFA4: .4byte gUnknown_020384E6
_0809AFA8: .4byte gUnknown_083B6DB4
_0809AFAC: .4byte gUnknown_020384E4
_0809AFB0: .4byte 0x000011e2
_0809AFB4: .4byte 0x000011c4
	thumb_func_end sub_809AF18

	thumb_func_start sub_809AFB8
sub_809AFB8: @ 809AFB8
	push {r4,r5,lr}
	ldr r5, _0809B000
	ldr r0, _0809B004
	ldr r4, [r0]
	movs r1, 0x8F
	lsls r1, 5
	adds r0, r4, r1
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r1, _0809B008
	ldr r2, _0809B00C
	adds r0, r4, r2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0809B010
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809AFEA
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0
	bl StartSpriteAnim
_0809AFEA:
	bl sub_809BF74
	movs r0, 0
	ldrsb r0, [r5, r0]
	cmp r0, 0x1
	beq _0809B020
	cmp r0, 0x1
	bgt _0809B014
	cmp r0, 0
	beq _0809B034
	b _0809B05E
	.align 2, 0
_0809B000: .4byte gUnknown_020384E4
_0809B004: .4byte gUnknown_083B6DB4
_0809B008: .4byte gUnknown_020384E5
_0809B00C: .4byte 0x000011e1
_0809B010: .4byte gUnknown_020384E6
_0809B014:
	cmp r0, 0x2
	bne _0809B05E
	movs r0, 0x1
	bl sub_809A860
	b _0809B05E
_0809B020:
	ldr r2, _0809B030
	adds r0, r4, r2
	ldr r0, [r0]
	adds r0, 0x43
	movs r1, 0xC
	strb r1, [r0]
	b _0809B05E
	.align 2, 0
_0809B030: .4byte 0x000011c4
_0809B034:
	ldr r0, _0809B064
	adds r2, r4, r0
	ldr r3, [r2]
	ldrb r1, [r3, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r1
	movs r1, 0x8
	orrs r0, r1
	strb r0, [r3, 0x5]
	ldr r0, [r2]
	adds r0, 0x43
	movs r1, 0x14
	strb r1, [r0]
	ldr r1, [r2]
	adds r1, 0x3E
	ldrb r2, [r1]
	movs r0, 0x5
	negs r0, r0
	ands r0, r2
	strb r0, [r1]
_0809B05E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B064: .4byte 0x000011c4
	thumb_func_end sub_809AFB8

	thumb_func_start sub_809B068
sub_809B068: @ 809B068
	push {lr}
	ldr r0, _0809B078
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809B07C
	movs r3, 0
	b _0809B08A
	.align 2, 0
_0809B078: .4byte gUnknown_020384E6
_0809B07C:
	bl CalculatePlayerPartyCount
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x5
	bls _0809B08A
	movs r3, 0x5
_0809B08A:
	ldr r0, _0809B0B8
	ldr r2, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809B0AA
	ldr r0, _0809B0BC
	adds r1, r2, r0
	movs r0, 0x1
	strb r0, [r1]
_0809B0AA:
	movs r0, 0x1
	adds r1, r3, 0
	bl sub_809AF18
	pop {r0}
	bx r0
	.align 2, 0
_0809B0B8: .4byte gUnknown_083B6DB4
_0809B0BC: .4byte 0x000011e3
	thumb_func_end sub_809B068

	thumb_func_start sub_809B0C0
sub_809B0C0: @ 809B0C0
	push {lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0
	bl sub_809AF18
	pop {r0}
	bx r0
	thumb_func_end sub_809B0C0

	thumb_func_start sub_809B0D4
sub_809B0D4: @ 809B0D4
	ldr r1, _0809B0DC
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0809B0DC: .4byte gUnknown_020384EA
	thumb_func_end sub_809B0D4

	thumb_func_start sub_809B0E0
sub_809B0E0: @ 809B0E0
	ldr r0, _0809B0EC
	ldr r1, _0809B0F0
	ldrb r1, [r1]
	strb r1, [r0]
	bx lr
	.align 2, 0
_0809B0EC: .4byte gUnknown_020384EA
_0809B0F0: .4byte gUnknown_020384E5
	thumb_func_end sub_809B0E0

	thumb_func_start sub_809B0F4
sub_809B0F4: @ 809B0F4
	ldr r0, _0809B0FC
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0809B0FC: .4byte gUnknown_020384EA
	thumb_func_end sub_809B0F4

	thumb_func_start sub_809B100
sub_809B100: @ 809B100
	lsls r0, 24
	ldr r1, _0809B120
	ldr r1, [r1]
	ldr r2, _0809B124
	adds r3, r1, r2
	ldr r2, _0809B128
	lsrs r0, 22
	adds r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _0809B12C
	adds r1, r0
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0809B120: .4byte gUnknown_083B6DB4
_0809B124: .4byte 0x000012a4
_0809B128: .4byte gUnknown_083BBBC8
_0809B12C: .4byte 0x000012a8
	thumb_func_end sub_809B100

	thumb_func_start sub_809B130
sub_809B130: @ 809B130
	push {lr}
	ldr r0, _0809B148
	ldr r0, [r0]
	ldr r1, _0809B14C
	adds r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.align 2, 0
_0809B148: .4byte gUnknown_083B6DB4
_0809B14C: .4byte 0x000012a4
	thumb_func_end sub_809B130

	thumb_func_start sub_809B150
sub_809B150: @ 809B150
	push {r4,r5,lr}
	ldr r0, _0809B16C
	ldr r5, [r0]
	ldr r0, _0809B170
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, 0x1
	beq _0809B1A0
	cmp r0, 0x1
	bgt _0809B174
	cmp r0, 0
	beq _0809B17E
	b _0809B1CE
	.align 2, 0
_0809B16C: .4byte gUnknown_083B6DB4
_0809B170: .4byte 0x000012a8
_0809B174:
	cmp r0, 0x2
	beq _0809B1BE
	cmp r0, 0x3
	beq _0809B186
	b _0809B1CE
_0809B17E:
	ldr r0, _0809B18C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809B190
_0809B186:
	movs r0, 0
	b _0809B1D0
	.align 2, 0
_0809B18C: .4byte gUnknown_020384E6
_0809B190:
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, 0x2
	bl StartSpriteAnim
	b _0809B1C8
_0809B1A0:
	bl sub_809B324
	lsls r0, 24
	cmp r0, 0
	bne _0809B1CE
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, 0x3
	bl StartSpriteAnim
	bl sub_809B384
	b _0809B1C8
_0809B1BE:
	bl sub_809B358
	lsls r0, 24
	cmp r0, 0
	bne _0809B1CE
_0809B1C8:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
_0809B1CE:
	movs r0, 0x1
_0809B1D0:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809B150

	thumb_func_start sub_809B1D8
sub_809B1D8: @ 809B1D8
	push {r4,r5,lr}
	ldr r0, _0809B1F4
	ldr r4, [r0]
	ldr r0, _0809B1F8
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, 0x1
	beq _0809B220
	cmp r0, 0x1
	bgt _0809B1FC
	cmp r0, 0
	beq _0809B202
	b _0809B244
	.align 2, 0
_0809B1F4: .4byte gUnknown_083B6DB4
_0809B1F8: .4byte 0x000012a8
_0809B1FC:
	cmp r0, 0x2
	beq _0809B240
	b _0809B244
_0809B202:
	bl sub_809B324
	lsls r0, 24
	cmp r0, 0
	bne _0809B244
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0x2
	bl StartSpriteAnim
	bl sub_809B3E0
	b _0809B238
_0809B220:
	bl sub_809B358
	lsls r0, 24
	cmp r0, 0
	bne _0809B244
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0
	bl StartSpriteAnim
_0809B238:
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _0809B244
_0809B240:
	movs r0, 0
	b _0809B246
_0809B244:
	movs r0, 0x1
_0809B246:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809B1D8

	thumb_func_start sub_809B24C
sub_809B24C: @ 809B24C
	push {r4,r5,lr}
	ldr r0, _0809B268
	ldr r4, [r0]
	ldr r0, _0809B26C
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, 0x1
	beq _0809B2E0
	cmp r0, 0x1
	bgt _0809B270
	cmp r0, 0
	beq _0809B276
	b _0809B31C
	.align 2, 0
_0809B268: .4byte gUnknown_083B6DB4
_0809B26C: .4byte 0x000012a8
_0809B270:
	cmp r0, 0x2
	beq _0809B318
	b _0809B31C
_0809B276:
	ldr r0, _0809B290
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0809B298
	cmp r0, 0x1
	bne _0809B318
	ldr r2, _0809B294
	adds r1, r4, r2
	movs r0, 0xE
	b _0809B2A0
	.align 2, 0
_0809B290: .4byte gUnknown_020384E4
_0809B294: .4byte 0x000012a9
_0809B298:
	bl get_preferred_box
	ldr r2, _0809B2D0
	adds r1, r4, r2
_0809B2A0:
	strb r0, [r1]
	ldr r0, _0809B2D4
	ldr r4, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0x2
	bl StartSpriteAnim
	ldr r2, _0809B2D0
	adds r0, r4, r2
	ldrb r0, [r0]
	ldr r1, _0809B2D8
	ldrb r1, [r1]
	bl sub_80996B0
	ldr r0, _0809B2DC
	adds r4, r0
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _0809B31C
	.align 2, 0
_0809B2D0: .4byte 0x000012a9
_0809B2D4: .4byte gUnknown_083B6DB4
_0809B2D8: .4byte gUnknown_020384E5
_0809B2DC: .4byte 0x000012a8
_0809B2E0:
	bl sub_809971C
	lsls r0, 24
	cmp r0, 0
	bne _0809B31C
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, 0x3
	bl StartSpriteAnim
	ldr r2, _0809B310
	adds r0, r4, r2
	ldrb r0, [r0]
	ldr r1, _0809B314
	ldrb r1, [r1]
	bl diegohint1
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	b _0809B31C
	.align 2, 0
_0809B310: .4byte 0x000012a9
_0809B314: .4byte gUnknown_020384E5
_0809B318:
	movs r0, 0
	b _0809B31E
_0809B31C:
	movs r0, 0x1
_0809B31E:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809B24C

	thumb_func_start sub_809B324
sub_809B324: @ 809B324
	push {lr}
	ldr r0, _0809B348
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r1, [r0]
	movs r2, 0x26
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _0809B33E
	cmp r0, 0x8
	beq _0809B34C
_0809B33E:
	ldrh r0, [r1, 0x26]
	adds r0, 0x1
	strh r0, [r1, 0x26]
	b _0809B350
	.align 2, 0
_0809B348: .4byte gUnknown_083B6DB4
_0809B34C:
	movs r0, 0
	b _0809B352
_0809B350:
	movs r0, 0x1
_0809B352:
	pop {r1}
	bx r1
	thumb_func_end sub_809B324

	thumb_func_start sub_809B358
sub_809B358: @ 809B358
	push {lr}
	ldr r0, _0809B378
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r1, [r0]
	movs r2, 0x26
	ldrsh r0, [r1, r2]
	cmp r0, 0
	beq _0809B37C
	ldrh r0, [r1, 0x26]
	subs r0, 0x1
	strh r0, [r1, 0x26]
	movs r0, 0x1
	b _0809B37E
	.align 2, 0
_0809B378: .4byte gUnknown_083B6DB4
_0809B37C:
	movs r0, 0
_0809B37E:
	pop {r1}
	bx r1
	thumb_func_end sub_809B358

	thumb_func_start sub_809B384
sub_809B384: @ 809B384
	push {r4,lr}
	ldr r0, _0809B3AC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0809B3B4
	cmp r0, 0x1
	bne _0809B3D2
	ldr r4, _0809B3B0
	ldrb r1, [r4]
	movs r0, 0xE
	bl sub_809B44C
	ldrb r1, [r4]
	movs r0, 0
	bl sub_8099584
	b _0809B3CC
	.align 2, 0
_0809B3AC: .4byte gUnknown_020384E4
_0809B3B0: .4byte gUnknown_020384E5
_0809B3B4:
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	ldr r4, _0809B3D8
	ldrb r1, [r4]
	bl sub_809B44C
	ldrb r1, [r4]
	movs r0, 0x1
	bl sub_8099584
_0809B3CC:
	ldr r1, _0809B3DC
	movs r0, 0x1
	strb r0, [r1]
_0809B3D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809B3D8: .4byte gUnknown_020384E5
_0809B3DC: .4byte gUnknown_020384E6
	thumb_func_end sub_809B384

	thumb_func_start sub_809B3E0
sub_809B3E0: @ 809B3E0
	push {r4,r5,lr}
	ldr r0, _0809B408
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0809B410
	cmp r0, 0x1
	bne _0809B432
	ldr r4, _0809B40C
	ldrb r1, [r4]
	movs r0, 0xE
	bl diegohint2
	ldrb r1, [r4]
	movs r0, 0xE
	bl sub_809960C
	b _0809B42C
	.align 2, 0
_0809B408: .4byte gUnknown_020384E4
_0809B40C: .4byte gUnknown_020384E5
_0809B410:
	bl get_preferred_box
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, _0809B438
	ldrb r1, [r5]
	adds r0, r4, 0
	bl diegohint2
	ldrb r1, [r5]
	adds r0, r4, 0
	bl sub_809960C
_0809B42C:
	ldr r1, _0809B43C
	movs r0, 0
	strb r0, [r1]
_0809B432:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B438: .4byte gUnknown_020384E5
_0809B43C: .4byte gUnknown_020384E6
	thumb_func_end sub_809B3E0

	thumb_func_start sub_809B440
sub_809B440: @ 809B440
	push {lr}
	bl sub_809BF74
	pop {r0}
	bx r0
	thumb_func_end sub_809B440

	thumb_func_start sub_809B44C
sub_809B44C: @ 809B44C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	cmp r4, 0xE
	bne _0809B488
	ldr r0, _0809B478
	ldr r0, [r0]
	ldr r1, _0809B47C
	adds r0, r1
	ldr r3, _0809B480
	ldr r1, _0809B484
	movs r2, 0
	ldrsb r2, [r1, r2]
	movs r1, 0x64
	muls r1, r2
	adds r1, r3
	movs r2, 0x64
	bl memcpy
	b _0809B4AA
	.align 2, 0
_0809B478: .4byte gUnknown_083B6DB4
_0809B47C: .4byte 0x000025b4
_0809B480: .4byte gPlayerParty
_0809B484: .4byte gUnknown_020384E5
_0809B488:
	lsls r1, r4, 2
	adds r1, r4
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 4
	ldr r2, _0809B4C0
	adds r1, r2
	adds r0, r1
	ldr r1, _0809B4C4
	ldr r1, [r1]
	ldr r2, _0809B4C8
	adds r1, r2
	bl sub_803B4B4
_0809B4AA:
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_809B548
	ldr r0, _0809B4CC
	strb r4, [r0]
	ldr r0, _0809B4D0
	strb r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809B4C0: .4byte gUnknown_020300A4
_0809B4C4: .4byte gUnknown_083B6DB4
_0809B4C8: .4byte 0x000025b4
_0809B4CC: .4byte gUnknown_020384E7
_0809B4D0: .4byte gUnknown_020384E8
	thumb_func_end sub_809B44C

	thumb_func_start diegohint2
diegohint2: @ 809B4D4
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	cmp r6, 0xE
	bne _0809B508
	ldr r1, _0809B4FC
	movs r0, 0x64
	muls r0, r5
	adds r0, r1
	ldr r1, _0809B500
	ldr r1, [r1]
	ldr r2, _0809B504
	adds r1, r2
	movs r2, 0x64
	bl memcpy
	b _0809B536
	.align 2, 0
_0809B4FC: .4byte gPlayerParty
_0809B500: .4byte gUnknown_083B6DB4
_0809B504: .4byte 0x000025b4
_0809B508:
	ldr r0, _0809B53C
	ldr r4, [r0]
	ldr r0, _0809B540
	adds r4, r0
	adds r0, r4, 0
	bl pokemon_restore_pp
	ldr r3, _0809B544
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 4
	lsls r2, r6, 2
	adds r2, r6
	lsls r1, r2, 4
	subs r1, r2
	lsls r1, 5
	adds r0, r1
	adds r0, r3
	adds r0, 0x4
	adds r1, r4, 0
	movs r2, 0x50
	bl memcpy
_0809B536:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B53C: .4byte gUnknown_083B6DB4
_0809B540: .4byte 0x000025b4
_0809B544: .4byte gPokemonStorage
	thumb_func_end diegohint2

	thumb_func_start sub_809B548
sub_809B548: @ 809B548
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r2, r1, 24
	cmp r0, 0xE
	bne _0809B568
	movs r0, 0x64
	muls r0, r2
	ldr r1, _0809B564
	adds r0, r1
	bl ZeroMonData
	b _0809B582
	.align 2, 0
_0809B564: .4byte gPlayerParty
_0809B568:
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	ldr r2, _0809B588
	adds r1, r2
	adds r0, r1
	bl ZeroBoxMonData
_0809B582:
	pop {r0}
	bx r0
	.align 2, 0
_0809B588: .4byte gUnknown_020300A4
	thumb_func_end sub_809B548

	thumb_func_start diegohint1
diegohint1: @ 809B58C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	cmp r5, 0xE
	bne _0809B5C0
	ldr r0, _0809B5B4
	ldr r0, [r0]
	ldr r1, _0809B5B8
	adds r0, r1
	ldr r2, _0809B5BC
	movs r1, 0x64
	muls r1, r6
	adds r1, r2
	movs r2, 0x64
	bl memcpy
	b _0809B5E2
	.align 2, 0
_0809B5B4: .4byte gUnknown_083B6DB4
_0809B5B8: .4byte 0x00002618
_0809B5BC: .4byte gPlayerParty
_0809B5C0:
	lsls r1, r5, 2
	adds r1, r5
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	lsls r1, r6, 2
	adds r1, r6
	lsls r1, 4
	ldr r2, _0809B614
	adds r1, r2
	adds r0, r1
	ldr r1, _0809B618
	ldr r1, [r1]
	ldr r2, _0809B61C
	adds r1, r2
	bl sub_803B4B4
_0809B5E2:
	adds r0, r5, 0
	adds r1, r6, 0
	bl diegohint2
	ldr r0, _0809B618
	ldr r1, [r0]
	ldr r0, _0809B620
	adds r4, r1, r0
	ldr r2, _0809B61C
	adds r1, r2
	adds r0, r4, 0
	movs r2, 0x64
	bl memcpy
	adds r0, r4, 0
	movs r1, 0
	bl sub_809C04C
	ldr r0, _0809B624
	strb r5, [r0]
	ldr r0, _0809B628
	strb r6, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B614: .4byte gUnknown_020300A4
_0809B618: .4byte gUnknown_083B6DB4
_0809B61C: .4byte 0x00002618
_0809B620: .4byte 0x000025b4
_0809B624: .4byte gUnknown_020384E7
_0809B628: .4byte gUnknown_020384E8
	thumb_func_end diegohint1

	thumb_func_start sub_809B62C
sub_809B62C: @ 809B62C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r6, 0
	bl sub_8095B24
	lsls r0, 16
	lsrs r4, r0, 16
	asrs r0, 16
	movs r1, 0x1
	negs r1, r1
	cmp r0, r1
	bne _0809B64A
	movs r0, 0
	b _0809B6AC
_0809B64A:
	ldr r5, _0809B668
	ldrb r0, [r5]
	cmp r0, 0
	beq _0809B66C
	lsls r4, 24
	lsrs r1, r4, 24
	adds r0, r6, 0
	bl diegohint2
	bl sub_8099480
	movs r0, 0
	strb r0, [r5]
	b _0809B686
	.align 2, 0
_0809B668: .4byte gUnknown_020384E6
_0809B66C:
	ldr r5, _0809B6B4
	ldrb r1, [r5]
	movs r0, 0xE
	bl sub_809B44C
	lsls r4, 24
	lsrs r1, r4, 24
	adds r0, r6, 0
	bl diegohint2
	ldrb r0, [r5]
	bl sub_8099520
_0809B686:
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	cmp r6, r0
	bne _0809B698
	lsrs r0, r4, 24
	bl sub_8098D20
_0809B698:
	ldr r0, _0809B6B8
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x1
	bl StartSpriteAnim
	movs r0, 0x1
_0809B6AC:
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809B6B4: .4byte gUnknown_020384E5
_0809B6B8: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809B62C

	thumb_func_start sub_809B6BC
sub_809B6BC: @ 809B6BC
	push {lr}
	ldr r0, _0809B6D8
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0
	bl StartSpriteAnim
	bl sub_809BF74
	pop {r0}
	bx r0
	.align 2, 0
_0809B6D8: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809B6BC

	thumb_func_start sub_809B6DC
sub_809B6DC: @ 809B6DC
	push {lr}
	ldr r0, _0809B6EC
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809B6F0
	movs r2, 0x2
	b _0809B700
	.align 2, 0
_0809B6EC: .4byte gUnknown_020384E6
_0809B6F0:
	ldr r0, _0809B720
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r2, 0x1
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r2, r0, 31
_0809B700:
	ldr r0, _0809B724
	ldrb r1, [r0]
	adds r0, r2, 0
	bl sub_809981C
	ldr r0, _0809B728
	ldr r1, [r0]
	ldr r2, _0809B72C
	adds r0, r1, r2
	ldr r2, _0809B730
	adds r1, r2
	bl StringCopy
	pop {r0}
	bx r0
	.align 2, 0
_0809B720: .4byte gUnknown_020384E4
_0809B724: .4byte gUnknown_020384E5
_0809B728: .4byte gUnknown_083B6DB4
_0809B72C: .4byte 0x000026e4
_0809B730: .4byte 0x000011fa
	thumb_func_end sub_809B6DC

	thumb_func_start sub_809B734
sub_809B734: @ 809B734
	push {lr}
	bl sub_80998D8
	lsls r0, 24
	cmp r0, 0
	beq _0809B744
	movs r0, 0x1
	b _0809B758
_0809B744:
	ldr r0, _0809B75C
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0
	bl StartSpriteAnim
	movs r0, 0
_0809B758:
	pop {r1}
	bx r1
	.align 2, 0
_0809B75C: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809B734

	thumb_func_start sub_809B760
sub_809B760: @ 809B760
	push {lr}
	bl sub_8099920
	ldr r1, _0809B774
	ldrb r0, [r1]
	cmp r0, 0
	beq _0809B778
	movs r0, 0
	strb r0, [r1]
	b _0809B79E
	.align 2, 0
_0809B774: .4byte gUnknown_020384E6
_0809B778:
	ldr r0, _0809B788
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809B78C
	movs r2, 0xE
	b _0809B794
	.align 2, 0
_0809B788: .4byte gUnknown_020384E4
_0809B78C:
	bl get_preferred_box
	lsls r0, 24
	lsrs r2, r0, 24
_0809B794:
	ldr r0, _0809B7A8
	ldrb r1, [r0]
	adds r0, r2, 0
	bl sub_809B548
_0809B79E:
	bl sub_809BF74
	pop {r0}
	bx r0
	.align 2, 0
_0809B7A8: .4byte gUnknown_020384E5
	thumb_func_end sub_809B760

	thumb_func_start sub_809B7AC
sub_809B7AC: @ 809B7AC
	push {lr}
	ldr r0, _0809B7CC
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809B7C8
	ldr r0, _0809B7D0
	ldr r0, [r0]
	movs r1, 0x8E
	lsls r1, 5
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x3
	bl StartSpriteAnim
_0809B7C8:
	pop {r0}
	bx r0
	.align 2, 0
_0809B7CC: .4byte gUnknown_020384E6
_0809B7D0: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809B7AC

	thumb_func_start sub_809B7D4
sub_809B7D4: @ 809B7D4
	push {r4-r6,lr}
	ldr r0, _0809B804
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809B81C
	ldr r0, _0809B808
	ldr r4, [r0]
	ldr r1, _0809B80C
	adds r0, r4, r1
	ldr r2, _0809B810
	adds r1, r4, r2
	movs r2, 0x64
	bl memcpy
	ldr r0, _0809B814
	adds r1, r4, r0
	movs r0, 0xFF
	strb r0, [r1]
	ldr r1, _0809B818
	adds r4, r1
	movs r0, 0x1
	negs r0, r0
	strb r0, [r4]
	b _0809B8A6
	.align 2, 0
_0809B804: .4byte gUnknown_020384E6
_0809B808: .4byte gUnknown_083B6DB4
_0809B80C: .4byte 0x00002618
_0809B810: .4byte 0x000025b4
_0809B814: .4byte 0x00002682
_0809B818: .4byte 0x00002683
_0809B81C:
	ldr r0, _0809B84C
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809B864
	ldr r0, _0809B850
	ldr r4, [r0]
	ldr r2, _0809B854
	adds r0, r4, r2
	ldr r3, _0809B858
	ldr r1, _0809B85C
	movs r2, 0
	ldrsb r2, [r1, r2]
	movs r1, 0x64
	muls r1, r2
	adds r1, r3
	movs r2, 0x64
	bl memcpy
	ldr r0, _0809B860
	adds r4, r0
	movs r0, 0xE
	b _0809B896
	.align 2, 0
_0809B84C: .4byte gUnknown_020384E4
_0809B850: .4byte gUnknown_083B6DB4
_0809B854: .4byte 0x00002618
_0809B858: .4byte gPlayerParty
_0809B85C: .4byte gUnknown_020384E5
_0809B860: .4byte 0x00002682
_0809B864:
	ldr r5, _0809B8FC
	ldrb r0, [r5]
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	ldr r1, _0809B900
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	adds r2, r5, 0x4
	adds r1, r2
	adds r0, r1
	ldr r1, _0809B904
	ldr r4, [r1]
	ldr r2, _0809B908
	adds r1, r4, r2
	bl sub_803B4B4
	ldrb r0, [r5]
	ldr r1, _0809B90C
	adds r4, r1
_0809B896:
	strb r0, [r4]
	ldr r0, _0809B904
	ldr r0, [r0]
	ldr r1, _0809B900
	ldrb r1, [r1]
	ldr r2, _0809B910
	adds r0, r2
	strb r1, [r0]
_0809B8A6:
	ldr r0, _0809B904
	ldr r6, [r0]
	ldr r0, _0809B914
	adds r4, r6, r0
	movs r0, 0
	strb r0, [r4]
	ldr r1, _0809B918
	adds r5, r6, r1
	strb r0, [r5]
	ldr r0, _0809B91C
	adds r2, r6, r0
	movs r0, 0x39
	strh r0, [r2]
	ldr r0, _0809B920
	adds r1, r6, r0
	ldr r0, _0809B924
	strh r0, [r1]
	ldr r0, _0809B928
	adds r1, r6, r0
	ldr r0, _0809B92C
	strh r0, [r1]
	ldr r1, _0809B908
	adds r0, r6, r1
	movs r1, 0x50
	bl GetMonData
	lsls r0, 16
	lsrs r1, r0, 16
	movs r2, 0x1
	ands r1, r2
	strb r1, [r4]
	lsrs r0, 17
	movs r1, 0x1
	ands r0, r1
	strb r0, [r5]
	ldrh r0, [r4]
	cmp r0, 0
	beq _0809B934
	ldr r2, _0809B930
	adds r1, r6, r2
	movs r0, 0
	strb r0, [r1]
	b _0809B940
	.align 2, 0
_0809B8FC: .4byte gPokemonStorage
_0809B900: .4byte gUnknown_020384E5
_0809B904: .4byte gUnknown_083B6DB4
_0809B908: .4byte 0x00002618
_0809B90C: .4byte 0x00002682
_0809B910: .4byte 0x00002683
_0809B914: .4byte 0x0000267e
_0809B918: .4byte 0x0000267f
_0809B91C: .4byte 0x00002686
_0809B920: .4byte 0x00002688
_0809B924: .4byte 0x00000123
_0809B928: .4byte 0x0000268a
_0809B92C: .4byte 0x00000163
_0809B930: .4byte 0x0000267d
_0809B934:
	ldr r2, _0809B954
	adds r0, r6, r2
	strb r1, [r0]
	subs r2, 0x1
	adds r0, r6, r2
	strb r1, [r0]
_0809B940:
	ldr r0, _0809B958
	ldr r0, [r0]
	ldr r1, _0809B95C
	adds r0, r1
	movs r1, 0
	strh r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809B954: .4byte 0x0000267d
_0809B958: .4byte gUnknown_083B6DB4
_0809B95C: .4byte 0x00002684
	thumb_func_end sub_809B7D4

	thumb_func_start sub_809B960
sub_809B960: @ 809B960
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _0809B988
	ldr r2, [r0]
	ldr r3, _0809B98C
	adds r1, r2, r3
	ldrb r1, [r1]
	mov r12, r0
	cmp r1, 0
	beq _0809B994
	ldr r7, _0809B990
	adds r0, r2, r7
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	b _0809BB5C
	.align 2, 0
_0809B988: .4byte gUnknown_083B6DB4
_0809B98C: .4byte 0x0000267d
_0809B990: .4byte 0x0000267c
_0809B994:
	ldr r1, _0809B9A4
	adds r0, r2, r1
	ldrh r0, [r0]
	cmp r0, 0
	beq _0809B9A8
	cmp r0, 0x1
	beq _0809BA84
	b _0809BB58
	.align 2, 0
_0809B9A4: .4byte 0x00002684
_0809B9A8:
	movs r5, 0
	movs r6, 0
_0809B9AC:
	mov r2, r12
	ldr r4, [r2]
	ldr r3, _0809BA28
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xE
	bne _0809B9CC
	ldr r7, _0809BA2C
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, r5
	beq _0809BA02
_0809B9CC:
	movs r0, 0x64
	muls r0, r5
	ldr r1, _0809BA30
	adds r0, r1
	ldr r1, _0809BA34
	adds r2, r4, r1
	movs r1, 0x50
	bl GetMonData
	lsls r0, 16
	lsrs r3, r0, 16
	movs r0, 0x1
	ands r0, r3
	cmp r0, 0
	beq _0809B9F0
	ldr r2, _0809BA38
	adds r0, r4, r2
	strb r6, [r0]
_0809B9F0:
	movs r0, 0x2
	ands r3, r0
	ldr r7, _0809BA3C
	mov r12, r7
	cmp r3, 0
	beq _0809BA02
	ldr r1, _0809BA40
	adds r0, r4, r1
	strb r6, [r0]
_0809BA02:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _0809B9AC
	mov r3, r12
	ldr r2, [r3]
	ldr r7, _0809BA38
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, 0
	bne _0809BA4C
	ldr r1, _0809BA44
	adds r0, r2, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r3, _0809BA48
	b _0809BB54
	.align 2, 0
_0809BA28: .4byte 0x00002682
_0809BA2C: .4byte 0x00002683
_0809BA30: .4byte gPlayerParty
_0809BA34: .4byte 0x00002686
_0809BA38: .4byte 0x0000267e
_0809BA3C: .4byte gUnknown_083B6DB4
_0809BA40: .4byte 0x0000267f
_0809BA44: .4byte 0x0000267d
_0809BA48: .4byte 0x0000267c
_0809BA4C:
	movs r7, 0x9A
	lsls r7, 6
	adds r0, r2, r7
	movs r1, 0
	strb r1, [r0]
	ldr r3, _0809BA68
	adds r0, r2, r3
	strb r1, [r0]
	adds r7, 0x4
	adds r1, r2, r7
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	b _0809BB58
	.align 2, 0
_0809BA68: .4byte 0x00002681
_0809BA6C:
	ldr r1, _0809BA7C
	adds r0, r2, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r7, _0809BA80
	adds r0, r2, r7
	strb r3, [r0]
	b _0809BB3C
	.align 2, 0
_0809BA7C: .4byte 0x0000267d
_0809BA80: .4byte 0x0000267c
_0809BA84:
	movs r5, 0
	mov r9, r12
	adds r4, r2, 0
	movs r0, 0x9A
	lsls r0, 6
	adds r6, r4, r0
	ldr r1, _0809BB6C
	adds r1, r4
	mov r8, r1
	ldr r2, _0809BB70
	mov r10, r2
_0809BA9A:
	movs r0, 0
	ldrsb r0, [r6, r0]
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	ldr r3, _0809BB74
	adds r1, r4, r3
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	ldr r2, _0809BB78
	adds r1, r2
	adds r0, r1
	movs r1, 0x50
	ldr r7, _0809BB7C
	adds r2, r4, r7
	bl GetBoxMonData
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	beq _0809BB00
	ldr r1, _0809BB80
	adds r0, r4, r1
	ldrh r0, [r0]
	ldrh r2, [r6]
	mov r1, r10
	ands r1, r0
	mov r0, r10
	ands r0, r2
	cmp r1, r0
	beq _0809BB00
	movs r0, 0x1
	ands r0, r3
	cmp r0, 0
	beq _0809BAF2
	ldr r2, _0809BB84
	adds r1, r4, r2
	movs r0, 0
	strb r0, [r1]
_0809BAF2:
	movs r0, 0x2
	ands r3, r0
	cmp r3, 0
	beq _0809BB00
	movs r0, 0
	mov r3, r8
	strb r0, [r3]
_0809BB00:
	mov r7, r9
	ldr r2, [r7]
	ldr r0, _0809BB74
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	movs r3, 0
	strb r0, [r1]
	lsls r0, 24
	asrs r0, 24
	ldr r7, _0809BB88
	mov r12, r7
	cmp r0, 0x1D
	ble _0809BB32
	strb r3, [r1]
	movs r0, 0x9A
	lsls r0, 6
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0xD
	bgt _0809BA6C
_0809BB32:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x4
	bls _0809BA9A
_0809BB3C:
	mov r1, r12
	ldr r2, [r1]
	ldr r3, _0809BB84
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, 0
	bne _0809BB58
	ldr r7, _0809BB8C
	adds r0, r2, r7
	movs r1, 0x1
	strb r1, [r0]
	subs r3, 0x2
_0809BB54:
	adds r0, r2, r3
	strb r1, [r0]
_0809BB58:
	movs r0, 0x1
	negs r0, r0
_0809BB5C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809BB6C: .4byte 0x0000267f
_0809BB70: .4byte 0x0000ffff
_0809BB74: .4byte 0x00002681
_0809BB78: .4byte gUnknown_020300A4
_0809BB7C: .4byte 0x00002686
_0809BB80: .4byte 0x00002682
_0809BB84: .4byte 0x0000267e
_0809BB88: .4byte gUnknown_083B6DB4
_0809BB8C: .4byte 0x0000267d
	thumb_func_end sub_809B960

	thumb_func_start sub_809BB90
sub_809BB90: @ 809BB90
	push {lr}
	ldr r0, _0809BBB0
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809BBAA
	ldr r0, _0809BBB4
	ldr r1, _0809BBB8
	ldr r1, [r1]
	ldr r2, _0809BBBC
	adds r1, r2
	movs r2, 0x64
	bl memcpy
_0809BBAA:
	pop {r0}
	bx r0
	.align 2, 0
_0809BBB0: .4byte gUnknown_020384E6
_0809BBB4: .4byte gUnknown_02038480
_0809BBB8: .4byte gUnknown_083B6DB4
_0809BBBC: .4byte 0x000025b4
	thumb_func_end sub_809BB90

	thumb_func_start sub_809BBC0
sub_809BBC0: @ 809BBC0
	push {lr}
	ldr r0, _0809BBE4
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809BC08
	ldr r0, _0809BBE8
	ldrb r0, [r0]
	cmp r0, 0xE
	bne _0809BBF8
	ldr r0, _0809BBEC
	ldr r0, [r0]
	ldr r1, _0809BBF0
	adds r0, r1
	ldr r1, _0809BBF4
	movs r2, 0x64
	bl memcpy
	b _0809BC08
	.align 2, 0
_0809BBE4: .4byte gUnknown_020384E6
_0809BBE8: .4byte gUnknown_020384E7
_0809BBEC: .4byte gUnknown_083B6DB4
_0809BBF0: .4byte 0x000025b4
_0809BBF4: .4byte gUnknown_02038480
_0809BBF8:
	ldr r0, _0809BC0C
	ldr r0, [r0]
	ldr r1, _0809BC10
	adds r0, r1
	ldr r1, _0809BC14
	movs r2, 0x50
	bl memcpy
_0809BC08:
	pop {r0}
	bx r0
	.align 2, 0
_0809BC0C: .4byte gUnknown_083B6DB4
_0809BC10: .4byte 0x000025b4
_0809BC14: .4byte gUnknown_02038480
	thumb_func_end sub_809BBC0

	thumb_func_start sub_809BC18
sub_809BC18: @ 809BC18
	push {r4,r5,lr}
	ldr r0, _0809BC48
	ldrb r5, [r0]
	cmp r5, 0
	beq _0809BC64
	bl sub_809BB90
	ldr r0, _0809BC4C
	ldr r2, [r0]
	ldr r0, _0809BC50
	adds r1, r2, r0
	ldr r0, _0809BC54
	str r0, [r1]
	ldr r1, _0809BC58
	adds r0, r2, r1
	movs r1, 0
	strb r1, [r0]
	ldr r3, _0809BC5C
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _0809BC60
	adds r2, r0
	strb r1, [r2]
	b _0809BCF2
	.align 2, 0
_0809BC48: .4byte gUnknown_020384E6
_0809BC4C: .4byte gUnknown_083B6DB4
_0809BC50: .4byte 0x00002690
_0809BC54: .4byte gUnknown_02038480
_0809BC58: .4byte 0x0000268d
_0809BC5C: .4byte 0x0000268c
_0809BC60: .4byte 0x0000268e
_0809BC64:
	ldr r0, _0809BC9C
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809BCBC
	ldr r0, _0809BCA0
	ldr r4, [r0]
	ldr r2, _0809BCA4
	adds r1, r4, r2
	ldr r0, _0809BCA8
	str r0, [r1]
	ldr r0, _0809BCAC
	ldrb r1, [r0]
	ldr r3, _0809BCB0
	adds r0, r4, r3
	strb r1, [r0]
	bl sub_8095C28
	subs r0, 0x1
	ldr r2, _0809BCB4
	adds r1, r4, r2
	strb r0, [r1]
	ldr r3, _0809BCB8
	adds r4, r3
	strb r5, [r4]
	b _0809BCF2
	.align 2, 0
_0809BC9C: .4byte gUnknown_020384E4
_0809BCA0: .4byte gUnknown_083B6DB4
_0809BCA4: .4byte 0x00002690
_0809BCA8: .4byte gPlayerParty
_0809BCAC: .4byte gUnknown_020384E5
_0809BCB0: .4byte 0x0000268d
_0809BCB4: .4byte 0x0000268c
_0809BCB8: .4byte 0x0000268e
_0809BCBC:
	ldr r0, _0809BCF8
	ldr r3, [r0]
	ldr r0, _0809BCFC
	adds r4, r3, r0
	ldr r2, _0809BD00
	ldrb r0, [r2]
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	adds r2, 0x4
	adds r0, r2
	str r0, [r4]
	ldr r0, _0809BD04
	ldrb r1, [r0]
	ldr r2, _0809BD08
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _0809BD0C
	adds r1, r3, r0
	movs r0, 0x1D
	strb r0, [r1]
	ldr r1, _0809BD10
	adds r3, r1
	movs r0, 0x5
	strb r0, [r3]
_0809BCF2:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809BCF8: .4byte gUnknown_083B6DB4
_0809BCFC: .4byte 0x00002690
_0809BD00: .4byte gPokemonStorage
_0809BD04: .4byte gUnknown_020384E5
_0809BD08: .4byte 0x0000268d
_0809BD0C: .4byte 0x0000268c
_0809BD10: .4byte 0x0000268e
	thumb_func_end sub_809BC18

	thumb_func_start sub_809BD14
sub_809BD14: @ 809BD14
	push {lr}
	ldr r0, _0809BD24
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809BD28
	bl sub_809BBC0
	b _0809BD30
	.align 2, 0
_0809BD24: .4byte gUnknown_020384E6
_0809BD28:
	ldr r0, _0809BD34
	ldr r1, _0809BD38
	ldrb r1, [r1, 0x9]
	strb r1, [r0]
_0809BD30:
	pop {r0}
	bx r0
	.align 2, 0
_0809BD34: .4byte gUnknown_020384E5
_0809BD38: .4byte 0x02018000
	thumb_func_end sub_809BD14

	thumb_func_start party_compaction
party_compaction: @ 809BD3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r7, _0809BD88
	movs r6, 0
	movs r5, 0
	movs r0, 0x64
	mov r9, r0
	ldr r1, _0809BD8C
	mov r8, r1
	subs r0, 0x65
	mov r10, r0
_0809BD58:
	mov r0, r9
	muls r0, r6
	mov r1, r8
	adds r4, r0, r1
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	cmp r0, 0
	beq _0809BD90
	cmp r6, r5
	beq _0809BD80
	mov r0, r9
	muls r0, r5
	add r0, r8
	adds r1, r4, 0
	movs r2, 0x64
	bl memcpy
_0809BD80:
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	b _0809BD9A
	.align 2, 0
_0809BD88: .4byte 0x0000ffff
_0809BD8C: .4byte gPlayerParty
_0809BD90:
	lsls r0, r7, 16
	asrs r0, 16
	cmp r0, r10
	bne _0809BD9A
	adds r7, r6, 0
_0809BD9A:
	adds r0, r6, 0x1
	lsls r0, 16
	lsrs r6, r0, 16
	cmp r6, 0x5
	bls _0809BD58
	lsls r7, 16
	cmp r5, 0x5
	bhi _0809BDC2
	movs r6, 0x64
	ldr r4, _0809BDD4
_0809BDAE:
	adds r0, r5, 0
	muls r0, r6
	adds r0, r4
	bl ZeroMonData
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	cmp r5, 0x5
	bls _0809BDAE
_0809BDC2:
	asrs r0, r7, 16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809BDD4: .4byte gPlayerParty
	thumb_func_end party_compaction

	thumb_func_start sub_809BDD8
sub_809BDD8: @ 809BDD8
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	strb r0, [r1]
	ldr r1, _0809BE04
	ldr r2, [r1]
	ldr r3, _0809BE08
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _0809BE0C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809BE14
	ldr r1, _0809BE10
	adds r0, r2, r1
	movs r1, 0x8
	mov r2, sp
	bl SetMonData
	b _0809BE68
	.align 2, 0
_0809BE04: .4byte gUnknown_083B6DB4
_0809BE08: .4byte 0x000011f7
_0809BE0C: .4byte gUnknown_020384E6
_0809BE10: .4byte 0x000025b4
_0809BE14:
	ldr r4, _0809BE70
	movs r0, 0
	ldrsb r0, [r4, r0]
	cmp r0, 0x1
	bne _0809BE34
	ldr r0, _0809BE74
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0809BE78
	adds r0, r1
	movs r1, 0x8
	mov r2, sp
	bl SetMonData
_0809BE34:
	movs r0, 0
	ldrsb r0, [r4, r0]
	cmp r0, 0
	bne _0809BE68
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	ldr r1, _0809BE74
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	ldr r2, _0809BE7C
	adds r1, r2
	adds r0, r1
	movs r1, 0x8
	mov r2, sp
	bl SetBoxMonData
_0809BE68:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809BE70: .4byte gUnknown_020384E4
_0809BE74: .4byte gUnknown_020384E5
_0809BE78: .4byte gPlayerParty
_0809BE7C: .4byte gUnknown_020300A4
	thumb_func_end sub_809BDD8

	thumb_func_start sub_809BE80
sub_809BE80: @ 809BE80
	push {lr}
	ldr r0, _0809BEA8
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809BEB4
	ldr r0, _0809BEAC
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809BEB4
	ldr r0, _0809BEB0
	ldrb r0, [r0]
	bl sub_8095BB4
	lsls r0, 24
	cmp r0, 0
	bne _0809BEB4
	movs r0, 0x1
	b _0809BEB6
	.align 2, 0
_0809BEA8: .4byte gUnknown_020384E4
_0809BEAC: .4byte gUnknown_020384E6
_0809BEB0: .4byte gUnknown_020384E5
_0809BEB4:
	movs r0, 0
_0809BEB6:
	pop {r1}
	bx r1
	thumb_func_end sub_809BE80

	thumb_func_start sub_809BEBC
sub_809BEBC: @ 809BEBC
	push {lr}
	ldr r0, _0809BF00
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809BF18
	ldr r0, _0809BF04
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809BEFC
	ldr r0, _0809BF08
	ldrb r0, [r0]
	bl sub_8095BB4
	lsls r0, 24
	cmp r0, 0
	bne _0809BEFC
	ldr r0, _0809BF0C
	ldr r1, [r0]
	ldr r2, _0809BF10
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809BF18
	ldr r2, _0809BF14
	adds r0, r1, r2
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	beq _0809BF18
_0809BEFC:
	movs r0, 0x1
	b _0809BF1A
	.align 2, 0
_0809BF00: .4byte gUnknown_020384E6
_0809BF04: .4byte gUnknown_020384E4
_0809BF08: .4byte gUnknown_020384E5
_0809BF0C: .4byte gUnknown_083B6DB4
_0809BF10: .4byte 0x000011f9
_0809BF14: .4byte 0x000025b4
_0809BF18:
	movs r0, 0
_0809BF1A:
	pop {r1}
	bx r1
	thumb_func_end sub_809BEBC

	thumb_func_start sub_809BF20
sub_809BF20: @ 809BF20
	ldr r0, _0809BF28
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0809BF28: .4byte gUnknown_020384E6
	thumb_func_end sub_809BF20

	thumb_func_start sub_809BF2C
sub_809BF2C: @ 809BF2C
	push {lr}
	movs r1, 0
	ldr r0, _0809BF44
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x2
	bne _0809BF3E
	movs r1, 0x1
_0809BF3E:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_0809BF44: .4byte gUnknown_020384E4
	thumb_func_end sub_809BF2C

	thumb_func_start sub_809BF48
sub_809BF48: @ 809BF48
	push {lr}
	movs r1, 0
	ldr r0, _0809BF6C
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x3
	bne _0809BF66
	ldr r0, _0809BF70
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809BF66
	movs r1, 0x1
_0809BF66:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_0809BF6C: .4byte gUnknown_020384E4
_0809BF70: .4byte gUnknown_020384E5
	thumb_func_end sub_809BF48

	thumb_func_start sub_809BF74
sub_809BF74: @ 809BF74
	push {r4,lr}
	ldr r0, _0809BFA8
	ldr r1, [r0]
	movs r2, 0
	ldr r3, _0809BFAC
	ldrb r0, [r3]
	cmp r0, 0
	bne _0809BF86
	movs r2, 0x1
_0809BF86:
	ldr r4, _0809BFB0
	adds r0, r1, r4
	strb r2, [r0]
	ldrb r0, [r3]
	cmp r0, 0
	bne _0809C018
	ldr r0, _0809BFB4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	beq _0809BFBE
	cmp r0, 0x1
	bgt _0809BFB8
	cmp r0, 0
	beq _0809BFEE
	b _0809C018
	.align 2, 0
_0809BFA8: .4byte gUnknown_083B6DB4
_0809BFAC: .4byte gUnknown_020384E6
_0809BFB0: .4byte 0x000011f6
_0809BFB4: .4byte gUnknown_020384E4
_0809BFB8:
	cmp r0, 0x3
	bgt _0809C018
	b _0809BFE4
_0809BFBE:
	ldr r1, _0809BFDC
	movs r0, 0
	ldrsb r0, [r1, r0]
	cmp r0, 0x5
	bgt _0809BFE4
	adds r1, r0, 0
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0809BFE0
	adds r0, r1
	movs r1, 0
	bl sub_809C04C
	b _0809C018
	.align 2, 0
_0809BFDC: .4byte gUnknown_020384E5
_0809BFE0: .4byte gPlayerParty
_0809BFE4:
	movs r0, 0
	movs r1, 0x2
	bl sub_809C04C
	b _0809C018
_0809BFEE:
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r0, r1, 4
	subs r0, r1
	lsls r0, 5
	ldr r1, _0809C020
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	ldr r2, _0809C024
	adds r1, r2
	adds r0, r1
	movs r1, 0x1
	bl sub_809C04C
_0809C018:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809C020: .4byte gUnknown_020384E5
_0809C024: .4byte gUnknown_020300A4
	thumb_func_end sub_809BF74

	thumb_func_start sub_809C028
sub_809C028: @ 809C028
	push {lr}
	ldr r0, _0809C03C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809C044
	ldr r0, _0809C040
	movs r1, 0
	bl sub_809C04C
	b _0809C048
	.align 2, 0
_0809C03C: .4byte gUnknown_020384E6
_0809C040: .4byte gUnknown_02038480
_0809C044:
	bl sub_809BF74
_0809C048:
	pop {r0}
	bx r0
	thumb_func_end sub_809C028

	thumb_func_start sub_809C04C
sub_809C04C: @ 809C04C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r7, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0
	str r0, [sp]
	ldr r0, _0809C0FC
	ldr r6, [r0]
	ldr r2, _0809C100
	adds r2, r6
	mov r8, r2
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2]
	cmp r1, 0
	bne _0809C120
	adds r0, r7, 0
	movs r1, 0x41
	bl GetMonData
	ldr r2, _0809C104
	adds r1, r6, r2
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	bne _0809C08C
	b _0809C1EC
_0809C08C:
	adds r0, r7, 0
	movs r1, 0x2D
	bl GetMonData
	ldr r2, _0809C108
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, _0809C10C
	adds r4, r6, r0
	adds r0, r7, 0
	movs r1, 0x2
	adds r2, r4, 0
	bl GetMonData
	adds r0, r4, 0
	bl StringGetEnd10
	adds r0, r7, 0
	movs r1, 0x38
	bl GetMonData
	ldr r2, _0809C110
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r7, 0
	movs r1, 0x8
	bl GetMonData
	ldr r2, _0809C114
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r7, 0
	movs r1, 0
	bl GetMonData
	ldr r2, _0809C118
	adds r1, r6, r2
	str r0, [r1]
	adds r0, r7, 0
	bl pokemon_get_pal
	ldr r2, _0809C11C
	adds r1, r6, r2
	str r0, [r1]
	adds r0, r7, 0
	bl GetMonGender
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0xC
	bl GetMonData
	b _0809C1B2
	.align 2, 0
_0809C0FC: .4byte gUnknown_083B6DB4
_0809C100: .4byte 0x000011f2
_0809C104: .4byte 0x000011f0
_0809C108: .4byte 0x000011f9
_0809C10C: .4byte 0x000011fa
_0809C110: .4byte 0x000011f8
_0809C114: .4byte 0x000011f7
_0809C118: .4byte 0x000011ec
_0809C11C: .4byte 0x000011e8
_0809C120:
	cmp r1, 0x1
	bne _0809C1D4
	adds r0, r7, 0
	movs r1, 0x41
	bl GetBoxMonData
	ldr r2, _0809C1B8
	adds r5, r6, r2
	strh r0, [r5]
	lsls r0, 16
	cmp r0, 0
	beq _0809C1EC
	adds r0, r7, 0
	movs r1, 0x1
	bl GetBoxMonData
	mov r9, r0
	adds r0, r7, 0
	movs r1, 0x2D
	bl GetBoxMonData
	ldr r2, _0809C1BC
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, _0809C1C0
	adds r4, r6, r0
	adds r0, r7, 0
	movs r1, 0x2
	adds r2, r4, 0
	bl GetBoxMonData
	adds r0, r4, 0
	bl StringGetEnd10
	adds r0, r7, 0
	bl GetLevelFromBoxMonExp
	ldr r2, _0809C1C4
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r7, 0
	movs r1, 0x8
	bl GetBoxMonData
	ldr r2, _0809C1C8
	adds r1, r6, r2
	strb r0, [r1]
	adds r0, r7, 0
	movs r1, 0
	bl GetBoxMonData
	adds r2, r0, 0
	ldr r0, _0809C1CC
	adds r4, r6, r0
	str r2, [r4]
	ldrh r0, [r5]
	mov r1, r9
	bl species_and_otid_get_pal
	ldr r2, _0809C1D0
	adds r1, r6, r2
	str r0, [r1]
	ldrh r0, [r5]
	ldr r1, [r4]
	bl GetGenderFromSpeciesAndPersonality
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	adds r0, r7, 0
	movs r1, 0xC
	bl GetBoxMonData
_0809C1B2:
	mov r1, r8
	strh r0, [r1]
	b _0809C1DE
	.align 2, 0
_0809C1B8: .4byte 0x000011f0
_0809C1BC: .4byte 0x000011f9
_0809C1C0: .4byte 0x000011fa
_0809C1C4: .4byte 0x000011f8
_0809C1C8: .4byte 0x000011f7
_0809C1CC: .4byte 0x000011ec
_0809C1D0: .4byte 0x000011e8
_0809C1D4:
	ldr r2, _0809C220
	adds r0, r6, r2
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
_0809C1DE:
	ldr r0, _0809C224
	ldr r4, [r0]
	ldr r2, _0809C220
	adds r0, r4, r2
	ldrh r1, [r0]
	cmp r1, 0
	bne _0809C23C
_0809C1EC:
	ldr r0, _0809C224
	ldr r1, [r0]
	ldr r0, _0809C228
	adds r2, r1, r0
	movs r0, 0xFF
	strb r0, [r2]
	ldr r0, _0809C22C
	adds r2, r1, r0
	movs r0, 0x1
	negs r0, r0
	strb r0, [r2]
	ldr r0, _0809C230
	adds r2, r1, r0
	movs r0, 0x1
	negs r0, r0
	strb r0, [r2]
	ldr r0, _0809C234
	adds r2, r1, r0
	movs r0, 0x1
	negs r0, r0
	strb r0, [r2]
	ldr r2, _0809C238
	adds r1, r2
	strb r0, [r1]
	b _0809C43E
	.align 2, 0
_0809C220: .4byte 0x000011f0
_0809C224: .4byte gUnknown_083B6DB4
_0809C228: .4byte 0x000011fa
_0809C22C: .4byte 0x0000120f
_0809C230: .4byte 0x00001234
_0809C234: .4byte 0x00001259
_0809C238: .4byte 0x0000127a
_0809C23C:
	ldr r2, _0809C28C
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809C2A4
	ldr r0, _0809C290
	adds r7, r4, r0
	movs r0, 0xFC
	strb r0, [r7]
	movs r0, 0x4
	strb r0, [r7, 0x1]
	movs r0, 0xF
	strb r0, [r7, 0x2]
	movs r0, 0
	strb r0, [r7, 0x3]
	movs r0, 0x1
	strb r0, [r7, 0x4]
	ldr r1, _0809C294
	adds r7, r4, r1
	adds r2, 0x1
	adds r1, r4, r2
	adds r0, r7, 0
	bl StringCopy
	ldr r0, _0809C298
	adds r1, r4, r0
	movs r0, 0xFF
	strb r0, [r1]
	ldr r2, _0809C29C
	adds r1, r4, r2
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1]
	ldr r0, _0809C2A0
	adds r1, r4, r0
	movs r0, 0x1
	negs r0, r0
	strb r0, [r1]
	b _0809C43E
	.align 2, 0
_0809C28C: .4byte 0x000011f9
_0809C290: .4byte 0x0000120f
_0809C294: .4byte 0x00001214
_0809C298: .4byte 0x00001234
_0809C29C: .4byte 0x00001259
_0809C2A0: .4byte 0x0000127a
_0809C2A4:
	cmp r1, 0x20
	beq _0809C2AC
	cmp r1, 0x1D
	bne _0809C2B0
_0809C2AC:
	movs r1, 0xFF
	str r1, [sp]
_0809C2B0:
	ldr r0, _0809C388
	ldr r4, [r0]
	ldr r2, _0809C38C
	adds r7, r4, r2
	movs r0, 0xFC
	mov r9, r0
	strb r0, [r7]
	movs r1, 0x4
	mov r8, r1
	strb r1, [r7, 0x1]
	movs r2, 0xF
	strb r2, [r7, 0x2]
	movs r0, 0
	strb r0, [r7, 0x3]
	movs r6, 0x1
	strb r6, [r7, 0x4]
	ldr r1, _0809C390
	adds r7, r4, r1
	ldr r2, _0809C394
	adds r1, r4, r2
	adds r0, r7, 0
	bl StringCopy
	ldr r0, _0809C398
	adds r7, r4, r0
	mov r1, r9
	strb r1, [r7]
	mov r2, r8
	strb r2, [r7, 0x1]
	movs r0, 0xF
	strb r0, [r7, 0x2]
	movs r1, 0
	strb r1, [r7, 0x3]
	strb r6, [r7, 0x4]
	mov r2, r9
	strb r2, [r7, 0x5]
	movs r0, 0x13
	mov r10, r0
	strb r0, [r7, 0x6]
	movs r1, 0x7
	strb r1, [r7, 0x7]
	movs r0, 0xBA
	strb r0, [r7, 0x8]
	ldr r2, _0809C39C
	adds r7, r4, r2
	ldr r1, _0809C3A0
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, 0xB
	muls r1, r0
	ldr r0, _0809C3A4
	adds r1, r0
	adds r0, r7, 0
	bl StringCopy
	adds r7, r0, 0
	mov r2, r9
	strb r2, [r7]
	mov r0, r10
	strb r0, [r7, 0x1]
	movs r0, 0x50
	strb r0, [r7, 0x2]
	movs r0, 0xFF
	strb r0, [r7, 0x3]
	ldr r1, _0809C3A8
	adds r7, r4, r1
	strb r2, [r7]
	mov r2, r8
	strb r2, [r7, 0x1]
	movs r0, 0xF
	strb r0, [r7, 0x2]
	movs r1, 0
	strb r1, [r7, 0x3]
	strb r6, [r7, 0x4]
	mov r2, r9
	strb r2, [r7, 0x5]
	mov r0, r10
	strb r0, [r7, 0x6]
	movs r6, 0x8
	strb r6, [r7, 0x7]
	ldr r1, _0809C3AC
	adds r7, r4, r1
	movs r0, 0x34
	strb r0, [r7]
	ldr r2, _0809C3B0
	adds r7, r4, r2
	ldr r0, _0809C3B4
	adds r4, r0
	ldrb r1, [r4]
	adds r0, r7, 0
	movs r2, 0x22
	movs r3, 0x1
	bl sub_8072C14
	adds r7, r0, 0
	mov r1, r9
	strb r1, [r7]
	movs r0, 0x11
	strb r0, [r7, 0x1]
	strb r6, [r7, 0x2]
	adds r7, 0x3
	ldr r2, [sp]
	cmp r2, 0
	beq _0809C3B8
	cmp r2, 0xFE
	beq _0809C3D0
	b _0809C3EA
	.align 2, 0
_0809C388: .4byte gUnknown_083B6DB4
_0809C38C: .4byte 0x0000120f
_0809C390: .4byte 0x00001214
_0809C394: .4byte 0x000011fa
_0809C398: .4byte 0x00001234
_0809C39C: .4byte 0x0000123d
_0809C3A0: .4byte 0x000011f0
_0809C3A4: .4byte gSpeciesNames
_0809C3A8: .4byte 0x00001259
_0809C3AC: .4byte 0x00001261
_0809C3B0: .4byte 0x00001262
_0809C3B4: .4byte 0x000011f8
_0809C3B8:
	mov r0, r9
	strb r0, [r7]
	mov r1, r8
	strb r1, [r7, 0x1]
	strb r1, [r7, 0x2]
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r7, 0x3]
	movs r0, 0x5
	strb r0, [r7, 0x4]
	movs r0, 0xB5
	b _0809C3E6
_0809C3D0:
	mov r0, r9
	strb r0, [r7]
	mov r1, r8
	strb r1, [r7, 0x1]
	movs r0, 0x6
	strb r0, [r7, 0x2]
	movs r2, 0
	strb r2, [r7, 0x3]
	movs r0, 0x7
	strb r0, [r7, 0x4]
	movs r0, 0xB6
_0809C3E6:
	strb r0, [r7, 0x5]
	adds r7, 0x6
_0809C3EA:
	movs r5, 0xFF
	strb r5, [r7]
	ldr r0, _0809C450
	ldr r2, [r0]
	ldr r1, _0809C454
	adds r7, r2, r1
	ldr r0, _0809C458
	adds r3, r2, r0
	ldrh r0, [r3]
	cmp r0, 0
	beq _0809C43C
	movs r4, 0xFC
	strb r4, [r7]
	movs r1, 0x4
	strb r1, [r7, 0x1]
	movs r0, 0xF
	strb r0, [r7, 0x2]
	movs r0, 0
	strb r0, [r7, 0x3]
	movs r0, 0x1
	strb r0, [r7, 0x4]
	ldr r0, _0809C45C
	adds r7, r2, r0
	strb r4, [r7]
	movs r0, 0x6
	strb r0, [r7, 0x1]
	strb r1, [r7, 0x2]
	ldr r1, _0809C460
	adds r7, r2, r1
	ldrh r0, [r3]
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r7, 0
	bl StringCopy
	adds r7, r0, 0
	strb r4, [r7]
	movs r0, 0x7
	strb r0, [r7, 0x1]
	adds r7, 0x2
_0809C43C:
	strb r5, [r7]
_0809C43E:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C450: .4byte gUnknown_083B6DB4
_0809C454: .4byte 0x0000127a
_0809C458: .4byte 0x000011f2
_0809C45C: .4byte 0x0000127f
_0809C460: .4byte 0x00001282
	thumb_func_end sub_809C04C

	thumb_func_start sub_809C464
sub_809C464: @ 809C464
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _0809C4D8
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _0809C4DC
	ldrb r4, [r2]
	ldr r0, _0809C4E0
	ldr r1, [r0]
	ldr r0, _0809C4E4
	adds r7, r1, r0
	movs r0, 0
	strb r0, [r7]
	ldr r3, _0809C4E8
	adds r5, r1, r3
	strb r0, [r5]
	adds r3, 0x4
	adds r6, r1, r3
	strb r0, [r6]
	ldr r0, _0809C4EC
	mov r12, r0
	ldrh r1, [r0, 0x30]
	movs r0, 0x40
	ands r0, r1
	adds r3, r2, 0
	cmp r0, 0
	beq _0809C4A0
	b _0809C62A
_0809C4A0:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0809C4F0
	movs r1, 0x1
	mov r9, r1
	lsls r0, r4, 24
	movs r3, 0xC0
	lsls r3, 19
	adds r0, r3
	lsrs r4, r0, 24
	asrs r0, 24
	cmp r0, 0x1D
	bgt _0809C4BE
	b _0809C648
_0809C4BE:
	movs r1, 0x3
	mov r8, r1
	subs r0, 0x1E
	lsls r0, 24
	asrs r0, 24
	bl __divsi3
	lsls r0, 24
	lsrs r4, r0, 24
	mov r3, r9
	strb r3, [r7]
	strb r3, [r6]
	b _0809C648
	.align 2, 0
_0809C4D8: .4byte gUnknown_020384E4
_0809C4DC: .4byte gUnknown_020384E5
_0809C4E0: .4byte gUnknown_083B6DB4
_0809C4E4: .4byte 0x000011de
_0809C4E8: .4byte 0x000011df
_0809C4EC: .4byte gMain
_0809C4F0:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _0809C524
	movs r0, 0x1
	mov r9, r0
	movs r0, 0
	ldrsb r0, [r3, r0]
	movs r1, 0x6
	bl __modsi3
	lsls r0, 24
	cmp r0, 0
	beq _0809C514
	lsls r0, r4, 24
	movs r1, 0xFF
	lsls r1, 24
	b _0809C63C
_0809C514:
	movs r0, 0xFF
	strb r0, [r5]
	lsls r0, r4, 24
	movs r3, 0xA0
	lsls r3, 19
	adds r0, r3
	lsrs r4, r0, 24
	b _0809C648
_0809C524:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0809C554
	movs r0, 0x1
	mov r9, r0
	movs r0, 0
	ldrsb r0, [r3, r0]
	adds r0, 0x1
	movs r1, 0x6
	bl __modsi3
	cmp r0, 0
	beq _0809C548
	lsls r0, r4, 24
	movs r1, 0x80
	lsls r1, 17
	b _0809C63C
_0809C548:
	mov r3, r9
	strb r3, [r5]
	lsls r0, r4, 24
	movs r1, 0xFB
	lsls r1, 24
	b _0809C63C
_0809C554:
	mov r3, r12
	ldrh r1, [r3, 0x2E]
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0809C56A
	movs r0, 0x1
	mov r9, r0
	movs r1, 0x2
	mov r8, r1
	b _0809C646
_0809C56A:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809C5D4
	bl sub_809CAB0
	lsls r0, 24
	cmp r0, 0
	beq _0809C5D4
	ldr r0, _0809C588
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809C58C
	movs r0, 0x8
	b _0809C658
	.align 2, 0
_0809C588: .4byte gUnknown_020384E9
_0809C58C:
	movs r0, 0
	bl sub_809CE4C
	subs r0, 0x1
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x4
	bhi _0809C5D4
	lsls r0, 2
	ldr r1, _0809C5A8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C5A8: .4byte _0809C5AC
	.align 2, 0
_0809C5AC:
	.4byte _0809C5C0
	.4byte _0809C5C4
	.4byte _0809C5C8
	.4byte _0809C5CC
	.4byte _0809C5D0
_0809C5C0:
	movs r0, 0xB
	b _0809C658
_0809C5C4:
	movs r0, 0xC
	b _0809C658
_0809C5C8:
	movs r0, 0xD
	b _0809C658
_0809C5CC:
	movs r0, 0xE
	b _0809C658
_0809C5D0:
	movs r0, 0xF
	b _0809C658
_0809C5D4:
	ldr r2, _0809C5E4
	ldrh r1, [r2, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809C5E8
	movs r0, 0x10
	b _0809C658
	.align 2, 0
_0809C5E4: .4byte gMain
_0809C5E8:
	ldr r0, _0809C600
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0809C612
	ldrh r1, [r2, 0x2C]
	movs r0, 0x80
	lsls r0, 2
	ands r0, r1
	cmp r0, 0
	beq _0809C604
	movs r0, 0xA
	b _0809C658
	.align 2, 0
_0809C600: .4byte gSaveBlock2
_0809C604:
	movs r0, 0x80
	lsls r0, 1
	ands r0, r1
	cmp r0, 0
	beq _0809C612
	movs r0, 0x9
	b _0809C658
_0809C612:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0809C624
	bl sub_809CD88
	movs r0, 0
	b _0809C658
_0809C624:
	movs r3, 0
	mov r9, r3
	b _0809C656
_0809C62A:
	movs r0, 0x1
	mov r9, r0
	movs r0, 0
	ldrsb r0, [r2, r0]
	cmp r0, 0x5
	ble _0809C642
	lsls r0, r4, 24
	movs r1, 0xFA
	lsls r1, 24
_0809C63C:
	adds r0, r1
	lsrs r4, r0, 24
	b _0809C648
_0809C642:
	movs r3, 0x2
	mov r8, r3
_0809C646:
	movs r4, 0
_0809C648:
	mov r0, r9
	cmp r0, 0
	beq _0809C656
	mov r0, r8
	adds r1, r4, 0
	bl sub_809AF18
_0809C656:
	mov r0, r9
_0809C658:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809C464

	thumb_func_start sub_809C664
sub_809C664: @ 809C664
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r0, _0809C6D8
	ldrb r0, [r0]
	mov r10, r0
	ldr r7, _0809C6DC
	ldrb r4, [r7]
	ldr r2, _0809C6E0
	ldr r5, [r2]
	ldr r1, _0809C6E4
	adds r0, r5, r1
	movs r1, 0
	strb r1, [r0]
	ldr r3, _0809C6E8
	adds r0, r5, r3
	strb r1, [r0]
	adds r3, 0x5
	adds r0, r5, r3
	strb r1, [r0]
	mov r9, r1
	mov r8, r1
	ldr r1, _0809C6EC
	ldrh r3, [r1, 0x30]
	movs r0, 0x40
	ands r0, r3
	adds r6, r7, 0
	mov r12, r2
	adds r2, r1, 0
	cmp r0, 0
	beq _0809C6A8
	b _0809C81C
_0809C6A8:
	movs r0, 0x80
	ands r0, r3
	cmp r0, 0
	beq _0809C6F0
	lsls r0, r4, 24
	movs r1, 0x80
	lsls r1, 17
	adds r0, r1
	lsrs r4, r0, 24
	asrs r0, 24
	cmp r0, 0x6
	ble _0809C6C2
	movs r4, 0
_0809C6C2:
	lsls r0, r4, 24
	asrs r0, 24
	movs r1, 0
	ldrsb r1, [r6, r1]
	cmp r0, r1
	bne _0809C6D0
	b _0809C83C
_0809C6D0:
	movs r2, 0x1
	mov r8, r2
	b _0809C842
	.align 2, 0
_0809C6D8: .4byte gUnknown_020384E4
_0809C6DC: .4byte gUnknown_020384E5
_0809C6E0: .4byte gUnknown_083B6DB4
_0809C6E4: .4byte 0x000011df
_0809C6E8: .4byte 0x000011de
_0809C6EC: .4byte gMain
_0809C6F0:
	movs r0, 0x20
	ands r0, r3
	cmp r0, 0
	beq _0809C714
	ldrb r1, [r6]
	movs r0, 0
	ldrsb r0, [r6, r0]
	cmp r0, 0
	beq _0809C714
	movs r3, 0x1
	mov r8, r3
	ldr r2, _0809C710
	adds r0, r5, r2
	strb r1, [r0]
	movs r4, 0
	b _0809C83C
	.align 2, 0
_0809C710: .4byte 0x000011e2
_0809C714:
	ldrh r1, [r2, 0x30]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	beq _0809C748
	movs r0, 0
	ldrsb r0, [r6, r0]
	cmp r0, 0
	bne _0809C73C
	movs r3, 0x1
	mov r8, r3
	mov r1, r12
	ldr r0, [r1]
	ldr r2, _0809C738
	adds r0, r2
	ldrb r4, [r0]
	b _0809C83C
	.align 2, 0
_0809C738: .4byte 0x000011e2
_0809C73C:
	movs r3, 0x6
	mov r8, r3
	movs r0, 0
	mov r10, r0
	movs r4, 0
	b _0809C83C
_0809C748:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809C7D0
	movs r0, 0
	ldrsb r0, [r6, r0]
	cmp r0, 0x6
	bne _0809C76E
	mov r1, r12
	ldr r0, [r1]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x1
	bne _0809C768
	movs r0, 0x4
	b _0809C84C
_0809C768:
	movs r2, 0x1
	mov r9, r2
	b _0809C7D0
_0809C76E:
	bl sub_809CAB0
	lsls r0, 24
	cmp r0, 0
	beq _0809C7D0
	ldr r0, _0809C784
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809C788
	movs r0, 0x8
	b _0809C84C
	.align 2, 0
_0809C784: .4byte gUnknown_020384E9
_0809C788:
	movs r0, 0
	bl sub_809CE4C
	subs r0, 0x1
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x4
	bhi _0809C7D0
	lsls r0, 2
	ldr r1, _0809C7A4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C7A4: .4byte _0809C7A8
	.align 2, 0
_0809C7A8:
	.4byte _0809C7BC
	.4byte _0809C7C0
	.4byte _0809C7C4
	.4byte _0809C7C8
	.4byte _0809C7CC
_0809C7BC:
	movs r0, 0xB
	b _0809C84C
_0809C7C0:
	movs r0, 0xC
	b _0809C84C
_0809C7C4:
	movs r0, 0xD
	b _0809C84C
_0809C7C8:
	movs r0, 0xE
	b _0809C84C
_0809C7CC:
	movs r0, 0xF
	b _0809C84C
_0809C7D0:
	ldr r2, _0809C7EC
	ldrh r1, [r2, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809C7F8
	ldr r0, _0809C7F0
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x1
	bne _0809C7F4
	movs r0, 0x10
	b _0809C84C
	.align 2, 0
_0809C7EC: .4byte gMain
_0809C7F0: .4byte gUnknown_083B6DB4
_0809C7F4:
	movs r3, 0x1
	mov r9, r3
_0809C7F8:
	mov r0, r9
	cmp r0, 0
	beq _0809C80A
	movs r1, 0x6
	mov r8, r1
	movs r2, 0
	mov r10, r2
	movs r4, 0
	b _0809C83C
_0809C80A:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0809C83C
	bl sub_809CD88
	movs r0, 0
	b _0809C84C
_0809C81C:
	lsls r0, r4, 24
	movs r3, 0xFF
	lsls r3, 24
	adds r0, r3
	lsrs r4, r0, 24
	cmp r0, 0
	bge _0809C82C
	movs r4, 0x6
_0809C82C:
	lsls r0, r4, 24
	asrs r0, 24
	movs r1, 0
	ldrsb r1, [r7, r1]
	cmp r0, r1
	beq _0809C83C
	movs r0, 0x1
	mov r8, r0
_0809C83C:
	mov r1, r8
	cmp r1, 0
	beq _0809C84A
_0809C842:
	mov r0, r10
	adds r1, r4, 0
	bl sub_809AF18
_0809C84A:
	mov r0, r8
_0809C84C:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809C664

	thumb_func_start sub_809C85C
sub_809C85C: @ 809C85C
	push {r4-r6,lr}
	ldr r0, _0809C894
	ldr r2, [r0]
	ldr r1, _0809C898
	adds r0, r2, r1
	movs r1, 0
	strb r1, [r0]
	ldr r3, _0809C89C
	adds r0, r2, r3
	strb r1, [r0]
	ldr r0, _0809C8A0
	adds r2, r0
	strb r1, [r2]
	ldr r1, _0809C8A4
	ldrh r3, [r1, 0x30]
	movs r0, 0x40
	ands r0, r3
	cmp r0, 0
	bne _0809C91A
	movs r0, 0x80
	ands r0, r3
	cmp r0, 0
	beq _0809C8A8
	movs r4, 0x1
	movs r0, 0
	movs r5, 0x2
	b _0809C922
	.align 2, 0
_0809C894: .4byte gUnknown_083B6DB4
_0809C898: .4byte 0x000011df
_0809C89C: .4byte 0x000011de
_0809C8A0: .4byte 0x000011e3
_0809C8A4: .4byte gMain
_0809C8A8:
	ldrh r2, [r1, 0x2C]
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	bne _0809C8CC
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	bne _0809C8DE
	ldr r0, _0809C8D0
	ldrb r0, [r0, 0x13]
	cmp r0, 0x1
	bne _0809C8E2
	movs r0, 0x80
	lsls r0, 2
	ands r0, r2
	cmp r0, 0
	beq _0809C8D4
_0809C8CC:
	movs r0, 0xA
	b _0809C93E
	.align 2, 0
_0809C8D0: .4byte gSaveBlock2
_0809C8D4:
	movs r0, 0x80
	lsls r0, 1
	ands r0, r2
	cmp r0, 0
	beq _0809C8E2
_0809C8DE:
	movs r0, 0x9
	b _0809C93E
_0809C8E2:
	ldrh r1, [r1, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809C8FA
	movs r0, 0
	bl sub_809A860
	bl sub_809CA8C
	movs r0, 0x7
	b _0809C93E
_0809C8FA:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809C906
	movs r0, 0x10
	b _0809C93E
_0809C906:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0809C916
	bl sub_809CD88
	movs r0, 0
	b _0809C93E
_0809C916:
	movs r4, 0
	b _0809C93C
_0809C91A:
	movs r4, 0x1
	movs r0, 0x3
	movs r5, 0
	strb r4, [r2]
_0809C922:
	cmp r4, 0
	beq _0809C93C
	lsls r6, r0, 24
	cmp r0, 0x2
	beq _0809C932
	movs r0, 0
	bl sub_809A860
_0809C932:
	lsrs r0, r6, 24
	lsls r1, r5, 24
	lsrs r1, 24
	bl sub_809AF18
_0809C93C:
	adds r0, r4, 0
_0809C93E:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_809C85C

	thumb_func_start sub_809C944
sub_809C944: @ 809C944
	push {r4-r7,lr}
	ldr r0, _0809C988
	ldrb r0, [r0]
	mov r12, r0
	ldr r7, _0809C98C
	ldrb r3, [r7]
	ldr r0, _0809C990
	ldr r1, [r0]
	ldr r0, _0809C994
	adds r5, r1, r0
	movs r0, 0
	strb r0, [r5]
	ldr r2, _0809C998
	adds r4, r1, r2
	strb r0, [r4]
	adds r2, 0x5
	adds r1, r2
	strb r0, [r1]
	ldr r6, _0809C99C
	ldrh r2, [r6, 0x30]
	movs r0, 0x40
	ands r0, r2
	cmp r0, 0
	bne _0809CA14
	movs r0, 0x88
	ands r0, r2
	cmp r0, 0
	beq _0809C9A0
	movs r6, 0x1
	movs r0, 0x2
	mov r12, r0
	movs r3, 0
	b _0809CA2A
	.align 2, 0
_0809C988: .4byte gUnknown_020384E4
_0809C98C: .4byte gUnknown_020384E5
_0809C990: .4byte gUnknown_083B6DB4
_0809C994: .4byte 0x000011df
_0809C998: .4byte 0x000011de
_0809C99C: .4byte gMain
_0809C9A0:
	movs r0, 0x20
	ands r0, r2
	cmp r0, 0
	beq _0809C9C0
	movs r6, 0x1
	lsls r0, r3, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r3, r0, 24
	cmp r0, 0
	bge _0809CA2C
	movs r0, 0xFF
	strb r0, [r5]
	movs r3, 0x1
	b _0809CA2C
_0809C9C0:
	movs r0, 0x10
	ands r0, r2
	cmp r0, 0
	beq _0809C9E0
	movs r6, 0x1
	lsls r0, r3, 24
	movs r2, 0x80
	lsls r2, 17
	adds r0, r2
	lsrs r3, r0, 24
	asrs r0, 24
	cmp r0, 0x1
	ble _0809CA2C
	strb r6, [r5]
	movs r3, 0
	b _0809CA2C
_0809C9E0:
	ldrh r1, [r6, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809C9F4
	movs r0, 0x4
	cmp r3, 0
	bne _0809CA3A
	movs r0, 0x5
	b _0809CA3A
_0809C9F4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809CA00
	movs r0, 0x10
	b _0809CA3A
_0809CA00:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _0809CA10
	bl sub_809CD88
	movs r0, 0
	b _0809CA3A
_0809CA10:
	movs r6, 0
	b _0809CA38
_0809CA14:
	movs r6, 0x1
	movs r0, 0
	mov r12, r0
	movs r0, 0xFF
	strb r0, [r4]
	movs r0, 0
	ldrsb r0, [r7, r0]
	movs r3, 0x1D
	cmp r0, 0
	bne _0809CA2A
	movs r3, 0x18
_0809CA2A:
	strb r6, [r1]
_0809CA2C:
	cmp r6, 0
	beq _0809CA38
	mov r0, r12
	adds r1, r3, 0
	bl sub_809AF18
_0809CA38:
	adds r0, r6, 0
_0809CA3A:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809C944

	thumb_func_start sub_809CA40
sub_809CA40: @ 809CA40
	push {r4,r5,lr}
	movs r3, 0
	ldr r0, _0809CA6C
	ldr r1, [r0]
	adds r4, r0, 0
	cmp r1, 0
	beq _0809CA84
	ldr r5, _0809CA70
_0809CA50:
	lsls r0, r3, 3
	adds r2, r0, r4
	movs r1, 0x4
	ldrsb r1, [r2, r1]
	movs r0, 0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _0809CA74
	ldr r0, [r2]
	bl _call_via_r0
	lsls r0, 24
	lsrs r0, 24
	b _0809CA86
	.align 2, 0
_0809CA6C: .4byte gUnknown_083BBBD4
_0809CA70: .4byte gUnknown_020384E4
_0809CA74:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	lsls r0, r3, 3
	adds r0, r4
	ldr r0, [r0]
	cmp r0, 0
	bne _0809CA50
_0809CA84:
	movs r0, 0
_0809CA86:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809CA40

	thumb_func_start sub_809CA8C
sub_809CA8C: @ 809CA8C
	push {lr}
	bl sub_809CDCC
	movs r0, 0x9
	bl sub_809CDEC
	movs r0, 0xA
	bl sub_809CDEC
	movs r0, 0xB
	bl sub_809CDEC
	movs r0, 0
	bl sub_809CDEC
	pop {r0}
	bx r0
	thumb_func_end sub_809CA8C

	thumb_func_start sub_809CAB0
sub_809CAB0: @ 809CAB0
	push {lr}
	bl sub_809CDCC
	bl sub_809AB8C
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _0809CAD4
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x1
	beq _0809CADE
	cmp r0, 0x1
	bgt _0809CAD8
	cmp r0, 0
	beq _0809CAEA
	b _0809CB24
	.align 2, 0
_0809CAD4: .4byte gUnknown_083B6DB4
_0809CAD8:
	cmp r0, 0x2
	beq _0809CAF6
	b _0809CB24
_0809CADE:
	cmp r1, 0
	beq _0809CB24
	movs r0, 0x1
	bl sub_809CDEC
	b _0809CB28
_0809CAEA:
	cmp r1, 0
	beq _0809CB24
	movs r0, 0x2
	bl sub_809CDEC
	b _0809CB28
_0809CAF6:
	ldr r0, _0809CB0C
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809CB18
	cmp r1, 0
	beq _0809CB10
	movs r0, 0x4
	bl sub_809CDEC
	b _0809CB28
	.align 2, 0
_0809CB0C: .4byte gUnknown_020384E6
_0809CB10:
	movs r0, 0x5
	bl sub_809CDEC
	b _0809CB28
_0809CB18:
	cmp r1, 0
	beq _0809CB24
	movs r0, 0x3
	bl sub_809CDEC
	b _0809CB28
_0809CB24:
	movs r0, 0
	b _0809CB6E
_0809CB28:
	movs r0, 0x6
	bl sub_809CDEC
	ldr r0, _0809CB4C
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	cmp r0, 0x2
	bne _0809CB5A
	ldr r0, _0809CB50
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	bne _0809CB54
	movs r0, 0x2
	bl sub_809CDEC
	b _0809CB5A
	.align 2, 0
_0809CB4C: .4byte gUnknown_083B6DB4
_0809CB50: .4byte gUnknown_020384E4
_0809CB54:
	movs r0, 0x1
	bl sub_809CDEC
_0809CB5A:
	movs r0, 0x8
	bl sub_809CDEC
	movs r0, 0x7
	bl sub_809CDEC
	movs r0, 0
	bl sub_809CDEC
	movs r0, 0x1
_0809CB6E:
	pop {r1}
	bx r1
	thumb_func_end sub_809CAB0

	thumb_func_start sub_809CB74
sub_809CB74: @ 809CB74
	ldr r1, _0809CB90
	ldr r1, [r1]
	movs r2, 0x8E
	lsls r2, 5
	adds r1, r2
	ldr r2, [r1]
	ldrh r2, [r2, 0x20]
	strh r2, [r0, 0x20]
	ldr r1, [r1]
	ldrh r1, [r1, 0x22]
	adds r1, 0x14
	strh r1, [r0, 0x22]
	bx lr
	.align 2, 0
_0809CB90: .4byte gUnknown_083B6DB4
	thumb_func_end sub_809CB74

	thumb_func_start unref_sub_809CB94
unref_sub_809CB94: @ 809CB94
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _0809CBBC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809CBC8
	ldr r2, _0809CBC0
	ldr r0, _0809CBC4
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r0, 0x64
	muls r1, r0
	adds r1, r2
	adds r0, r4, 0
	movs r2, 0x50
	bl memcpy
	b _0809CBF6
	.align 2, 0
_0809CBBC: .4byte gUnknown_020384E4
_0809CBC0: .4byte gPlayerParty
_0809CBC4: .4byte gUnknown_020384E5
_0809CBC8:
	bl get_preferred_box
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _0809CBFC
	ldr r1, _0809CC00
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	lsls r2, r0, 2
	adds r2, r0
	lsls r0, r2, 4
	subs r0, r2
	lsls r0, 5
	adds r1, r0
	adds r1, r3
	adds r1, 0x4
	adds r0, r4, 0
	movs r2, 0x50
	bl memcpy
_0809CBF6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809CBFC: .4byte gPokemonStorage
_0809CC00: .4byte gUnknown_020384E5
	thumb_func_end unref_sub_809CB94

	thumb_func_start sub_809CC04
sub_809CC04: @ 809CC04
	push {r4-r7,lr}
	sub sp, 0x34
	mov r1, sp
	ldr r0, _0809CCB0
	ldm r0!, {r2-r4}
	stm r1!, {r2-r4}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	add r4, sp, 0x18
	adds r1, r4, 0
	ldr r0, _0809CCB4
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	mov r0, sp
	bl LoadSpriteSheets
	adds r0, r4, 0
	bl LoadSpritePalettes
	ldr r0, _0809CCB8
	bl IndexOfSpritePaletteTag
	ldr r1, _0809CCBC
	ldr r6, [r1]
	ldr r4, _0809CCC0
	adds r7, r6, r4
	strb r0, [r7]
	ldr r0, _0809CCC4
	bl IndexOfSpritePaletteTag
	ldr r5, _0809CCC8
	adds r1, r6, r5
	strb r0, [r1]
	ldr r0, _0809CCCC
	ldrb r0, [r0]
	ldr r1, _0809CCD0
	ldrb r1, [r1]
	add r4, sp, 0x30
	mov r5, sp
	adds r5, 0x32
	adds r2, r4, 0
	adds r3, r5, 0
	bl sub_809AACC
	ldr r0, _0809CCD4
	movs r2, 0
	ldrsh r1, [r4, r2]
	movs r3, 0
	ldrsh r2, [r5, r3]
	movs r3, 0x6
	bl CreateSprite
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x40
	beq _0809CCE4
	movs r5, 0x8E
	lsls r5, 5
	adds r4, r6, r5
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	ldr r0, _0809CCD8
	adds r1, r0
	str r1, [r4]
	ldr r0, _0809CCDC
	ldrb r0, [r0]
	adds r0, r7, r0
	ldrb r2, [r0]
	lsls r2, 4
	ldrb r3, [r1, 0x5]
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
	ldr r0, _0809CCE0
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809CCEE
	ldr r0, [r4]
	movs r1, 0x3
	bl StartSpriteAnim
	b _0809CCEE
	.align 2, 0
_0809CCB0: .4byte gHandCursorSpriteSheets
_0809CCB4: .4byte gHandCursorSpritePalettes
_0809CCB8: .4byte 0x0000dac6
_0809CCBC: .4byte gUnknown_083B6DB4
_0809CCC0: .4byte 0x000011e4
_0809CCC4: .4byte 0x0000dad1
_0809CCC8: .4byte 0x000011e5
_0809CCCC: .4byte gUnknown_020384E4
_0809CCD0: .4byte gUnknown_020384E5
_0809CCD4: .4byte gSpriteTemplate_83BBC70
_0809CCD8: .4byte gSprites
_0809CCDC: .4byte gUnknown_020384E9
_0809CCE0: .4byte gUnknown_020384E6
_0809CCE4:
	movs r0, 0x8E
	lsls r0, 5
	adds r1, r6, r0
	movs r0, 0
	str r0, [r1]
_0809CCEE:
	ldr r0, _0809CD00
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x1
	bne _0809CD04
	movs r3, 0xC
	movs r5, 0x1
	b _0809CD08
	.align 2, 0
_0809CD00: .4byte gUnknown_020384E4
_0809CD04:
	movs r3, 0x14
	movs r5, 0x2
_0809CD08:
	ldr r0, _0809CD58
	movs r1, 0
	movs r2, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x40
	beq _0809CD6C
	ldr r0, _0809CD5C
	ldr r0, [r0]
	ldr r1, _0809CD60
	adds r4, r0, r1
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	ldr r0, _0809CD64
	adds r1, r0
	str r1, [r4]
	lsls r3, r5, 2
	ldrb r2, [r1, 0x5]
	movs r0, 0xD
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, 0x5]
	ldr r0, _0809CD68
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _0809CD78
	ldr r0, [r4]
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
	b _0809CD78
	.align 2, 0
_0809CD58: .4byte gSpriteTemplate_83BBC88
_0809CD5C: .4byte gUnknown_083B6DB4
_0809CD60: .4byte 0x000011c4
_0809CD64: .4byte gSprites
_0809CD68: .4byte gUnknown_020384E4
_0809CD6C:
	ldr r0, _0809CD80
	ldr r0, [r0]
	ldr r2, _0809CD84
	adds r0, r2
	movs r1, 0
	str r1, [r0]
_0809CD78:
	add sp, 0x34
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CD80: .4byte gUnknown_083B6DB4
_0809CD84: .4byte 0x000011c4
	thumb_func_end sub_809CC04

	thumb_func_start sub_809CD88
sub_809CD88: @ 809CD88
	push {lr}
	ldr r2, _0809CDC0
	movs r1, 0
	ldrb r0, [r2]
	cmp r0, 0
	bne _0809CD96
	movs r1, 0x1
_0809CD96:
	strb r1, [r2]
	ldr r0, _0809CDC4
	ldr r0, [r0]
	movs r3, 0x8E
	lsls r3, 5
	adds r1, r0, r3
	ldr r3, [r1]
	ldr r1, _0809CDC8
	adds r0, r1
	ldrb r2, [r2]
	adds r0, r2
	ldrb r1, [r0]
	lsls r1, 4
	ldrb r2, [r3, 0x5]
	movs r0, 0xF
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, 0x5]
	pop {r0}
	bx r0
	.align 2, 0
_0809CDC0: .4byte gUnknown_020384E9
_0809CDC4: .4byte gUnknown_083B6DB4
_0809CDC8: .4byte 0x000011e4
	thumb_func_end sub_809CD88

	thumb_func_start sub_809CDCC
sub_809CDCC: @ 809CDCC
	ldr r0, _0809CDE0
	ldr r0, [r0]
	ldr r2, _0809CDE4
	adds r1, r0, r2
	movs r2, 0
	strb r2, [r1]
	ldr r1, _0809CDE8
	adds r0, r1
	strb r2, [r0]
	bx lr
	.align 2, 0
_0809CDE0: .4byte gUnknown_083B6DB4
_0809CDE4: .4byte 0x000011b8
_0809CDE8: .4byte 0x000011b9
	thumb_func_end sub_809CDCC

	thumb_func_start sub_809CDEC
sub_809CDEC: @ 809CDEC
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, _0809CE3C
	ldr r5, [r0]
	ldr r0, _0809CE40
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, 0x6
	bhi _0809CE36
	adds r1, r0, 0
	lsls r1, 3
	movs r2, 0x8C
	lsls r2, 5
	adds r1, r2
	adds r1, r5, r1
	ldr r2, _0809CE44
	lsls r0, r3, 2
	adds r0, r2
	ldr r0, [r0]
	str r0, [r1]
	str r3, [r1, 0x4]
	bl sub_8072CA4
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0x7
	lsrs r1, 3
	ldr r2, _0809CE48
	adds r0, r5, r2
	ldrb r2, [r0]
	cmp r1, r2
	bls _0809CE30
	strb r1, [r0]
_0809CE30:
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
_0809CE36:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809CE3C: .4byte gUnknown_083B6DB4
_0809CE40: .4byte 0x000011b8
_0809CE44: .4byte gUnknown_083BBCA0
_0809CE48: .4byte 0x000011b9
	thumb_func_end sub_809CDEC

	thumb_func_start sub_809CE4C
sub_809CE4C: @ 809CE4C
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _0809CE70
	ldr r1, [r0]
	ldr r3, _0809CE74
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	bcs _0809CE7C
	lsls r0, r2, 3
	ldr r2, _0809CE78
	adds r1, r2
	adds r1, r0
	movs r0, 0
	ldrsb r0, [r1, r0]
	b _0809CE80
	.align 2, 0
_0809CE70: .4byte gUnknown_083B6DB4
_0809CE74: .4byte 0x000011b8
_0809CE78: .4byte 0x00001184
_0809CE7C:
	movs r0, 0x1
	negs r0, r0
_0809CE80:
	pop {r1}
	bx r1
	thumb_func_end sub_809CE4C

	thumb_func_start sub_809CE84
sub_809CE84: @ 809CE84
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x8
	ldr r0, _0809CF20
	ldr r4, [r0]
	ldr r0, _0809CF24
	adds r0, r4
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, 1
	movs r1, 0xE
	subs r1, r0
	ldr r3, _0809CF28
	adds r6, r4, r3
	movs r0, 0
	mov r10, r0
	strh r1, [r6]
	ldr r1, _0809CF2C
	adds r1, r4
	mov r9, r1
	ldrb r1, [r1]
	movs r0, 0x1C
	subs r0, r1
	subs r3, 0x2
	adds r5, r4, r3
	strh r0, [r5]
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6]
	movs r2, 0x1D
	movs r3, 0xF
	bl MenuDrawTextWindow
	ldrb r0, [r5]
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r6]
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	mov r3, r8
	ldrb r2, [r3]
	movs r3, 0x8C
	lsls r3, 5
	adds r4, r3
	adds r3, r4, 0
	bl PrintMenuItems
	ldrb r1, [r5]
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	ldrb r2, [r6]
	adds r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	mov r4, r8
	ldrb r3, [r4]
	mov r0, r10
	str r0, [sp]
	mov r4, r9
	ldrb r0, [r4]
	str r0, [sp, 0x4]
	movs r0, 0
	bl InitMenu
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809CF20: .4byte gUnknown_083B6DB4
_0809CF24: .4byte 0x000011b8
_0809CF28: .4byte 0x000011bc
_0809CF2C: .4byte 0x000011b9
	thumb_func_end sub_809CE84

	thumb_func_start sub_809CF30
sub_809CF30: @ 809CF30
	push {r4,r5,lr}
	movs r5, 0x2
	negs r5, r5
	ldr r4, _0809CF6C
	ldrh r1, [r4, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0809CF86
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809CF52
	movs r0, 0x5
	bl PlaySE
	adds r5, 0x1
_0809CF52:
	ldrh r1, [r4, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809CF70
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursor
	b _0809CF8E
	.align 2, 0
_0809CF6C: .4byte gMain
_0809CF70:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0809CF8E
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	bl MoveMenuCursor
	b _0809CF8E
_0809CF86:
	bl GetMenuCursorPos
	lsls r0, 24
	lsrs r5, r0, 24
_0809CF8E:
	movs r0, 0x2
	negs r0, r0
	cmp r5, r0
	beq _0809CFB2
	bl sub_8072DEC
	ldr r0, _0809CFD0
	ldr r1, [r0]
	ldr r2, _0809CFD4
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r2, 0x2
	adds r1, r2
	ldrb r1, [r1]
	movs r2, 0x1D
	movs r3, 0xF
	bl MenuZeroFillWindowRect
_0809CFB2:
	cmp r5, 0
	blt _0809CFC4
	ldr r0, _0809CFD0
	ldr r0, [r0]
	lsls r1, r5, 3
	ldr r2, _0809CFD8
	adds r0, r2
	adds r0, r1
	ldr r5, [r0]
_0809CFC4:
	lsls r0, r5, 16
	asrs r0, 16
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_0809CFD0: .4byte gUnknown_083B6DB4
_0809CFD4: .4byte 0x000011ba
_0809CFD8: .4byte 0x00001184
	thumb_func_end sub_809CF30

	thumb_func_start sub_809CFDC
sub_809CFDC: @ 809CFDC
	ldr r3, _0809CFEC
	str r0, [r3]
	str r1, [r0]
	movs r1, 0
	strb r2, [r0, 0x5]
	strb r1, [r0, 0x4]
	bx lr
	.align 2, 0
_0809CFEC: .4byte gUnknown_020384EC
	thumb_func_end sub_809CFDC

	thumb_func_start sub_809CFF0
sub_809CFF0: @ 809CFF0
	push {r4,r5,lr}
	ldr r2, _0809D030
	ldr r1, [r2]
	ldrb r0, [r1, 0x4]
	cmp r0, 0
	beq _0809D02A
	movs r4, 0
	ldrb r1, [r1, 0x4]
	cmp r4, r1
	bcs _0809D022
	adds r5, r2, 0
_0809D006:
	ldr r0, [r5]
	lsls r1, r4, 4
	ldr r0, [r0]
	adds r0, r1
	ldr r1, [r0, 0xC]
	bl _call_via_r1
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, [r5]
	ldrb r0, [r0, 0x4]
	cmp r4, r0
	bcc _0809D006
_0809D022:
	ldr r0, _0809D030
	ldr r1, [r0]
	movs r0, 0
	strb r0, [r1, 0x4]
_0809D02A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809D030: .4byte gUnknown_020384EC
	thumb_func_end sub_809CFF0

	thumb_func_start sub_809D034
sub_809D034: @ 809D034
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	mov r9, r3
	ldr r0, [sp, 0x20]
	ldr r3, [sp, 0x24]
	ldr r4, [sp, 0x28]
	ldr r5, [sp, 0x2C]
	lsls r1, 16
	lsrs r1, 16
	mov r10, r1
	lsls r2, 16
	lsrs r6, r2, 16
	lsls r0, 16
	lsrs r0, 16
	mov r12, r0
	lsls r3, 16
	lsrs r3, 16
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	ldr r0, _0809D0A4
	ldr r2, [r0]
	ldrb r0, [r2, 0x4]
	adds r1, r0, 0
	ldrb r7, [r2, 0x5]
	cmp r1, r7
	bcs _0809D0AC
	adds r0, 0x1
	strb r0, [r2, 0x4]
	lsls r0, r1, 4
	ldr r2, [r2]
	adds r2, r0
	lsls r0, r4, 1
	strh r0, [r2, 0x8]
	lsls r0, r6, 6
	add r0, r8
	mov r4, r10
	lsls r1, r4, 1
	adds r0, r1
	str r0, [r2, 0x4]
	lsls r0, r3, 6
	add r0, r9
	mov r7, r12
	lsls r1, r7, 1
	adds r0, r1
	str r0, [r2]
	strh r5, [r2, 0xA]
	ldr r0, _0809D0A8
	str r0, [r2, 0xC]
	movs r0, 0x1
	b _0809D0AE
	.align 2, 0
_0809D0A4: .4byte gUnknown_020384EC
_0809D0A8: .4byte sub_809D0BC
_0809D0AC:
	movs r0, 0
_0809D0AE:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809D034

	thumb_func_start sub_809D0BC
sub_809D0BC: @ 809D0BC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r6, [r0]
	ldr r5, [r0, 0x4]
	ldrh r7, [r0, 0xA]
	ldrh r2, [r0, 0x8]
	movs r4, 0
	cmp r4, r7
	bcs _0809D0F2
	lsrs r2, 1
	mov r8, r2
	ldr r0, _0809D100
	mov r9, r0
_0809D0DA:
	adds r0, r6, 0
	adds r1, r5, 0
	mov r2, r8
	mov r3, r9
	ands r2, r3
	bl CpuSet
	adds r5, 0x40
	adds r6, 0x40
	adds r4, 0x1
	cmp r4, r7
	bcc _0809D0DA
_0809D0F2:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D100: .4byte 0x001fffff
	thumb_func_end sub_809D0BC

	thumb_func_start sub_809D104
sub_809D104: @ 809D104
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r5, [sp, 0x18]
	ldr r4, [sp, 0x1C]
	ldr r6, [sp, 0x20]
	mov r8, r6
	ldr r6, [sp, 0x24]
	lsls r1, 16
	lsls r2, 16
	lsrs r2, 16
	lsls r5, 16
	lsls r4, 16
	mov r7, r8
	lsls r7, 16
	lsls r6, 16
	lsrs r6, 16
	lsrs r4, 10
	adds r3, r4
	lsrs r5, 15
	adds r5, r3, r5
	lsls r3, r2, 6
	adds r3, r0, r3
	lsrs r1, 15
	adds r4, r3, r1
	adds r2, r6
	lsls r2, 6
	adds r6, r0, r2
	lsrs r2, r7, 15
	cmp r4, r6
	bcs _0809D15C
	lsrs r7, r2, 1
	ldr r0, _0809D168
	mov r8, r0
_0809D148:
	adds r0, r5, 0
	adds r1, r4, 0
	mov r2, r8
	ands r2, r7
	bl CpuSet
	adds r4, 0x40
	adds r5, 0x40
	cmp r4, r6
	bcc _0809D148
_0809D15C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D168: .4byte 0x001fffff
	thumb_func_end sub_809D104

	thumb_func_start sub_809D16C
sub_809D16C: @ 809D16C
	push {r4-r7,lr}
	mov r12, r0
	ldr r0, [sp, 0x14]
	lsls r1, 16
	lsrs r6, r1, 16
	lsls r2, 16
	lsrs r4, r2, 16
	lsls r3, 16
	lsrs r3, 16
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, _0809D1B4
	ldr r1, [r0]
	ldrb r0, [r1, 0x4]
	adds r2, r0, 0
	ldrb r7, [r1, 0x5]
	cmp r2, r7
	bcs _0809D1BC
	adds r0, 0x1
	strb r0, [r1, 0x4]
	lsls r0, r2, 4
	ldr r1, [r1]
	adds r1, r0
	lsls r0, r3, 1
	strh r0, [r1, 0x8]
	lsls r0, r4, 5
	adds r0, r6
	lsls r0, 1
	add r0, r12
	str r0, [r1, 0x4]
	strh r5, [r1, 0xA]
	ldr r0, _0809D1B8
	str r0, [r1, 0xC]
	movs r0, 0x1
	b _0809D1BE
	.align 2, 0
_0809D1B4: .4byte gUnknown_020384EC
_0809D1B8: .4byte sub_809D1C4
_0809D1BC:
	movs r0, 0
_0809D1BE:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809D16C

	thumb_func_start sub_809D1C4
sub_809D1C4: @ 809D1C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r6, r0, 0
	movs r0, 0
	ldrh r1, [r6, 0xA]
	cmp r0, r1
	bcs _0809D252
	movs r7, 0x80
	lsls r7, 5
	mov r5, sp
	ldr r2, _0809D210
	mov r8, r2
	movs r1, 0x81
	lsls r1, 24
	mov r10, r1
_0809D1EA:
	ldr r2, [r6, 0x4]
	ldrh r3, [r6, 0x8]
	mov r12, r2
	adds r0, 0x1
	mov r9, r0
	cmp r3, r7
	bhi _0809D214
	movs r0, 0
	strh r0, [r5]
	mov r2, sp
	mov r0, r8
	str r2, [r0]
	mov r1, r12
	str r1, [r0, 0x4]
	lsrs r0, r3, 1
	mov r2, r10
	orrs r0, r2
	mov r1, r8
	b _0809D23C
	.align 2, 0
_0809D210: .4byte 0x040000d4
_0809D214:
	movs r4, 0
	strh r4, [r5]
	ldr r1, _0809D264
	mov r0, sp
	str r0, [r1]
	str r2, [r1, 0x4]
	ldr r0, _0809D268
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r2, r7
	subs r3, r7
	cmp r3, r7
	bhi _0809D214
	strh r4, [r5]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, 0x4]
	lsrs r0, r3, 1
	mov r2, r10
	orrs r0, r2
_0809D23C:
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	mov r0, r12
	adds r0, 0x40
	str r0, [r6, 0x4]
	mov r1, r9
	lsls r0, r1, 16
	lsrs r0, 16
	ldrh r2, [r6, 0xA]
	cmp r0, r2
	bcc _0809D1EA
_0809D252:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D264: .4byte 0x040000d4
_0809D268: .4byte 0x81000800
	thumb_func_end sub_809D1C4

	thumb_func_start unref_sub_809D26C
unref_sub_809D26C: @ 809D26C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x18
	adds r6, r3, 0
	ldr r3, [sp, 0x2C]
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	mov r8, sp
	ldr r4, _0809D2E0
	str r4, [sp]
	ldr r5, _0809D2E4
	lsls r4, r0, 2
	adds r4, r5
	ldr r4, [r4]
	str r4, [sp, 0x4]
	ldr r4, _0809D2E8
	str r4, [sp, 0x8]
	ldr r4, _0809D2EC
	str r4, [sp, 0xC]
	str r1, [sp, 0x10]
	ldr r1, _0809D2F0
	adds r0, r1
	ldr r4, _0809D2F4
	adds r1, r4, 0
	ldrb r0, [r0]
	adds r1, r0
	mov r0, r8
	strh r1, [r0, 0x14]
	lsls r2, 16
	asrs r2, 16
	lsls r6, 16
	asrs r6, 16
	mov r0, sp
	adds r1, r2, 0
	adds r2, r6, 0
	bl sub_809D710
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _0809D2F8
	adds r0, r1
	bl sub_809D638
	adds r0, r4, 0
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809D2E0: .4byte gOamData_83BC5E8
_0809D2E4: .4byte gMonIconTable
_0809D2E8: .4byte gSpriteAnimTable_83BC62C
_0809D2EC: .4byte gSpriteAffineAnimTable_83BC660
_0809D2F0: .4byte gMonIconPaletteIndices
_0809D2F4: .4byte 0x0000dac0
_0809D2F8: .4byte gSprites
	thumb_func_end unref_sub_809D26C

	thumb_func_start sub_809D2FC
sub_809D2FC: @ 809D2FC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x30
	adds r4, r0, 0
	adds r5, r1, 0
	ldr r0, [sp, 0x48]
	ldr r1, [sp, 0x4C]
	lsls r4, 16
	lsrs r4, 16
	lsls r2, 16
	lsrs r7, r2, 16
	lsls r3, 16
	lsrs r6, r3, 16
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, _0809D38C
	str r0, [sp, 0x18]
	adds r0, r4, 0
	bl sub_809D4F4
	str r0, [sp, 0x1C]
	ldr r0, _0809D390
	str r0, [sp, 0x20]
	ldr r0, _0809D394
	str r0, [sp, 0x24]
	str r5, [sp, 0x28]
	ldr r0, _0809D398
	adds r0, r4, r0
	ldr r1, _0809D39C
	adds r5, r1, 0
	ldrb r0, [r0]
	adds r1, r5, r0
	add r0, sp, 0x2C
	strh r1, [r0]
	add r1, sp, 0x18
	mov r0, sp
	movs r2, 0x18
	bl memcpy
	movs r0, 0xCE
	lsls r0, 1
	cmp r4, r0
	bls _0809D35A
	mov r0, sp
	strh r5, [r0, 0x14]
_0809D35A:
	lsls r1, r7, 16
	asrs r1, 16
	lsls r2, r6, 16
	asrs r2, 16
	mov r0, sp
	mov r3, r8
	bl sub_809D710
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _0809D3A0
	adds r0, r1
	bl sub_809D638
	adds r0, r4, 0
	add sp, 0x30
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809D38C: .4byte gOamData_83BC5E8
_0809D390: .4byte gSpriteAnimTable_83BC62C
_0809D394: .4byte gSpriteAffineAnimTable_83BC660
_0809D398: .4byte gMonIconPaletteIndices
_0809D39C: .4byte 0x0000dac0
_0809D3A0: .4byte gSprites
	thumb_func_end sub_809D2FC

	thumb_func_start sub_809D3A4
sub_809D3A4: @ 809D3A4
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x18
	adds r6, r3, 0
	ldr r3, [sp, 0x2C]
	lsls r0, 16
	lsrs r0, 16
	lsls r3, 24
	lsrs r3, 24
	mov r8, sp
	ldr r4, _0809D418
	str r4, [sp]
	ldr r5, _0809D41C
	lsls r4, r0, 2
	adds r4, r5
	ldr r4, [r4]
	str r4, [sp, 0x4]
	ldr r4, _0809D420
	str r4, [sp, 0x8]
	ldr r4, _0809D424
	str r4, [sp, 0xC]
	str r1, [sp, 0x10]
	ldr r1, _0809D428
	adds r0, r1
	ldr r4, _0809D42C
	adds r1, r4, 0
	ldrb r0, [r0]
	adds r1, r0
	mov r0, r8
	strh r1, [r0, 0x14]
	lsls r2, 16
	asrs r2, 16
	lsls r6, 16
	asrs r6, 16
	mov r0, sp
	adds r1, r2, 0
	adds r2, r6, 0
	bl sub_809D710
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, r4, 4
	adds r0, r4
	lsls r0, 2
	ldr r1, _0809D430
	adds r0, r1
	bl sub_809D638
	adds r0, r4, 0
	add sp, 0x18
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809D418: .4byte gOamData_83BC5E8
_0809D41C: .4byte gMonIconTable
_0809D420: .4byte gSpriteAnimTable_83BC62C
_0809D424: .4byte gSpriteAffineAnimTable_83BC660
_0809D428: .4byte gMonIconPaletteIndices
_0809D42C: .4byte 0x0000dac0
_0809D430: .4byte gSprites
	thumb_func_end sub_809D3A4

	thumb_func_start mon_icon_convert_unown_species_id
mon_icon_convert_unown_species_id: @ 809D434
	push {lr}
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, SPECIES_UNOWN
	bne _0809D45E
	adds r0, r1, 0
	bl sub_809D474
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0
	bne _0809D450
	movs r0, SPECIES_UNOWN
	b _0809D45A
_0809D450:
	movs r1, 0xCE
	lsls r1, 1
	adds r0, r1
	lsls r0, 16
	lsrs r0, 16
_0809D45A:
	adds r1, r0, 0
	b _0809D46C
_0809D45E:
	movs r0, 0xCE
	lsls r0, 1
	adds r1, r2, 0
	cmp r1, r0
	bls _0809D46C
	movs r1, 0x82
	lsls r1, 1
_0809D46C:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end mon_icon_convert_unown_species_id

	thumb_func_start sub_809D474
sub_809D474: @ 809D474
	push {lr}
	adds r2, r0, 0
	movs r0, 0xC0
	lsls r0, 18
	ands r0, r2
	lsrs r0, 18
	movs r1, 0xC0
	lsls r1, 10
	ands r1, r2
	lsrs r1, 12
	orrs r0, r1
	movs r1, 0xC0
	lsls r1, 2
	ands r1, r2
	lsrs r1, 6
	orrs r0, r1
	movs r1, 0x3
	ands r1, r2
	orrs r0, r1
	movs r1, 0x1C
	bl __umodsi3
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_809D474

	thumb_func_start sub_809D4A8
sub_809D4A8: @ 809D4A8
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	mov r1, sp
	bl sub_80A2D64
	lsls r0, 16
	lsrs r0, 16
	cmp r0, SPECIES_UNOWN
	bne _0809D4DE
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, 0
	bne _0809D4CE
	mov r1, sp
	adds r0, SPECIES_UNOWN
	b _0809D4D6
_0809D4CE:
	mov r1, sp
	movs r2, 0xCE
	lsls r2, 1
	adds r0, r2
_0809D4D6:
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	b _0809D4EA
_0809D4DE:
	adds r0, r4, 0
	movs r1, 0
	bl mon_icon_convert_unown_species_id
	lsls r0, 16
	lsrs r0, 16
_0809D4EA:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_809D4A8

	thumb_func_start sub_809D4F4
sub_809D4F4: @ 809D4F4
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	bl mon_icon_convert_unown_species_id
	lsls r0, 16
	ldr r1, _0809D50C
	lsrs r0, 14
	adds r0, r1
	ldr r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_0809D50C: .4byte gMonIconTable
	thumb_func_end sub_809D4F4

	thumb_func_start sub_809D510
sub_809D510: @ 809D510
	push {lr}
	bl sub_809D7E8
	pop {r0}
	bx r0
	thumb_func_end sub_809D510

	thumb_func_start sub_809D51C
sub_809D51C: @ 809D51C
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _0809D53C
_0809D522:
	lsls r0, r4, 3
	adds r0, r5
	bl LoadSpritePalette
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0809D522
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809D53C: .4byte gMonIconPaletteTable
	thumb_func_end sub_809D51C

	thumb_func_start unref_sub_809D540
unref_sub_809D540: @ 809D540
	push {r4,lr}
	lsls r0, 16
	lsrs r1, r0, 16
	movs r0, 0xCE
	lsls r0, 1
	cmp r1, r0
	bls _0809D552
	movs r1, 0x82
	lsls r1, 1
_0809D552:
	ldr r0, _0809D578
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r1, _0809D57C
	lsls r0, 3
	adds r4, r0, r1
	ldrh r0, [r4, 0x4]
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _0809D572
	adds r0, r4, 0
	bl LoadSpritePalette
_0809D572:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809D578: .4byte gMonIconPaletteIndices
_0809D57C: .4byte gMonIconPaletteTable
	thumb_func_end unref_sub_809D540

	thumb_func_start sub_809D580
sub_809D580: @ 809D580
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _0809D5AC
	adds r0, r1
	ldrb r0, [r0]
	ldr r1, _0809D5B0
	lsls r0, 3
	adds r4, r0, r1
	ldrh r0, [r4, 0x4]
	bl IndexOfSpritePaletteTag
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _0809D5A6
	adds r0, r4, 0
	bl LoadSpritePalette
_0809D5A6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809D5AC: .4byte gMonIconPaletteIndices
_0809D5B0: .4byte gMonIconPaletteTable
	thumb_func_end sub_809D580

	thumb_func_start unref_sub_809D5B4
unref_sub_809D5B4: @ 809D5B4
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _0809D5D4
_0809D5BA:
	lsls r0, r4, 3
	adds r0, r5
	ldrh r0, [r0, 0x4]
	bl FreeSpritePaletteByTag
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x5
	bls _0809D5BA
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809D5D4: .4byte gMonIconPaletteTable
	thumb_func_end unref_sub_809D5B4

	thumb_func_start unref_sub_809D5D8
unref_sub_809D5D8: @ 809D5D8
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	movs r0, 0xCE
	lsls r0, 1
	cmp r1, r0
	bls _0809D5EA
	movs r1, 0x82
	lsls r1, 1
_0809D5EA:
	ldr r0, _0809D600
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r1, _0809D604
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x4]
	bl FreeSpritePaletteByTag
	pop {r0}
	bx r0
	.align 2, 0
_0809D600: .4byte gMonIconPaletteIndices
_0809D604: .4byte gMonIconPaletteTable
	thumb_func_end unref_sub_809D5D8

	thumb_func_start sub_809D608
sub_809D608: @ 809D608
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _0809D624
	adds r0, r1
	ldrb r0, [r0]
	ldr r1, _0809D628
	lsls r0, 3
	adds r0, r1
	ldrh r0, [r0, 0x4]
	bl FreeSpritePaletteByTag
	pop {r0}
	bx r0
	.align 2, 0
_0809D624: .4byte gMonIconPaletteIndices
_0809D628: .4byte gMonIconPaletteTable
	thumb_func_end sub_809D608

	thumb_func_start sub_809D62C
sub_809D62C: @ 809D62C
	push {lr}
	bl sub_809D638
	pop {r0}
	bx r0
	thumb_func_end sub_809D62C

	thumb_func_start sub_809D638
sub_809D638: @ 809D638
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r4, r0, 0
	movs r7, 0
	adds r6, r4, 0
	adds r6, 0x2C
	ldrb r2, [r6]
	movs r0, 0x3F
	mov r9, r0
	ands r0, r2
	cmp r0, 0
	bne _0809D6EC
	movs r1, 0x2A
	adds r1, r4
	mov r8, r1
	ldrb r1, [r1]
	ldr r0, [r4, 0x8]
	lsls r1, 2
	adds r1, r0
	adds r5, r4, 0
	adds r5, 0x2B
	ldrb r0, [r5]
	ldr r1, [r1]
	lsls r0, 2
	adds r0, r1
	movs r1, 0
	ldrsh r3, [r0, r1]
	movs r0, 0x2
	negs r0, r0
	cmp r3, r0
	beq _0809D682
	adds r0, 0x1
	cmp r3, r0
	bne _0809D686
	b _0809D700
_0809D682:
	strb r7, [r5]
	b _0809D700
_0809D686:
	ldr r2, _0809D6E4
	ldrb r1, [r4, 0x3]
	lsrs r1, 6
	lsls r1, 1
	ldrb r0, [r4, 0x1]
	lsrs r0, 6
	lsls r0, 3
	adds r1, r0
	adds r1, r2
	ldrh r2, [r1]
	adds r1, r2, 0
	muls r1, r3
	ldr r0, [r4, 0xC]
	adds r0, r1
	ldrh r1, [r4, 0x4]
	lsls r1, 22
	lsrs r1, 17
	ldr r3, _0809D6E8
	adds r1, r3
	bl RequestSpriteCopy
	mov r0, r8
	ldrb r1, [r0]
	ldr r0, [r4, 0x8]
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r5]
	ldr r1, [r1]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	lsls r0, 10
	lsrs r0, 26
	mov r1, r9
	ands r1, r0
	ldrb r2, [r6]
	movs r0, 0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6]
	ldrb r0, [r5]
	adds r0, 0x1
	strb r0, [r5]
	ldrb r7, [r5]
	b _0809D700
	.align 2, 0
_0809D6E4: .4byte gSpriteImageSizes
_0809D6E8: .4byte 0x06010000
_0809D6EC:
	lsls r0, r2, 26
	lsrs r0, 26
	subs r0, 0x1
	movs r1, 0x3F
	ands r0, r1
	movs r1, 0x40
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r6]
_0809D700:
	adds r0, r7, 0
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809D638

	thumb_func_start sub_809D710
sub_809D710: @ 809D710
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x38
	mov r9, r0
	adds r4, r1, 0
	adds r5, r2, 0
	mov r8, r3
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r0, 0
	str r0, [sp, 0x30]
	ldr r2, _0809D7D8
	mov r0, r9
	ldr r6, [r0]
	ldrb r1, [r6, 0x3]
	lsrs r1, 6
	lsls r1, 1
	ldrb r0, [r6, 0x1]
	lsrs r0, 6
	lsls r0, 3
	adds r1, r0
	adds r1, r2
	ldrh r2, [r1]
	ldr r1, _0809D7DC
	add r3, sp, 0x30
	ldr r0, [r3, 0x4]
	ands r0, r1
	orrs r0, r2
	str r0, [r3, 0x4]
	add r1, sp, 0x18
	ldr r0, _0809D7E0
	strh r0, [r1]
	mov r0, r9
	ldrh r2, [r0, 0x14]
	mov r0, sp
	adds r0, 0x1A
	strh r2, [r0]
	str r6, [sp, 0x1C]
	mov r2, r9
	ldr r0, [r2, 0x8]
	str r0, [sp, 0x20]
	str r3, [sp, 0x24]
	ldr r0, [r2, 0xC]
	str r0, [sp, 0x28]
	ldr r0, [r2, 0x10]
	str r0, [sp, 0x2C]
	mov r0, sp
	movs r2, 0x18
	bl memcpy
	lsls r4, 16
	asrs r4, 16
	lsls r5, 16
	asrs r5, 16
	mov r0, sp
	adds r1, r4, 0
	adds r2, r5, 0
	mov r3, r8
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r6, _0809D7E4
	lsls r3, r0, 4
	adds r3, r0
	lsls r3, 2
	adds r4, r3, r6
	adds r5, r4, 0
	adds r5, 0x2C
	ldrb r1, [r5]
	movs r2, 0x40
	orrs r1, r2
	strb r1, [r5]
	adds r4, 0x3F
	ldrb r2, [r4]
	movs r1, 0x5
	negs r1, r1
	ands r1, r2
	strb r1, [r4]
	adds r6, 0xC
	adds r3, r6
	mov r2, r9
	ldr r1, [r2, 0x4]
	str r1, [r3]
	add sp, 0x38
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809D7D8: .4byte gSpriteImageSizes
_0809D7DC: .4byte 0xffff0000
_0809D7E0: .4byte 0x0000ffff
_0809D7E4: .4byte gSprites
	thumb_func_end sub_809D710

	thumb_func_start sub_809D7E8
sub_809D7E8: @ 809D7E8
	push {lr}
	sub sp, 0x8
	movs r1, 0
	str r1, [sp]
	ldr r3, _0809D81C
	ldrb r2, [r0, 0x3]
	lsrs r2, 6
	lsls r2, 1
	ldrb r1, [r0, 0x1]
	lsrs r1, 6
	lsls r1, 3
	adds r2, r1
	adds r2, r3
	ldrh r3, [r2]
	ldr r2, _0809D820
	ldr r1, [sp, 0x4]
	ands r1, r2
	orrs r1, r3
	str r1, [sp, 0x4]
	mov r1, sp
	str r1, [r0, 0xC]
	bl DestroySprite
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_0809D81C: .4byte gSpriteImageSizes
_0809D820: .4byte 0xffff0000
	thumb_func_end sub_809D7E8

	thumb_func_start sub_809D824
sub_809D824: @ 809D824
	mov r12, r0
	adds r0, 0x2A
	movs r3, 0
	strb r1, [r0]
	mov r2, r12
	adds r2, 0x2C
	ldrb r1, [r2]
	movs r0, 0x40
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	mov r0, r12
	adds r0, 0x2B
	strb r3, [r0]
	bx lr
	thumb_func_end sub_809D824

	thumb_func_start sub_809D844
sub_809D844: @ 809D844
	push {lr}
	bl RunTasks
	bl AnimateSprites
	bl BuildOamBuffer
	bl UpdatePaletteFade
	pop {r0}
	bx r0
	thumb_func_end sub_809D844

	thumb_func_start sub_809D85C
sub_809D85C: @ 809D85C
	push {lr}
	ldr r1, _0809D8A0
	ldr r0, _0809D8A4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0809D8A8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0809D8AC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0809D8B0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0809D8B4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _0809D8B8
	ldrh r0, [r0]
	strh r0, [r1]
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	pop {r0}
	bx r0
	.align 2, 0
_0809D8A0: .4byte REG_BG1HOFS
_0809D8A4: .4byte gUnknown_030042C0
_0809D8A8: .4byte gUnknown_030041B4
_0809D8AC: .4byte gUnknown_03004288
_0809D8B0: .4byte gUnknown_03004280
_0809D8B4: .4byte gUnknown_030041B0
_0809D8B8: .4byte gUnknown_030041B8
	thumb_func_end sub_809D85C

	thumb_func_start sub_809D8BC
sub_809D8BC: @ 809D8BC
	push {r4-r7,lr}
	ldr r4, [sp, 0x14]
	lsls r4, 24
	lsrs r7, r4, 24
	ldr r6, _0809D904
	ldrb r4, [r6, 0x8]
	movs r5, 0x80
	orrs r4, r5
	strb r4, [r6, 0x8]
	ldr r5, _0809D908
	str r0, [r5]
	movs r4, 0
	strb r7, [r5, 0x8]
	strb r1, [r5, 0x9]
	strb r2, [r5, 0xA]
	str r3, [r5, 0x4]
	adds r0, r5, 0
	adds r0, 0x74
	strb r4, [r0]
	adds r1, r5, 0
	adds r1, 0x79
	movs r0, 0x4
	strb r0, [r1]
	adds r0, r5, 0
	adds r0, 0x7C
	movs r1, 0
	strh r4, [r0]
	adds r0, 0x4
	strb r1, [r0]
	subs r0, 0x5
	strb r1, [r0]
	cmp r7, 0x4
	bls _0809D90C
	movs r0, 0x1
	strb r0, [r5, 0xE]
	b _0809D90E
	.align 2, 0
_0809D904: .4byte gPaletteFade
_0809D908: .4byte 0x02018000
_0809D90C:
	strb r1, [r5, 0xE]
_0809D90E:
	cmp r7, 0x6
	bhi _0809D9D6
	lsls r0, r7, 2
	ldr r1, _0809D91C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809D91C: .4byte _0809D920
	.align 2, 0
_0809D920:
	.4byte _0809D93C
	.4byte _0809D9BC
	.4byte _0809D992
	.4byte _0809D9D6
	.4byte _0809D966
	.4byte _0809D93C
	.4byte _0809D9BC
_0809D93C:
	adds r0, r5, 0
	adds r0, 0x75
	movs r1, 0
	strb r1, [r0]
	adds r2, r5, 0
	adds r2, 0x76
	movs r0, 0x3
	strb r0, [r2]
	adds r0, r5, 0
	adds r0, 0x77
	strb r1, [r0]
	adds r0, 0x1
	strb r1, [r0]
	adds r1, r5, 0
	adds r1, 0x7E
	movs r0, 0x1
	strb r0, [r1]
	adds r1, 0x1
	movs r0, 0x7
	strb r0, [r1]
	b _0809D9D6
_0809D966:
	adds r0, r5, 0
	adds r0, 0x75
	movs r1, 0
	strb r1, [r0]
	adds r2, r5, 0
	adds r2, 0x76
	movs r0, 0x3
	strb r0, [r2]
	adds r0, r5, 0
	adds r0, 0x77
	strb r1, [r0]
	adds r0, 0x1
	strb r1, [r0]
	adds r0, 0x6
	movs r1, 0x1
	strb r1, [r0]
	adds r2, 0x9
	movs r0, 0x7
	strb r0, [r2]
	adds r0, r5, 0
	adds r0, 0x7B
	b _0809D9D4
_0809D992:
	adds r1, r5, 0
	adds r1, 0x75
	movs r3, 0
	movs r0, 0x2
	strb r0, [r1]
	adds r0, r5, 0
	adds r0, 0x76
	movs r2, 0x3
	strb r2, [r0]
	adds r0, 0x1
	movs r1, 0x1
	strb r1, [r0]
	adds r0, 0x1
	strb r1, [r0]
	adds r0, 0x6
	strb r2, [r0]
	adds r0, 0x1
	strb r3, [r0]
	subs r0, 0x6
	strb r3, [r0]
	b _0809D9D6
_0809D9BC:
	adds r1, r5, 0
	adds r1, 0x75
	movs r0, 0x2
	strb r0, [r1]
	adds r1, 0x1
	movs r0, 0x3
	strb r0, [r1]
	adds r0, r5, 0
	adds r0, 0x77
	movs r1, 0x1
	strb r1, [r0]
	adds r0, 0x1
_0809D9D4:
	strb r1, [r0]
_0809D9D6:
	adds r0, r5, 0
	adds r0, 0x75
	ldrb r0, [r0]
	strb r0, [r5, 0xB]
	ldr r0, _0809D9EC
	bl SetMainCallback2
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D9EC: .4byte sub_809DE44
	thumb_func_end sub_809D8BC

	thumb_func_start sub_809D9F0
sub_809D9F0: @ 809D9F0
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r5, [sp, 0x10]
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r5, 16
	lsrs r5, 16
	movs r4, 0x2
	str r4, [sp]
	bl sub_809D8BC
	ldr r0, _0809DA18
	adds r0, 0x7C
	strh r5, [r0]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809DA18: .4byte 0x02018000
	thumb_func_end sub_809D9F0

	thumb_func_start sub_809DA1C
sub_809DA1C: @ 809DA1C
	push {lr}
	ldr r0, _0809DA30
	ldrb r0, [r0, 0x8]
	cmp r0, 0x6
	bhi _0809DA78
	lsls r0, 2
	ldr r1, _0809DA34
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DA30: .4byte 0x02018000
_0809DA34: .4byte _0809DA38
	.align 2, 0
_0809DA38:
	.4byte _0809DA54
	.4byte _0809DA6C
	.4byte _0809DA64
	.4byte _0809DA64
	.4byte _0809DA5C
	.4byte _0809DA54
	.4byte _0809DA6C
_0809DA54:
	ldr r0, _0809DA58
	b _0809DA6E
	.align 2, 0
_0809DA58: .4byte sub_809E19C
_0809DA5C:
	ldr r0, _0809DA60
	b _0809DA6E
	.align 2, 0
_0809DA60: .4byte sub_809E19C
_0809DA64:
	ldr r0, _0809DA68
	b _0809DA6E
	.align 2, 0
_0809DA68: .4byte sub_809EB40
_0809DA6C:
	ldr r0, _0809DA7C
_0809DA6E:
	movs r1, 0
	bl CreateTask
	ldr r1, _0809DA80
	strb r0, [r1, 0xF]
_0809DA78:
	pop {r0}
	bx r0
	.align 2, 0
_0809DA7C: .4byte sub_809E3FC
_0809DA80: .4byte 0x02018000
	thumb_func_end sub_809DA1C

	thumb_func_start sub_809DA84
sub_809DA84: @ 809DA84
	push {r4-r7,lr}
	sub sp, 0x8
	ldr r1, _0809DAA4
	ldr r2, _0809DAA8
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r12, r1
	cmp r0, 0x16
	bls _0809DA98
	b _0809DE00
_0809DA98:
	lsls r0, 2
	ldr r1, _0809DAAC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DAA4: .4byte gMain
_0809DAA8: .4byte 0x0000043c
_0809DAAC: .4byte _0809DAB0
	.align 2, 0
_0809DAB0:
	.4byte _0809DB0C
	.4byte _0809DB18
	.4byte _0809DB2C
	.4byte _0809DB32
	.4byte _0809DB80
	.4byte _0809DB94
	.4byte _0809DBA0
	.4byte _0809DBBC
	.4byte _0809DBC8
	.4byte _0809DBDC
	.4byte _0809DC2C
	.4byte _0809DC48
	.4byte _0809DC5C
	.4byte _0809DC90
	.4byte _0809DCB0
	.4byte _0809DCC4
	.4byte _0809DCF8
	.4byte _0809DD02
	.4byte _0809DD30
	.4byte _0809DD3C
	.4byte _0809DD68
	.4byte _0809DD98
	.4byte _0809DDE0
_0809DB0C:
	movs r0, 0
	bl SetVBlankCallback
	bl ResetSpriteData
	b _0809DDE8
_0809DB18:
	bl remove_some_task
	ldr r1, _0809DB24
	ldr r2, _0809DB28
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DB24: .4byte gMain
_0809DB28: .4byte 0x0000043c
_0809DB2C:
	bl FreeAllSpritePalettes
	b _0809DDE8
_0809DB32:
	movs r2, 0xC0
	lsls r2, 19
	movs r3, 0x80
	lsls r3, 9
	movs r5, 0
	ldr r1, _0809DB74
	movs r4, 0x80
	lsls r4, 5
	ldr r6, _0809DB78
	movs r7, 0x85
	lsls r7, 24
_0809DB48:
	str r5, [sp, 0x4]
	add r0, sp, 0x4
	str r0, [r1]
	str r2, [r1, 0x4]
	str r6, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r2, r4
	subs r3, r4
	cmp r3, r4
	bhi _0809DB48
	str r5, [sp, 0x4]
	add r0, sp, 0x4
	str r0, [r1]
	str r2, [r1, 0x4]
	lsrs r0, r3, 2
	orrs r0, r7
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	ldr r1, _0809DB7C
	add r1, r12
	b _0809DDEE
	.align 2, 0
_0809DB74: .4byte 0x040000d4
_0809DB78: .4byte 0x85000400
_0809DB7C: .4byte 0x0000043c
_0809DB80:
	bl sub_809DE64
	ldr r1, _0809DB8C
	ldr r2, _0809DB90
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DB8C: .4byte gMain
_0809DB90: .4byte 0x0000043c
_0809DB94:
	ldr r0, _0809DB9C
	bl SetUpWindowConfig
	b _0809DDE8
	.align 2, 0
_0809DB9C: .4byte gWindowConfig_81E6E6C
_0809DBA0:
	ldr r0, _0809DBB0
	bl MultistepInitMenuWindowBegin
	ldr r1, _0809DBB4
	ldr r2, _0809DBB8
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DBB0: .4byte gWindowConfig_81E6E6C
_0809DBB4: .4byte gMain
_0809DBB8: .4byte 0x0000043c
_0809DBBC:
	bl MultistepInitMenuWindowContinue
	cmp r0, 0
	bne _0809DBC6
	b _0809DE38
_0809DBC6:
	b _0809DDE8
_0809DBC8:
	bl sub_809DA1C
	ldr r1, _0809DBD4
	ldr r2, _0809DBD8
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DBD4: .4byte gMain
_0809DBD8: .4byte 0x0000043c
_0809DBDC:
	ldr r1, _0809DC08
	ldr r2, _0809DC0C
	ldr r0, _0809DC10
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _0809DC14
	str r1, [r0, 0x8]
	ldr r1, [r0, 0x8]
	ldr r1, _0809DC18
	ldr r2, _0809DC1C
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r1, _0809DC20
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	ldr r0, _0809DC24
	adds r0, 0x74
	movs r1, 0
	strb r1, [r0]
	ldr r1, _0809DC28
	add r1, r12
	b _0809DDEE
	.align 2, 0
_0809DC08: .4byte gSummaryScreenTextTiles
_0809DC0C: .4byte 0x0600d000
_0809DC10: .4byte 0x040000d4
_0809DC14: .4byte 0x800000a0
_0809DC18: .4byte gSummaryScreenButtonTiles
_0809DC1C: .4byte 0x0600d140
_0809DC20: .4byte 0x80000080
_0809DC24: .4byte 0x02018000
_0809DC28: .4byte 0x0000043c
_0809DC2C:
	bl sub_809DF00
	lsls r0, 24
	cmp r0, 0
	bne _0809DC38
	b _0809DE38
_0809DC38:
	ldr r0, _0809DC44
	adds r0, 0x74
	movs r1, 0
	strb r1, [r0]
	b _0809DDE8
	.align 2, 0
_0809DC44: .4byte 0x02018000
_0809DC48:
	bl sub_80A18C4
	ldr r1, _0809DC54
	ldr r2, _0809DC58
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DC54: .4byte gMain
_0809DC58: .4byte 0x0000043c
_0809DC5C:
	ldr r4, _0809DC78
	adds r0, r4, 0
	bl sub_809F678
	adds r0, r4, 0
	bl sub_80A1CD8
	lsls r0, 24
	cmp r0, 0
	bne _0809DC7C
	movs r0, 0
	bl sub_80A12D0
	b _0809DC82
	.align 2, 0
_0809DC78: .4byte 0x02018010
_0809DC7C:
	movs r0, 0xA
	bl sub_80A12D0
_0809DC82:
	ldr r0, _0809DC8C
	bl sub_80A0EA4
	b _0809DDE8
	.align 2, 0
_0809DC8C: .4byte 0x02018010
_0809DC90:
	bl sub_80A1950
	ldr r0, _0809DCA4
	bl sub_80A1D84
	ldr r1, _0809DCA8
	ldr r2, _0809DCAC
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DCA4: .4byte 0x02018010
_0809DCA8: .4byte gMain
_0809DCAC: .4byte 0x0000043c
_0809DCB0:
	ldr r4, _0809DCC0
	adds r0, r4, 0
	bl sub_80A1DE8
	adds r4, 0x64
	movs r0, 0
	strb r0, [r4]
	b _0809DDE8
	.align 2, 0
_0809DCC0: .4byte 0x02018010
_0809DCC4:
	ldr r4, _0809DCEC
	adds r5, r4, 0
	adds r5, 0x64
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_809F6B4
	subs r4, 0x10
	strb r0, [r4, 0xC]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _0809DCE0
	b _0809DE38
_0809DCE0:
	movs r0, 0
	strb r0, [r5]
	ldr r1, _0809DCF0
	ldr r2, _0809DCF4
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DCEC: .4byte 0x02018010
_0809DCF0: .4byte gMain
_0809DCF4: .4byte 0x0000043c
_0809DCF8:
	bl sub_809E044
	bl sub_80A0EE8
	b _0809DDE8
_0809DD02:
	ldr r1, _0809DD20
	ldrb r0, [r1, 0xB]
	cmp r0, 0x1
	bhi _0809DD18
	ldr r0, _0809DD24
	ldrb r1, [r1, 0xB]
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl _call_via_r0
_0809DD18:
	ldr r1, _0809DD28
	ldr r2, _0809DD2C
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DD20: .4byte 0x02018000
_0809DD24: .4byte gUnknown_083C1580
_0809DD28: .4byte gMain
_0809DD2C: .4byte 0x0000043c
_0809DD30:
	ldr r0, _0809DD38
	bl sub_809FAC8
	b _0809DDE8
	.align 2, 0
_0809DD38: .4byte 0x02018010
_0809DD3C:
	ldr r2, _0809DD58
	ldr r0, _0809DD5C
	ldrb r1, [r0, 0xB]
	lsls r1, 2
	adds r1, r2
	adds r0, 0x10
	ldr r1, [r1]
	bl _call_via_r1
	ldr r1, _0809DD60
	ldr r2, _0809DD64
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DD58: .4byte gUnknown_083C1598
_0809DD5C: .4byte 0x02018000
_0809DD60: .4byte gMain
_0809DD64: .4byte 0x0000043c
_0809DD68:
	ldr r0, _0809DD84
	movs r1, 0x2D
	bl GetMonData
	adds r1, r0, 0
	cmp r1, 0
	beq _0809DD8C
	ldr r1, _0809DD88
	movs r2, 0x80
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	b _0809DDE8
	.align 2, 0
_0809DD84: .4byte 0x02018010
_0809DD88: .4byte gUnknown_030041B0
_0809DD8C:
	ldr r0, _0809DD94
	strh r1, [r0]
	b _0809DDE8
	.align 2, 0
_0809DD94: .4byte gUnknown_030041B0
_0809DD98:
	bl sub_809EBC4
	ldr r0, _0809DDB8
	adds r0, 0x79
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809DDBC
	movs r0, 0
	movs r1, 0
	bl sub_80A1488
	movs r0, 0
	movs r1, 0
	bl sub_80A1654
	b _0809DDCC
	.align 2, 0
_0809DDB8: .4byte 0x02018000
_0809DDBC:
	movs r0, 0xA
	movs r1, 0
	bl sub_80A1488
	movs r0, 0xA
	movs r1, 0
	bl sub_80A1654
_0809DDCC:
	bl sub_80A0DD0
	ldr r1, _0809DDD8
	ldr r2, _0809DDDC
	adds r1, r2
	b _0809DDEE
	.align 2, 0
_0809DDD8: .4byte gMain
_0809DDDC: .4byte 0x0000043c
_0809DDE0:
	bl sub_8055870
	cmp r0, 0x1
	beq _0809DE38
_0809DDE8:
	ldr r1, _0809DDF8
	ldr r0, _0809DDFC
	adds r1, r0
_0809DDEE:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0809DE38
	.align 2, 0
_0809DDF8: .4byte gMain
_0809DDFC: .4byte 0x0000043c
_0809DE00:
	ldr r0, _0809DE2C
	bl SetVBlankCallback
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0xFF
	movs r1, 0
	movs r2, 0x10
	movs r3, 0
	bl BeginHardwarePaletteFade
	ldr r0, _0809DE30
	bl SetMainCallback2
	ldr r2, _0809DE34
	ldrb r1, [r2, 0x8]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2, 0x8]
	movs r0, 0x1
	b _0809DE3A
	.align 2, 0
_0809DE2C: .4byte sub_809D85C
_0809DE30: .4byte sub_809D844
_0809DE34: .4byte gPaletteFade
_0809DE38:
	movs r0, 0
_0809DE3A:
	add sp, 0x8
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809DA84

	thumb_func_start sub_809DE44
sub_809DE44: @ 809DE44
	push {lr}
_0809DE46:
	bl sub_809DA84
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0809DE5E
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809DE46
_0809DE5E:
	pop {r0}
	bx r0
	thumb_func_end sub_809DE44

	thumb_func_start sub_809DE64
sub_809DE64: @ 809DE64
	ldr r1, _0809DED0
	ldr r2, _0809DED4
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0809DED8
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0809DEDC
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x2
	ldr r2, _0809DEE0
	adds r0, r2, 0
	strh r0, [r1]
	ldr r1, _0809DEE4
	movs r0, 0
	strh r0, [r1]
	ldr r1, _0809DEE8
	strh r0, [r1]
	ldr r1, _0809DEEC
	strh r0, [r1]
	ldr r1, _0809DEF0
	strh r0, [r1]
	ldr r1, _0809DEF4
	strh r0, [r1]
	ldr r1, _0809DEF8
	strh r0, [r1]
	ldr r1, _0809DEFC
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x2
	strh r0, [r1]
	adds r1, 0x32
	strh r0, [r1]
	subs r1, 0x50
	movs r2, 0xFA
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0809DED0: .4byte REG_BG0CNT
_0809DED4: .4byte 0x00001e08
_0809DED8: .4byte 0x00004801
_0809DEDC: .4byte 0x00004a02
_0809DEE0: .4byte 0x00005c03
_0809DEE4: .4byte gUnknown_030042C0
_0809DEE8: .4byte gUnknown_030041B4
_0809DEEC: .4byte gUnknown_03004288
_0809DEF0: .4byte gUnknown_03004280
_0809DEF4: .4byte gUnknown_030041B0
_0809DEF8: .4byte gUnknown_030041B8
_0809DEFC: .4byte REG_BG0HOFS
	thumb_func_end sub_809DE64

	thumb_func_start sub_809DF00
sub_809DF00: @ 809DF00
	push {lr}
	ldr r0, _0809DF18
	adds r0, 0x74
	ldrb r0, [r0]
	cmp r0, 0xC
	bls _0809DF0E
	b _0809E030
_0809DF0E:
	lsls r0, 2
	ldr r1, _0809DF1C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DF18: .4byte 0x02018000
_0809DF1C: .4byte _0809DF20
	.align 2, 0
_0809DF20:
	.4byte _0809DF54
	.4byte _0809DF64
	.4byte _0809DF74
	.4byte _0809DF88
	.4byte _0809DF9C
	.4byte _0809DFAC
	.4byte _0809DFC4
	.4byte _0809DFD4
	.4byte _0809DFE0
	.4byte _0809DFEC
	.4byte _0809DFF8
	.4byte _0809E004
	.4byte _0809E010
_0809DF54:
	ldr r0, _0809DF60
	movs r1, 0xC0
	lsls r1, 19
	bl LZDecompressVram
	b _0809E030
	.align 2, 0
_0809DF60: .4byte gStatusScreen_Gfx
_0809DF64:
	ldr r0, _0809DF6C
	ldr r1, _0809DF70
	b _0809DFB0
	.align 2, 0
_0809DF6C: .4byte gUnknown_08E73508
_0809DF70: .4byte 0x0600e000
_0809DF74:
	ldr r0, _0809DF80
	ldr r1, _0809DF84
	bl LZDecompressVram
	b _0809E030
	.align 2, 0
_0809DF80: .4byte gUnknown_08E74E88
_0809DF84: .4byte 0x0600e800
_0809DF88:
	ldr r0, _0809DF94
	ldr r1, _0809DF98
	bl LZDecompressVram
	b _0809E030
	.align 2, 0
_0809DF94: .4byte gStatusScreen_Tilemap
_0809DF98: .4byte 0x06004800
_0809DF9C:
	ldr r0, _0809DFA4
	ldr r1, _0809DFA8
	b _0809DFB0
	.align 2, 0
_0809DFA4: .4byte gUnknown_08E73E88
_0809DFA8: .4byte 0x06005800
_0809DFAC:
	ldr r0, _0809DFBC
	ldr r1, _0809DFC0
_0809DFB0:
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	b _0809E030
	.align 2, 0
_0809DFBC: .4byte gUnknown_08E74688
_0809DFC0: .4byte 0x06006800
_0809DFC4:
	ldr r0, _0809DFD0
	movs r1, 0
	movs r2, 0xA0
	bl LoadCompressedPalette
	b _0809E030
	.align 2, 0
_0809DFD0: .4byte gStatusScreen_Pal
_0809DFD4:
	ldr r0, _0809DFDC
	bl LoadCompressedObjectPic
	b _0809E030
	.align 2, 0
_0809DFDC: .4byte gUnknown_083C11B8
_0809DFE0:
	ldr r0, _0809DFE8
	bl LoadCompressedObjectPic
	b _0809E030
	.align 2, 0
_0809DFE8: .4byte gUnknown_083C1270
_0809DFEC:
	ldr r0, _0809DFF4
	bl LoadCompressedObjectPic
	b _0809E030
	.align 2, 0
_0809DFF4: .4byte gUnknown_083C12F4
_0809DFF8:
	ldr r0, _0809E000
	bl LoadCompressedObjectPalette
	b _0809E030
	.align 2, 0
_0809E000: .4byte gUnknown_083C12FC
_0809E004:
	ldr r0, _0809E00C
	bl LoadCompressedObjectPalette
	b _0809E030
	.align 2, 0
_0809E00C: .4byte gUnknown_083C1278
_0809E010:
	ldr r0, _0809E028
	movs r1, 0xE8
	lsls r1, 1
	movs r2, 0x60
	bl LoadCompressedPalette
	ldr r0, _0809E02C
	adds r0, 0x74
	movs r1, 0
	strb r1, [r0]
	movs r0, 0x1
	b _0809E03C
	.align 2, 0
_0809E028: .4byte gMoveTypes_Pal
_0809E02C: .4byte 0x02018000
_0809E030:
	ldr r1, _0809E040
	adds r1, 0x74
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	movs r0, 0
_0809E03C:
	pop {r1}
	bx r1
	.align 2, 0
_0809E040: .4byte 0x02018000
	thumb_func_end sub_809DF00

	thumb_func_start sub_809E044
sub_809E044: @ 809E044
	push {r4,r5,lr}
	ldr r4, _0809E0F4
	adds r0, r4, 0
	movs r1, 0x81
	movs r2, 0x2
	bl LoadPalette
	adds r5, r4, 0x2
	adds r0, r5, 0
	movs r1, 0x88
	movs r2, 0x2
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0x8F
	movs r2, 0x2
	bl LoadPalette
	adds r0, r5, 0
	movs r1, 0x89
	movs r2, 0x2
	bl LoadPalette
	subs r5, 0x12
	adds r0, r5, 0
	movs r1, 0xD1
	movs r2, 0x4
	bl LoadPalette
	adds r0, r4, 0
	subs r0, 0x8
	movs r1, 0xD3
	movs r2, 0x4
	bl LoadPalette
	adds r0, r4, 0
	movs r1, 0xD5
	movs r2, 0x4
	bl LoadPalette
	adds r0, r5, 0
	movs r1, 0xD7
	movs r2, 0x4
	bl LoadPalette
	adds r0, r4, 0
	subs r0, 0x14
	movs r1, 0xD9
	movs r2, 0x4
	bl LoadPalette
	adds r0, r4, 0
	subs r0, 0xC
	movs r1, 0xDB
	movs r2, 0x4
	bl LoadPalette
	adds r0, r4, 0
	subs r0, 0x18
	movs r1, 0xDD
	movs r2, 0x2
	bl LoadPalette
	subs r5, 0x6
	adds r0, r5, 0
	movs r1, 0xDE
	movs r2, 0x2
	bl LoadPalette
	subs r4, 0x1A
	adds r0, r4, 0
	movs r1, 0xDF
	movs r2, 0x2
	bl LoadPalette
	ldr r0, _0809E0F8
	movs r1, 0xF0
	movs r2, 0x20
	bl LoadPalette
	adds r0, r5, 0
	movs r1, 0xF9
	movs r2, 0x2
	bl LoadPalette
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E0F4: .4byte gUnknownPalette_81E6692+0x1C
_0809E0F8: .4byte gFontDefaultPalette
	thumb_func_end sub_809E044

	thumb_func_start sub_809E0FC
sub_809E0FC: @ 809E0FC
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _0809E134
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809E138
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E134: .4byte gTasks
_0809E138: .4byte sub_809E13C
	thumb_func_end sub_809E0FC

	thumb_func_start sub_809E13C
sub_809E13C: @ 809E13C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	bl sub_8055870
	cmp r0, 0x1
	beq _0809E182
	ldr r0, _0809E188
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _0809E182
	ldr r1, _0809E18C
	ldr r4, _0809E190
	ldrb r0, [r4, 0x9]
	strb r0, [r1]
	bl ResetSpriteData
	bl FreeAllSpritePalettes
	bl StopCryAndClearCrySongs
	ldr r0, _0809E194
	ldr r1, _0809E198
	movs r2, 0x80
	lsls r2, 1
	bl m4aMPlayVolumeControl
	ldr r0, [r4, 0x4]
	bl SetMainCallback2
	adds r0, r5, 0
	bl DestroyTask
_0809E182:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E188: .4byte gPaletteFade
_0809E18C: .4byte gUnknown_020384F0
_0809E190: .4byte 0x02018000
_0809E194: .4byte gMPlay_BGM
_0809E198: .4byte 0x0000ffff
	thumb_func_end sub_809E13C

	thumb_func_start sub_809E19C
sub_809E19C: @ 809E19C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _0809E1C8
	ldrb r1, [r0, 0x7]
	movs r2, 0x80
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _0809E25A
	ldr r5, _0809E1CC
	ldrh r1, [r5, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809E1D0
	movs r1, 0x1
	negs r1, r1
	adds r0, r4, 0
	bl sub_809F1B8
	b _0809E25A
	.align 2, 0
_0809E1C8: .4byte gPaletteFade
_0809E1CC: .4byte gMain
_0809E1D0:
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0809E1E2
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_809F1B8
	b _0809E25A
_0809E1E2:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0809E1F6
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809E202
_0809E1F6:
	movs r1, 0x1
	negs r1, r1
	adds r0, r4, 0
	bl sub_809F134
	b _0809E25A
_0809E202:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0809E218
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0809E222
_0809E218:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_809F134
	b _0809E25A
_0809E222:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809E24C
	ldr r5, _0809E248
	ldrb r0, [r5, 0xB]
	cmp r0, 0x1
	bls _0809E23A
	adds r0, r4, 0
	bl sub_809EA50
_0809E23A:
	ldrb r0, [r5, 0xB]
	cmp r0, 0
	bne _0809E25A
	adds r0, r4, 0
	bl sub_809E0FC
	b _0809E25A
	.align 2, 0
_0809E248: .4byte 0x02018000
_0809E24C:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809E25A
	adds r0, r4, 0
	bl sub_809E0FC
_0809E25A:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_809E19C

	thumb_func_start sub_809E260
sub_809E260: @ 809E260
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _0809E29C
	ldrb r1, [r0, 0x7]
	movs r2, 0x80
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0809E276
	b _0809E3EE
_0809E276:
	ldr r5, _0809E2A0
	ldrh r1, [r5, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809E2AC
	ldr r1, _0809E2A4
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x4
	strh r1, [r0, 0x8]
	subs r1, 0x5
	ldr r2, _0809E2A8
	adds r0, r4, 0
	bl sub_809E8F0
	b _0809E3EE
	.align 2, 0
_0809E29C: .4byte gPaletteFade
_0809E2A0: .4byte gMain
_0809E2A4: .4byte gTasks
_0809E2A8: .4byte 0x02018079
_0809E2AC:
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0809E2D8
	ldr r1, _0809E2D0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0x4
	strh r1, [r0, 0x8]
	ldr r2, _0809E2D4
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_809E8F0
	b _0809E3EE
	.align 2, 0
_0809E2D0: .4byte gTasks
_0809E2D4: .4byte 0x02018079
_0809E2D8:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0809E2EC
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809E324
_0809E2EC:
	ldr r1, _0809E320
	ldrb r0, [r1, 0xB]
	cmp r0, 0x3
	bne _0809E314
	adds r0, r1, 0
	adds r0, 0x79
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0809E308
	adds r0, r1, 0
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	beq _0809E314
_0809E308:
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x12
	bl MenuZeroFillWindowRect
_0809E314:
	movs r1, 0x1
	negs r1, r1
	adds r0, r4, 0
	bl sub_809F134
	b _0809E3EE
	.align 2, 0
_0809E320: .4byte 0x02018000
_0809E324:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0809E33A
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0809E37C
_0809E33A:
	ldr r1, _0809E378
	adds r2, r1, 0
	adds r2, 0x76
	ldrb r0, [r1, 0xB]
	ldrb r2, [r2]
	cmp r0, r2
	beq _0809E3EE
	cmp r0, 0x2
	bne _0809E36C
	adds r0, r1, 0
	adds r0, 0x79
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0809E360
	adds r0, r1, 0
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	beq _0809E36C
_0809E360:
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x12
	bl MenuZeroFillWindowRect
_0809E36C:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_809F134
	b _0809E3EE
	.align 2, 0
_0809E378: .4byte 0x02018000
_0809E37C:
	ldrh r1, [r5, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809E3D4
	adds r0, r4, 0
	bl sub_809F7D0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0809E3A0
	ldr r0, _0809E3BC
	adds r5, r0, 0
	adds r5, 0x79
	ldrb r0, [r5]
	cmp r0, 0x4
	bne _0809E3C4
_0809E3A0:
	ldr r0, _0809E3BC
	adds r1, r0, 0
	adds r1, 0x79
	ldrb r1, [r1]
	adds r0, 0x7A
	strb r1, [r0]
	ldr r1, _0809E3C0
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r4, 0
	bl sub_809E0FC
	b _0809E3EE
	.align 2, 0
_0809E3BC: .4byte 0x02018000
_0809E3C0: .4byte gUnknown_0202E8CE
_0809E3C4:
	movs r0, 0x20
	bl PlaySE
	ldrb r1, [r5]
	adds r0, r4, 0
	bl sub_809F9D0
	b _0809E3EE
_0809E3D4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809E3EE
	ldr r0, _0809E3F4
	adds r0, 0x7A
	movs r1, 0x4
	strb r1, [r0]
	ldr r0, _0809E3F8
	strh r1, [r0]
	adds r0, r4, 0
	bl sub_809E0FC
_0809E3EE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E3F4: .4byte 0x02018000
_0809E3F8: .4byte gUnknown_0202E8CE
	thumb_func_end sub_809E260

	thumb_func_start sub_809E3FC
sub_809E3FC: @ 809E3FC
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	adds r7, r5, 0
	ldr r0, _0809E438
	ldrb r1, [r0, 0x7]
	movs r2, 0x80
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	bne _0809E502
	ldr r0, _0809E43C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809E448
	ldr r1, _0809E440
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x4
	strh r1, [r0, 0x8]
	subs r1, 0x5
	ldr r2, _0809E444
	adds r0, r5, 0
	bl sub_809E8F0
	b _0809E502
	.align 2, 0
_0809E438: .4byte gPaletteFade
_0809E43C: .4byte gMain
_0809E440: .4byte gTasks
_0809E444: .4byte 0x02018079
_0809E448:
	adds r0, r2, 0
	ands r0, r1
	cmp r0, 0
	beq _0809E474
	ldr r1, _0809E46C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x4
	strh r1, [r0, 0x8]
	ldr r2, _0809E470
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_809E8F0
	b _0809E502
	.align 2, 0
_0809E46C: .4byte gTasks
_0809E470: .4byte 0x02018079
_0809E474:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809E4EE
	ldr r4, _0809E4A8
	adds r6, r4, 0
	adds r6, 0x79
	ldrb r0, [r6]
	cmp r0, 0x4
	beq _0809E4E0
	adds r0, r4, 0
	adds r0, 0x7B
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809E4E0
	adds r0, r4, 0
	adds r0, 0x10
	bl sub_809E508
	lsls r0, 24
	cmp r0, 0
	bne _0809E4AC
	movs r0, 0x20
	bl PlaySE
	b _0809E502
	.align 2, 0
_0809E4A8: .4byte 0x02018000
_0809E4AC:
	movs r0, 0x5
	bl PlaySE
	ldrb r1, [r6]
	adds r0, r4, 0
	adds r0, 0x7A
	strb r1, [r0]
	movs r0, 0x1
	bl sub_80A1B40
	movs r0, 0x13
	bl sub_80A1A30
	ldr r1, _0809E4D8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809E4DC
	str r1, [r0]
	b _0809E502
	.align 2, 0
_0809E4D8: .4byte gTasks
_0809E4DC: .4byte sub_809E534
_0809E4E0:
	movs r0, 0x5
	bl PlaySE
	adds r0, r7, 0
	bl sub_809EAC8
	b _0809E502
_0809E4EE:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809E502
	movs r0, 0x5
	bl PlaySE
	adds r0, r7, 0
	bl sub_809EAC8
_0809E502:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_809E3FC

	thumb_func_start sub_809E508
sub_809E508: @ 809E508
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r4, 0x1
_0809E50E:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_809F760
	lsls r0, 16
	cmp r0, 0
	beq _0809E520
	movs r0, 0x1
	b _0809E52C
_0809E520:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _0809E50E
	movs r0, 0
_0809E52C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809E508

	thumb_func_start sub_809E534
sub_809E534: @ 809E534
	push {lr}
	lsls r0, 24
	lsrs r3, r0, 24
	adds r2, r3, 0
	ldr r0, _0809E564
	ldrh r1, [r0, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809E570
	ldr r1, _0809E568
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	adds r0, r1
	movs r1, 0x3
	strh r1, [r0, 0x8]
	subs r1, 0x4
	ldr r2, _0809E56C
	adds r0, r3, 0
	bl sub_809E8F0
	b _0809E5C0
	.align 2, 0
_0809E564: .4byte gMain
_0809E568: .4byte gTasks
_0809E56C: .4byte 0x0201807a
_0809E570:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0809E59C
	ldr r1, _0809E594
	lsls r0, r3, 2
	adds r0, r3
	lsls r0, 3
	adds r0, r1
	movs r1, 0x3
	strh r1, [r0, 0x8]
	ldr r2, _0809E598
	adds r0, r3, 0
	movs r1, 0x1
	bl sub_809E8F0
	b _0809E5C0
	.align 2, 0
_0809E594: .4byte gTasks
_0809E598: .4byte 0x0201807a
_0809E59C:
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _0809E5AE
	adds r0, r3, 0
	movs r1, 0x1
	bl sub_809E83C
	b _0809E5C0
_0809E5AE:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809E5C0
	movs r1, 0x1
	negs r1, r1
	adds r0, r2, 0
	bl sub_809E83C
_0809E5C0:
	pop {r0}
	bx r0
	thumb_func_end sub_809E534

	thumb_func_start sub_809E5C4
sub_809E5C4: @ 809E5C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r1, _0809E6D0
	ldr r5, [r1]
	ldrb r2, [r1, 0x9]
	movs r0, 0x64
	muls r0, r2
	adds r5, r0
	adds r0, r1, 0
	adds r0, 0x79
	ldrb r0, [r0]
	mov r8, r0
	adds r1, 0x7A
	ldrb r6, [r1]
	adds r0, 0xD
	str r0, [sp, 0x8]
	adds r0, r5, 0
	ldr r1, [sp, 0x8]
	bl GetMonData
	mov r1, sp
	adds r1, 0x2
	str r1, [sp, 0x14]
	strh r0, [r1]
	adds r2, r6, 0
	adds r2, 0xD
	str r2, [sp, 0xC]
	adds r0, r5, 0
	adds r1, r2, 0
	bl GetMonData
	mov r1, sp
	strh r0, [r1]
	mov r3, r8
	adds r3, 0x11
	str r3, [sp, 0x10]
	adds r0, r5, 0
	adds r1, r3, 0
	bl GetMonData
	mov r7, sp
	adds r7, 0x5
	str r7, [sp, 0x18]
	strb r0, [r7]
	adds r0, r6, 0
	adds r0, 0x11
	str r0, [sp, 0x1C]
	adds r0, r5, 0
	ldr r1, [sp, 0x1C]
	bl GetMonData
	add r1, sp, 0x4
	mov r10, r1
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0x15
	bl GetMonData
	mov r4, sp
	adds r4, 0x6
	strb r0, [r4]
	ldr r1, _0809E6D4
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	mov r9, r0
	ldrb r0, [r4]
	adds r2, r0, 0
	mov r3, r9
	ands r2, r3
	mov r7, r8
	lsls r7, 1
	mov r8, r7
	asrs r2, r7
	lsls r2, 24
	lsrs r2, 24
	adds r1, r6, r1
	ldrb r3, [r1]
	adds r1, r0, 0
	ands r1, r3
	lsls r6, 1
	asrs r1, r6
	lsls r1, 24
	lsrs r1, 24
	mov r7, r9
	bics r0, r7
	strb r0, [r4]
	ldrb r0, [r4]
	bics r0, r3
	strb r0, [r4]
	lsls r2, r6
	mov r0, r8
	lsls r1, r0
	adds r2, r1
	ldrb r0, [r4]
	orrs r0, r2
	strb r0, [r4]
	adds r0, r5, 0
	ldr r1, [sp, 0x8]
	mov r2, sp
	bl SetMonData
	adds r0, r5, 0
	ldr r1, [sp, 0xC]
	ldr r2, [sp, 0x14]
	bl SetMonData
	adds r0, r5, 0
	ldr r1, [sp, 0x10]
	mov r2, r10
	bl SetMonData
	adds r0, r5, 0
	ldr r1, [sp, 0x1C]
	ldr r2, [sp, 0x18]
	bl SetMonData
	adds r0, r5, 0
	movs r1, 0x15
	adds r2, r4, 0
	bl SetMonData
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E6D0: .4byte 0x02018000
_0809E6D4: .4byte gUnknown_08208238
	thumb_func_end sub_809E5C4

	thumb_func_start sub_809E6D8
sub_809E6D8: @ 809E6D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x20
	ldr r2, _0809E7E8
	ldr r5, [r2]
	ldrb r1, [r2, 0x9]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 4
	adds r5, r0
	adds r0, r2, 0
	adds r0, 0x79
	ldrb r0, [r0]
	mov r8, r0
	adds r2, 0x7A
	ldrb r6, [r2]
	adds r0, 0xD
	str r0, [sp, 0x8]
	adds r0, r5, 0
	ldr r1, [sp, 0x8]
	bl GetBoxMonData
	mov r1, sp
	adds r1, 0x2
	str r1, [sp, 0x14]
	strh r0, [r1]
	adds r2, r6, 0
	adds r2, 0xD
	str r2, [sp, 0xC]
	adds r0, r5, 0
	adds r1, r2, 0
	bl GetBoxMonData
	mov r1, sp
	strh r0, [r1]
	mov r3, r8
	adds r3, 0x11
	str r3, [sp, 0x10]
	adds r0, r5, 0
	adds r1, r3, 0
	bl GetBoxMonData
	mov r7, sp
	adds r7, 0x5
	str r7, [sp, 0x18]
	strb r0, [r7]
	adds r0, r6, 0
	adds r0, 0x11
	str r0, [sp, 0x1C]
	adds r0, r5, 0
	ldr r1, [sp, 0x1C]
	bl GetBoxMonData
	add r1, sp, 0x4
	mov r10, r1
	strb r0, [r1]
	adds r0, r5, 0
	movs r1, 0x15
	bl GetBoxMonData
	mov r4, sp
	adds r4, 0x6
	strb r0, [r4]
	ldr r1, _0809E7EC
	mov r2, r8
	adds r0, r2, r1
	ldrb r0, [r0]
	mov r9, r0
	ldrb r0, [r4]
	adds r2, r0, 0
	mov r3, r9
	ands r2, r3
	mov r7, r8
	lsls r7, 1
	mov r8, r7
	asrs r2, r7
	lsls r2, 24
	lsrs r2, 24
	adds r1, r6, r1
	ldrb r3, [r1]
	adds r1, r0, 0
	ands r1, r3
	lsls r6, 1
	asrs r1, r6
	lsls r1, 24
	lsrs r1, 24
	mov r7, r9
	bics r0, r7
	strb r0, [r4]
	ldrb r0, [r4]
	bics r0, r3
	strb r0, [r4]
	lsls r2, r6
	mov r0, r8
	lsls r1, r0
	adds r2, r1
	ldrb r0, [r4]
	orrs r0, r2
	strb r0, [r4]
	adds r0, r5, 0
	ldr r1, [sp, 0x8]
	mov r2, sp
	bl SetBoxMonData
	adds r0, r5, 0
	ldr r1, [sp, 0xC]
	ldr r2, [sp, 0x14]
	bl SetBoxMonData
	adds r0, r5, 0
	ldr r1, [sp, 0x10]
	mov r2, r10
	bl SetBoxMonData
	adds r0, r5, 0
	ldr r1, [sp, 0x1C]
	ldr r2, [sp, 0x18]
	bl SetBoxMonData
	adds r0, r5, 0
	movs r1, 0x15
	adds r2, r4, 0
	bl SetBoxMonData
	add sp, 0x20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E7E8: .4byte 0x02018000
_0809E7EC: .4byte gUnknown_08208238
	thumb_func_end sub_809E6D8

	thumb_func_start sub_809E7F0
sub_809E7F0: @ 809E7F0
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_809F5F8
	lsls r0, 24
	cmp r0, 0
	beq _0809E828
	ldr r1, _0809E830
	adds r2, r1, 0
	adds r2, 0x74
	movs r0, 0
	strb r0, [r2]
	adds r0, r1, 0
	adds r0, 0x10
	adds r1, 0x79
	bl sub_80A0428
	ldr r1, _0809E834
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809E838
	str r1, [r0]
	adds r0, r4, 0
	bl BgFrame_FillTileMap
_0809E828:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809E830: .4byte 0x02018000
_0809E834: .4byte gTasks
_0809E838: .4byte sub_809E3FC
	thumb_func_end sub_809E7F0

	thumb_func_start sub_809E83C
sub_809E83C: @ 809E83C
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x13
	bl sub_80A1B1C
	movs r0, 0
	bl sub_80A1B40
	cmp r4, 0x1
	bne _0809E8C0
	ldr r1, _0809E87C
	adds r0, r1, 0
	adds r0, 0x79
	adds r2, r1, 0
	adds r2, 0x7A
	ldrb r0, [r0]
	ldrb r2, [r2]
	cmp r0, r2
	beq _0809E8CA
	ldrb r0, [r1, 0xE]
	cmp r0, 0
	bne _0809E880
	bl sub_809E5C4
	b _0809E884
	.align 2, 0
_0809E87C: .4byte 0x02018000
_0809E880:
	bl sub_809E6D8
_0809E884:
	ldr r4, _0809E8B4
	adds r0, r4, 0
	adds r0, 0x7A
	ldrb r0, [r0]
	adds r1, r4, 0
	adds r1, 0x79
	strb r0, [r1]
	adds r0, r4, 0
	adds r0, 0x10
	bl sub_809F678
	adds r1, r4, 0
	adds r1, 0x74
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, _0809E8B8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809E8BC
	str r1, [r0]
	b _0809E8DE
	.align 2, 0
_0809E8B4: .4byte 0x02018000
_0809E8B8: .4byte gTasks
_0809E8BC: .4byte sub_809E7F0
_0809E8C0:
	ldr r0, _0809E8E4
	adds r1, r0, 0
	adds r1, 0x69
	bl sub_80A0428
_0809E8CA:
	ldr r0, _0809E8E8
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	ldr r0, _0809E8EC
	str r0, [r1]
	adds r0, r5, 0
	bl BgFrame_FillTileMap
_0809E8DE:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E8E4: .4byte 0x02018010
_0809E8E8: .4byte gTasks
_0809E8EC: .4byte sub_809E3FC
	thumb_func_end sub_809E83C

	thumb_func_start sub_809E8F0
sub_809E8F0: @ 809E8F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r4, r1, 0
	mov r9, r2
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	str r0, [sp]
	movs r0, 0x5
	bl PlaySE
	mov r1, r9
	ldrb r6, [r1]
	ldr r1, _0809E944
	mov r2, r8
	lsls r0, r2, 2
	add r0, r8
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x8]
	movs r2, 0
	lsls r4, 24
	asrs r4, 24
	mov r10, r4
	lsls r7, r0, 24
_0809E930:
	lsls r0, r6, 24
	asrs r0, 24
	add r0, r10
	lsls r0, 24
	lsrs r6, r0, 24
	asrs r1, r0, 24
	cmp r0, r7
	ble _0809E948
	movs r6, 0
	b _0809E94E
	.align 2, 0
_0809E944: .4byte gTasks
_0809E948:
	cmp r1, 0
	bge _0809E94E
	lsrs r6, r7, 24
_0809E94E:
	lsls r4, r6, 24
	lsrs r1, r4, 24
	ldr r0, _0809EA10
	str r2, [sp, 0x4]
	bl sub_809F760
	lsls r0, 16
	adds r5, r4, 0
	ldr r2, [sp, 0x4]
	cmp r0, 0
	bne _0809E97A
	asrs r0, r5, 24
	cmp r0, 0x4
	beq _0809E97A
	lsls r0, r2, 24
	movs r3, 0x80
	lsls r3, 17
	adds r0, r3
	lsrs r2, r0, 24
	asrs r0, 24
	cmp r0, 0x3
	ble _0809E930
_0809E97A:
	mov r1, r9
	ldrb r0, [r1]
	cmp r0, 0x4
	bne _0809E996
	asrs r0, r5, 24
	cmp r0, 0x4
	beq _0809E996
	ldr r0, _0809EA14
	adds r0, 0x7C
	ldrh r0, [r0]
	mov r2, r8
	lsls r7, r2, 2
	cmp r0, 0
	beq _0809E9AC
_0809E996:
	ldr r2, _0809EA18
	mov r3, r8
	lsls r1, r3, 2
	adds r0, r1, r3
	lsls r0, 3
	adds r0, r2
	movs r2, 0x22
	ldrsh r0, [r0, r2]
	adds r7, r1, 0
	cmp r0, 0x1
	bne _0809E9D0
_0809E9AC:
	lsrs r4, r5, 24
	movs r0, 0x2
	adds r1, r4, 0
	bl sub_80A1488
	movs r0, 0x2
	adds r1, r4, 0
	bl sub_80A1654
	ldr r1, _0809EA18
	mov r3, r8
	adds r0, r7, r3
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x22]
	movs r0, 0
	str r0, [sp]
_0809E9D0:
	mov r1, r9
	ldrb r0, [r1]
	cmp r0, 0x4
	beq _0809E9FE
	asrs r0, r5, 24
	cmp r0, 0x4
	bne _0809E9FE
	ldr r0, _0809EA14
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	bne _0809E9FE
	movs r4, 0x2
	negs r4, r4
	lsrs r5, 24
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A1488
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A1654
_0809E9FE:
	mov r2, r9
	strb r6, [r2]
	ldr r0, _0809EA1C
	cmp r9, r0
	bne _0809EA20
	movs r0, 0
	bl sub_80A1C30
	b _0809EA26
	.align 2, 0
_0809EA10: .4byte 0x02018010
_0809EA14: .4byte 0x02018000
_0809EA18: .4byte gTasks
_0809EA1C: .4byte 0x02018079
_0809EA20:
	movs r0, 0x1
	bl sub_80A1C30
_0809EA26:
	ldr r3, [sp]
	cmp r3, 0
	beq _0809EA34
	ldr r0, _0809EA4C
	mov r1, r9
	bl sub_80A0428
_0809EA34:
	mov r0, r8
	bl BgFrame_FillTileMap
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EA4C: .4byte 0x02018010
	thumb_func_end sub_809E8F0

	thumb_func_start sub_809EA50
sub_809EA50: @ 809EA50
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r0, 0x5
	bl PlaySE
	ldr r4, _0809EABC
	adds r1, r4, 0
	adds r1, 0x79
	movs r0, 0
	strb r0, [r1]
	movs r0, 0x2
	movs r1, 0
	bl sub_80A1488
	movs r0, 0x2
	movs r1, 0
	bl sub_80A1654
	adds r0, r4, 0
	adds r0, 0x7B
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809EA8C
	adds r1, r4, 0
	adds r1, 0x7F
	movs r0, 0x5
	strb r0, [r1]
	bl sub_80A0DD0
_0809EA8C:
	movs r0, 0
	bl sub_80A16CC
	adds r0, r4, 0
	adds r0, 0x10
	bl sub_80A029C
	movs r0, 0x9
	bl sub_80A1A30
	ldr r1, _0809EAC0
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809EAC4
	str r1, [r0]
	adds r0, r5, 0
	bl BgFrame_FillTileMap
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809EABC: .4byte 0x02018000
_0809EAC0: .4byte gTasks
_0809EAC4: .4byte sub_809E3FC
	thumb_func_end sub_809EA50

	thumb_func_start sub_809EAC8
sub_809EAC8: @ 809EAC8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r6, _0809EB34
	adds r0, r6, 0
	adds r0, 0x79
	ldrb r0, [r0]
	cmp r0, 0x4
	beq _0809EAEE
	movs r4, 0x2
	negs r4, r4
	adds r0, r4, 0
	movs r1, 0
	bl sub_80A1488
	adds r0, r4, 0
	movs r1, 0
	bl sub_80A1654
_0809EAEE:
	movs r0, 0x9
	bl sub_80A1B1C
	movs r0, 0x1
	bl sub_80A16CC
	movs r0, 0xF
	movs r1, 0xC
	movs r2, 0x1C
	movs r3, 0xD
	bl MenuZeroFillWindowRect
	movs r0, 0xB
	movs r1, 0xF
	movs r2, 0x1C
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	adds r1, r6, 0
	adds r1, 0x7F
	movs r0, 0x6
	strb r0, [r1]
	bl sub_80A0DD0
	ldr r1, _0809EB38
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809EB3C
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809EB34: .4byte 0x02018000
_0809EB38: .4byte gTasks
_0809EB3C: .4byte sub_809E19C
	thumb_func_end sub_809EAC8

	thumb_func_start sub_809EB40
sub_809EB40: @ 809EB40
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _0809EB6C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _0809EB74
	cmp r0, 0x5
	bne _0809EBA4
	movs r0, 0x9
	bl sub_80A1A30
	movs r0, 0
	strh r0, [r4, 0x8]
	ldr r0, _0809EB70
	str r0, [r4]
	b _0809EBB4
	.align 2, 0
_0809EB6C: .4byte gTasks
_0809EB70: .4byte sub_809E260
_0809EB74:
	ldr r4, _0809EBBC
	adds r6, r4, 0
	adds r6, 0x79
	strb r0, [r6]
	adds r0, r4, 0
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	beq _0809EB96
	movs r0, 0xA
	movs r1, 0
	bl sub_80A1488
	ldrb r1, [r6]
	movs r0, 0xA
	bl sub_80A1654
_0809EB96:
	movs r0, 0
	bl sub_80A16CC
	adds r0, r4, 0
	adds r0, 0x10
	bl sub_80A029C
_0809EBA4:
	ldr r0, _0809EBC0
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_0809EBB4:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809EBBC: .4byte 0x02018000
_0809EBC0: .4byte gTasks
	thumb_func_end sub_809EB40

	thumb_func_start sub_809EBC4
sub_809EBC4: @ 809EBC4
	push {r4,lr}
	ldr r4, _0809EC28
	ldrb r0, [r4, 0xB]
	cmp r0, 0
	beq _0809EC22
	bl sub_80A0EE8
	ldr r0, _0809EC2C
	movs r2, 0x80
	lsls r2, 1
	adds r1, r2, 0
	strh r1, [r0]
	ldrb r0, [r4, 0xB]
	cmp r0, 0x1
	bne _0809EBF4
	ldr r2, _0809EC30
	ldrh r1, [r2]
	ldr r0, _0809EC34
	ands r0, r1
	movs r3, 0x80
	lsls r3, 4
	adds r1, r3, 0
	adds r0, r1
	strh r0, [r2]
_0809EBF4:
	ldrb r3, [r4, 0xB]
	cmp r3, 0x2
	bne _0809EC0C
	ldr r2, _0809EC30
	ldrh r1, [r2]
	ldr r0, _0809EC34
	ands r0, r1
	movs r4, 0xA0
	lsls r4, 4
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809EC0C:
	cmp r3, 0x3
	bne _0809EC22
	ldr r2, _0809EC30
	ldrh r1, [r2]
	ldr r0, _0809EC34
	ands r0, r1
	movs r3, 0xC0
	lsls r3, 4
	adds r1, r3, 0
	adds r0, r1
	strh r0, [r2]
_0809EC22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809EC28: .4byte 0x02018000
_0809EC2C: .4byte gUnknown_030042C0
_0809EC30: .4byte REG_BG1CNT
_0809EC34: .4byte 0x0000e0ff
	thumb_func_end sub_809EBC4

	thumb_func_start sub_809EC38
sub_809EC38: @ 809EC38
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, _0809EC5C
	adds r6, r0, r1
	movs r1, 0
	ldrsh r0, [r6, r1]
	cmp r0, 0x5
	bls _0809EC52
	b _0809EE64
_0809EC52:
	lsls r0, 2
	ldr r1, _0809EC60
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EC5C: .4byte gUnknown_03004B28
_0809EC60: .4byte _0809EC64
	.align 2, 0
_0809EC64:
	.4byte _0809EC7C
	.4byte _0809ED14
	.4byte _0809ED98
	.4byte _0809EE12
	.4byte _0809EE1C
	.4byte _0809EE4C
_0809EC7C:
	ldr r1, _0809ECB8
	adds r0, r1, 0
	adds r0, 0x80
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809ECC8
	ldrb r3, [r1, 0xB]
	cmp r3, 0
	beq _0809EC98
	ldr r1, _0809ECBC
	movs r2, 0x80
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
_0809EC98:
	cmp r3, 0x1
	bne _0809ECAE
	ldr r2, _0809ECC0
	ldrh r1, [r2]
	ldr r0, _0809ECC4
	ands r0, r1
	movs r4, 0x80
	lsls r4, 4
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809ECAE:
	cmp r3, 0x2
	beq _0809ECB4
	b _0809EE3A
_0809ECB4:
	ldr r2, _0809ECC0
	b _0809ECF6
	.align 2, 0
_0809ECB8: .4byte 0x02018000
_0809ECBC: .4byte gUnknown_03004288
_0809ECC0: .4byte REG_BG2CNT
_0809ECC4: .4byte 0x0000e0ff
_0809ECC8:
	ldrb r3, [r1, 0xB]
	cmp r3, 0
	beq _0809ECD8
	ldr r1, _0809ED08
	movs r4, 0x80
	lsls r4, 1
	adds r0, r4, 0
	strh r0, [r1]
_0809ECD8:
	cmp r3, 0x1
	bne _0809ECEE
	ldr r2, _0809ED0C
	ldrh r1, [r2]
	ldr r0, _0809ED10
	ands r0, r1
	movs r4, 0x80
	lsls r4, 4
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809ECEE:
	cmp r3, 0x2
	beq _0809ECF4
	b _0809EE3A
_0809ECF4:
	ldr r2, _0809ED0C
_0809ECF6:
	ldrh r1, [r2]
	ldr r0, _0809ED10
	ands r0, r1
	movs r3, 0xA0
	lsls r3, 4
	adds r1, r3, 0
	adds r0, r1
	strh r0, [r2]
	b _0809EE3A
	.align 2, 0
_0809ED08: .4byte gUnknown_030042C0
_0809ED0C: .4byte REG_BG1CNT
_0809ED10: .4byte 0x0000e0ff
_0809ED14:
	ldr r0, _0809ED48
	adds r0, 0x80
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809ED5C
	ldr r1, _0809ED4C
	ldrh r0, [r1]
	subs r0, 0x20
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	beq _0809ED2E
	b _0809EE64
_0809ED2E:
	ldr r3, _0809ED50
	ldrh r2, [r3]
	ldr r1, _0809ED54
	adds r0, r1, 0
	ands r0, r2
	adds r0, 0x2
	strh r0, [r3]
	ldr r2, _0809ED58
	ldrh r0, [r2]
	ands r1, r0
	adds r1, 0x1
	strh r1, [r2]
	b _0809EE3A
	.align 2, 0
_0809ED48: .4byte 0x02018000
_0809ED4C: .4byte gUnknown_030042C0
_0809ED50: .4byte REG_BG1CNT
_0809ED54: .4byte 0x0000fffc
_0809ED58: .4byte REG_BG2CNT
_0809ED5C:
	ldr r1, _0809ED88
	ldrh r0, [r1]
	subs r0, 0x20
	strh r0, [r1]
	lsls r0, 16
	cmp r0, 0
	beq _0809ED6C
	b _0809EE64
_0809ED6C:
	ldr r3, _0809ED8C
	ldrh r2, [r3]
	ldr r1, _0809ED90
	adds r0, r1, 0
	ands r0, r2
	adds r0, 0x1
	strh r0, [r3]
	ldr r2, _0809ED94
	ldrh r0, [r2]
	ands r1, r0
	adds r1, 0x2
	strh r1, [r2]
	b _0809EE3A
	.align 2, 0
_0809ED88: .4byte gUnknown_03004288
_0809ED8C: .4byte REG_BG1CNT
_0809ED90: .4byte 0x0000fffc
_0809ED94: .4byte REG_BG2CNT
_0809ED98:
	ldr r1, _0809EDD4
	ldrb r3, [r1, 0xB]
	adds r0, r3, 0x1
	adds r2, r1, 0
	adds r2, 0x7E
	strb r0, [r2]
	ldrb r2, [r1, 0x8]
	subs r0, r2, 0x2
	lsls r0, 24
	lsrs r0, 24
	adds r5, r1, 0
	cmp r0, 0x1
	bhi _0809EDD8
	adds r1, 0x7F
	movs r0, 0
	strb r0, [r1]
	adds r4, r5, 0
	adds r4, 0x10
	adds r0, r4, 0
	bl sub_80A029C
	adds r5, 0x79
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A0428
	ldrb r0, [r5]
	bl sub_80A00F4
	b _0809EE3A
	.align 2, 0
_0809EDD4: .4byte 0x02018000
_0809EDD8:
	lsls r0, r3, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0809EDFA
	adds r0, r5, 0
	adds r0, 0x7B
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809EDF2
	lsls r0, r2, 24
	lsrs r0, 24
	cmp r0, 0x4
	bne _0809EDFA
_0809EDF2:
	adds r1, r5, 0
	adds r1, 0x7F
	movs r0, 0x6
	b _0809EE0E
_0809EDFA:
	ldrb r0, [r5, 0xB]
	cmp r0, 0
	bne _0809EE08
	adds r1, r5, 0
	adds r1, 0x7F
	movs r0, 0x7
	b _0809EE0E
_0809EE08:
	adds r1, r5, 0
	adds r1, 0x7F
	movs r0, 0
_0809EE0E:
	strb r0, [r1]
	b _0809EE3A
_0809EE12:
	bl sub_80A0EE8
	bl sub_80A0DD0
	b _0809EE3A
_0809EE1C:
	ldr r0, _0809EE44
	ldr r4, _0809EE48
	ldrb r1, [r4, 0xB]
	lsls r1, 2
	adds r1, r0
	adds r0, r4, 0
	adds r0, 0x10
	ldr r1, [r1]
	bl _call_via_r1
	adds r4, 0x80
	ldrb r0, [r4]
	movs r1, 0x1
	eors r0, r1
	strb r0, [r4]
_0809EE3A:
	ldrh r0, [r6]
	adds r0, 0x1
	strh r0, [r6]
	b _0809EE64
	.align 2, 0
_0809EE44: .4byte gUnknown_083C1598
_0809EE48: .4byte 0x02018000
_0809EE4C:
	bl sub_8055870
	cmp r0, 0x1
	beq _0809EE64
	ldr r1, _0809EE6C
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809EE70
	ldr r1, [r1]
	str r1, [r0]
_0809EE64:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809EE6C: .4byte gTasks
_0809EE70: .4byte gUnknown_03005CF0
	thumb_func_end sub_809EC38

	thumb_func_start sub_809EE74
sub_809EE74: @ 809EE74
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, _0809EE98
	adds r6, r0, r1
	movs r1, 0
	ldrsh r0, [r6, r1]
	cmp r0, 0x6
	bls _0809EE8E
	b _0809F0C0
_0809EE8E:
	lsls r0, 2
	ldr r1, _0809EE9C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EE98: .4byte gUnknown_03004B28
_0809EE9C: .4byte _0809EEA0
	.align 2, 0
_0809EEA0:
	.4byte _0809EEBC
	.4byte _0809EEE0
	.4byte _0809EFB4
	.4byte _0809EFF4
	.4byte _0809F06E
	.4byte _0809F078
	.4byte _0809F0A8
_0809EEBC:
	ldr r0, _0809EECC
	adds r0, 0x80
	ldrb r1, [r0]
	cmp r1, 0
	bne _0809EED4
	ldr r0, _0809EED0
	strh r1, [r0]
	b _0809F096
	.align 2, 0
_0809EECC: .4byte 0x02018000
_0809EED0: .4byte gUnknown_03004288
_0809EED4:
	ldr r1, _0809EEDC
	movs r0, 0
	strh r0, [r1]
	b _0809F096
	.align 2, 0
_0809EEDC: .4byte gUnknown_030042C0
_0809EEE0:
	ldr r1, _0809EF30
	adds r0, r1, 0
	adds r0, 0x80
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809EF4C
	ldrb r3, [r1, 0xB]
	cmp r3, 0x1
	bne _0809EF02
	ldr r2, _0809EF34
	ldrh r1, [r2]
	ldr r0, _0809EF38
	ands r0, r1
	ldr r4, _0809EF3C
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809EF02:
	cmp r3, 0x2
	bne _0809EF16
	ldr r2, _0809EF34
	ldrh r1, [r2]
	ldr r0, _0809EF38
	ands r0, r1
	ldr r4, _0809EF40
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809EF16:
	cmp r3, 0x3
	bne _0809EF2A
	ldr r2, _0809EF34
	ldrh r1, [r2]
	ldr r0, _0809EF38
	ands r0, r1
	ldr r3, _0809EF44
	adds r1, r3, 0
	adds r0, r1
	strh r0, [r2]
_0809EF2A:
	ldr r2, _0809EF48
	b _0809EF8C
	.align 2, 0
_0809EF30: .4byte 0x02018000
_0809EF34: .4byte REG_BG2CNT
_0809EF38: .4byte 0x0000e0fc
_0809EF3C: .4byte 0x00000801
_0809EF40: .4byte 0x00000a01
_0809EF44: .4byte 0x00000c01
_0809EF48: .4byte REG_BG1CNT
_0809EF4C:
	ldrb r3, [r1, 0xB]
	cmp r3, 0x1
	bne _0809EF62
	ldr r2, _0809EF98
	ldrh r1, [r2]
	ldr r0, _0809EF9C
	ands r0, r1
	ldr r4, _0809EFA0
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809EF62:
	cmp r3, 0x2
	bne _0809EF76
	ldr r2, _0809EF98
	ldrh r1, [r2]
	ldr r0, _0809EF9C
	ands r0, r1
	ldr r4, _0809EFA4
	adds r1, r4, 0
	adds r0, r1
	strh r0, [r2]
_0809EF76:
	cmp r3, 0x3
	bne _0809EF8A
	ldr r2, _0809EF98
	ldrh r1, [r2]
	ldr r0, _0809EF9C
	ands r0, r1
	ldr r3, _0809EFA8
	adds r1, r3, 0
	adds r0, r1
	strh r0, [r2]
_0809EF8A:
	ldr r2, _0809EFAC
_0809EF8C:
	ldrh r1, [r2]
	ldr r0, _0809EFB0
	ands r0, r1
	adds r0, 0x2
	strh r0, [r2]
	b _0809F096
	.align 2, 0
_0809EF98: .4byte REG_BG1CNT
_0809EF9C: .4byte 0x0000e0fc
_0809EFA0: .4byte 0x00000801
_0809EFA4: .4byte 0x00000a01
_0809EFA8: .4byte 0x00000c01
_0809EFAC: .4byte REG_BG2CNT
_0809EFB0: .4byte 0x0000fffc
_0809EFB4:
	ldr r0, _0809EFD4
	adds r0, 0x80
	ldrb r0, [r0]
	cmp r0, 0
	bne _0809EFDC
	ldr r0, _0809EFD8
	ldrh r1, [r0]
	adds r1, 0x20
	strh r1, [r0]
	lsls r1, 16
	movs r0, 0x80
	lsls r0, 17
	cmp r1, r0
	bne _0809F0C0
	b _0809F096
	.align 2, 0
_0809EFD4: .4byte 0x02018000
_0809EFD8: .4byte gUnknown_03004288
_0809EFDC:
	ldr r0, _0809EFF0
	ldrh r1, [r0]
	adds r1, 0x20
	strh r1, [r0]
	lsls r1, 16
	movs r0, 0x80
	lsls r0, 17
	cmp r1, r0
	bne _0809F0C0
	b _0809F096
	.align 2, 0
_0809EFF0: .4byte gUnknown_030042C0
_0809EFF4:
	ldr r1, _0809F030
	ldrb r3, [r1, 0xB]
	adds r0, r3, 0x1
	adds r2, r1, 0
	adds r2, 0x7E
	strb r0, [r2]
	ldrb r2, [r1, 0x8]
	subs r0, r2, 0x2
	lsls r0, 24
	lsrs r0, 24
	adds r5, r1, 0
	cmp r0, 0x1
	bhi _0809F034
	adds r1, 0x7F
	movs r0, 0
	strb r0, [r1]
	adds r4, r5, 0
	adds r4, 0x10
	adds r0, r4, 0
	bl sub_80A029C
	adds r5, 0x79
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A0428
	ldrb r0, [r5]
	bl sub_80A00F4
	b _0809F096
	.align 2, 0
_0809F030: .4byte 0x02018000
_0809F034:
	lsls r0, r3, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _0809F056
	adds r0, r5, 0
	adds r0, 0x7B
	ldrb r0, [r0]
	cmp r0, 0
	beq _0809F04E
	lsls r0, r2, 24
	lsrs r0, 24
	cmp r0, 0x4
	bne _0809F056
_0809F04E:
	adds r1, r5, 0
	adds r1, 0x7F
	movs r0, 0x6
	b _0809F06A
_0809F056:
	ldrb r0, [r5, 0xB]
	cmp r0, 0
	bne _0809F064
	adds r1, r5, 0
	adds r1, 0x7F
	movs r0, 0x7
	b _0809F06A
_0809F064:
	adds r1, r5, 0
	adds r1, 0x7F
	movs r0, 0
_0809F06A:
	strb r0, [r1]
	b _0809F096
_0809F06E:
	bl sub_80A0EE8
	bl sub_80A0DD0
	b _0809F096
_0809F078:
	ldr r0, _0809F0A0
	ldr r4, _0809F0A4
	ldrb r1, [r4, 0xB]
	lsls r1, 2
	adds r1, r0
	adds r0, r4, 0
	adds r0, 0x10
	ldr r1, [r1]
	bl _call_via_r1
	adds r4, 0x80
	ldrb r0, [r4]
	movs r1, 0x1
	eors r0, r1
	strb r0, [r4]
_0809F096:
	ldrh r0, [r6]
	adds r0, 0x1
	strh r0, [r6]
	b _0809F0C0
	.align 2, 0
_0809F0A0: .4byte gUnknown_083C1598
_0809F0A4: .4byte 0x02018000
_0809F0A8:
	bl sub_8055870
	cmp r0, 0x1
	beq _0809F0C0
	ldr r1, _0809F0C8
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809F0CC
	ldr r1, [r1]
	str r1, [r0]
_0809F0C0:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F0C8: .4byte gTasks
_0809F0CC: .4byte gUnknown_03005CF0
	thumb_func_end sub_809EE74

	thumb_func_start sub_809F0D0
sub_809F0D0: @ 809F0D0
	push {r4-r7,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _0809F110
	ldrb r0, [r1, 0xB]
	adds r0, r4
	movs r5, 0
	strb r0, [r1, 0xB]
	ldr r2, _0809F114
	ldr r1, _0809F118
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r6, r0, r1
	ldr r0, [r6]
	str r0, [r2]
	bl sub_809FBE4
	strh r5, [r6, 0x8]
	lsls r4, 24
	asrs r4, 24
	movs r0, 0x1
	negs r0, r0
	cmp r4, r0
	bne _0809F120
	ldr r0, _0809F11C
	str r0, [r6]
	b _0809F12A
	.align 2, 0
_0809F110: .4byte 0x02018000
_0809F114: .4byte gUnknown_03005CF0
_0809F118: .4byte gTasks
_0809F11C: .4byte sub_809EC38
_0809F120:
	ldr r1, _0809F130
	str r1, [r6]
	adds r0, r7, 0
	bl _call_via_r1
_0809F12A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F130: .4byte sub_809EE74
	thumb_func_end sub_809F0D0

	thumb_func_start sub_809F134
sub_809F134: @ 809F134
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	ldr r4, _0809F1AC
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0809F1A6
	lsls r0, r5, 24
	asrs r5, r0, 24
	movs r0, 0x1
	negs r0, r0
	cmp r5, r0
	bne _0809F168
	adds r0, r4, 0
	subs r0, 0x10
	adds r1, r4, 0
	adds r1, 0x65
	ldrb r0, [r0, 0xB]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809F1A6
_0809F168:
	cmp r5, 0x1
	bne _0809F17C
	adds r0, r4, 0
	subs r0, 0x10
	adds r1, r4, 0
	adds r1, 0x66
	ldrb r0, [r0, 0xB]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0809F1A6
_0809F17C:
	ldr r0, _0809F1B0
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _0809F1A6
	ldr r0, _0809F1B4
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _0809F1A6
	movs r0, 0x5
	bl PlaySE
	adds r0, r6, 0
	adds r1, r5, 0
	bl sub_809F0D0
_0809F1A6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F1AC: .4byte 0x02018010
_0809F1B0: .4byte sub_80A1334
_0809F1B4: .4byte sub_80A1500
	thumb_func_end sub_809F134

	thumb_func_start sub_809F1B8
sub_809F1B8: @ 809F1B8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	ldr r0, _0809F1E4
	ldrb r1, [r0, 0xE]
	adds r2, r0, 0
	cmp r1, 0x1
	bne _0809F202
	ldrb r0, [r2, 0xB]
	cmp r0, 0
	beq _0809F1E8
	lsls r1, r4, 24
	asrs r1, 24
	movs r4, 0x1
	eors r1, r4
	negs r0, r1
	orrs r0, r1
	lsrs r4, r0, 31
	b _0809F1F4
	.align 2, 0
_0809F1E4: .4byte 0x02018000
_0809F1E8:
	lsls r0, r4, 24
	asrs r0, 24
	movs r4, 0x3
	cmp r0, 0x1
	bne _0809F1F4
	movs r4, 0x2
_0809F1F4:
	ldr r0, [r2]
	ldrb r1, [r2, 0x9]
	ldrb r2, [r2, 0xA]
	adds r3, r4, 0
	bl sub_8095DCC
	b _0809F22C
_0809F202:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809F224
	bl sub_806B528
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809F224
	lsls r0, r4, 24
	asrs r0, 24
	bl sub_809F3CC
	b _0809F22C
_0809F224:
	lsls r0, r4, 24
	asrs r0, 24
	bl sub_809F284
_0809F22C:
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 24
	asrs r0, 24
	movs r1, 0x1
	negs r1, r1
	cmp r0, r1
	beq _0809F270
	movs r0, 0x5
	bl PlaySE
	ldr r5, _0809F278
	adds r0, r5, 0
	bl sub_80A1CD8
	lsls r0, 24
	cmp r0, 0
	beq _0809F258
	movs r0, 0x2
	negs r0, r0
	bl sub_80A12D0
_0809F258:
	adds r0, r5, 0
	subs r0, 0x10
	strb r4, [r0, 0x9]
	ldr r1, _0809F27C
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, [r0]
	str r1, [r5, 0x74]
	ldr r1, _0809F280
	str r1, [r0]
_0809F270:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809F278: .4byte 0x02018010
_0809F27C: .4byte gTasks
_0809F280: .4byte sub_809F43C
	thumb_func_end sub_809F1B8

	thumb_func_start sub_809F284
sub_809F284: @ 809F284
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r0, _0809F2C0
	ldr r7, [r0]
	movs r6, 0
	ldrb r1, [r0, 0xB]
	adds r4, r0, 0
	cmp r1, 0
	bne _0809F2C4
	lsls r0, r3, 24
	asrs r2, r0, 24
	movs r1, 0x1
	negs r1, r1
	adds r5, r0, 0
	cmp r2, r1
	bne _0809F2AC
	ldrb r0, [r4, 0x9]
	cmp r0, 0
	beq _0809F2E4
_0809F2AC:
	asrs r0, r5, 24
	cmp r0, 0x1
	bne _0809F2BA
	ldrb r0, [r4, 0x9]
	ldrb r1, [r4, 0xA]
	cmp r0, r1
	bcs _0809F2E4
_0809F2BA:
	ldrb r0, [r4, 0x9]
	adds r0, r3
	b _0809F304
	.align 2, 0
_0809F2C0: .4byte 0x02018000
_0809F2C4:
	lsls r5, r3, 24
_0809F2C6:
	lsls r0, r6, 24
	asrs r0, 24
	asrs r1, r5, 24
	adds r0, r1
	lsls r0, 24
	ldr r4, _0809F2EC
	lsrs r6, r0, 24
	asrs r0, 24
	ldrb r2, [r4, 0x9]
	adds r1, r0, r2
	cmp r1, 0
	blt _0809F2E4
	ldrb r0, [r4, 0xA]
	cmp r1, r0
	ble _0809F2F0
_0809F2E4:
	movs r0, 0x1
	negs r0, r0
	b _0809F308
	.align 2, 0
_0809F2EC: .4byte 0x02018000
_0809F2F0:
	movs r0, 0x64
	muls r0, r1
	adds r0, r7, r0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0809F2C6
	ldrb r0, [r4, 0x9]
	adds r0, r6
_0809F304:
	lsls r0, 24
	asrs r0, 24
_0809F308:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809F284

	thumb_func_start sub_809F310
sub_809F310: @ 809F310
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0xB
	bl GetMonData
	cmp r0, 0
	beq _0809F33C
	ldr r0, _0809F338
	ldrb r0, [r0, 0xB]
	cmp r0, 0
	bne _0809F332
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _0809F33C
_0809F332:
	movs r0, 0x1
	b _0809F33E
	.align 2, 0
_0809F338: .4byte 0x02018000
_0809F33C:
	movs r0, 0
_0809F33E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_809F310

	thumb_func_start sub_809F344
sub_809F344: @ 809F344
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
_0809F34A:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x6
	beq _0809F37C
	ldr r0, _0809F374
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0809F378
	adds r0, r1
	bl sub_809F310
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809F34A
	movs r0, 0
	ldrsb r0, [r5, r0]
	b _0809F380
	.align 2, 0
_0809F374: .4byte gUnknown_083C15A8
_0809F378: .4byte gPlayerParty
_0809F37C:
	movs r0, 0x1
	negs r0, r0
_0809F380:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809F344

	thumb_func_start sub_809F388
sub_809F388: @ 809F388
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
_0809F38E:
	cmp r4, 0
	beq _0809F3C0
	subs r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _0809F3B8
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _0809F3BC
	adds r0, r1
	bl sub_809F310
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809F38E
	movs r0, 0
	ldrsb r0, [r5, r0]
	b _0809F3C4
	.align 2, 0
_0809F3B8: .4byte gUnknown_083C15A8
_0809F3BC: .4byte gPlayerParty
_0809F3C0:
	movs r0, 0x1
	negs r0, r0
_0809F3C4:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_809F388

	thumb_func_start sub_809F3CC
sub_809F3CC: @ 809F3CC
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r2, 0
	movs r1, 0
	ldr r3, _0809F41C
	ldr r4, _0809F420
	ldrb r0, [r3]
	ldrb r5, [r4, 0x9]
	cmp r0, r5
	beq _0809F3FC
	adds r5, r3, 0
	adds r3, r4, 0
_0809F3E6:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x5
	bhi _0809F3FC
	adds r0, r1, r5
	ldrb r0, [r0]
	ldrb r4, [r3, 0x9]
	cmp r0, r4
	bne _0809F3E6
	adds r2, r1, 0
_0809F3FC:
	lsls r0, r6, 24
	asrs r1, r0, 24
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	bne _0809F40C
	cmp r2, 0
	beq _0809F414
_0809F40C:
	cmp r1, 0x1
	bne _0809F424
	cmp r2, 0x5
	bne _0809F42C
_0809F414:
	movs r0, 0x1
	negs r0, r0
	b _0809F436
	.align 2, 0
_0809F41C: .4byte gUnknown_083C15A8
_0809F420: .4byte 0x02018000
_0809F424:
	adds r0, r2, 0
	bl sub_809F388
	b _0809F432
_0809F42C:
	adds r0, r2, 0
	bl sub_809F344
_0809F432:
	lsls r0, 24
	asrs r0, 24
_0809F436:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_809F3CC

	thumb_func_start sub_809F43C
sub_809F43C: @ 809F43C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _0809F45C
	ldr r1, _0809F460
	adds r5, r0, r1
	ldrb r2, [r5]
	adds r3, r0, 0
	cmp r2, 0x8
	bls _0809F452
	b _0809F5CC
_0809F452:
	lsls r0, r2, 2
	ldr r1, _0809F464
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809F45C: .4byte gMain
_0809F460: .4byte 0x0000043c
_0809F464: .4byte _0809F468
	.align 2, 0
_0809F468:
	.4byte _0809F48C
	.4byte _0809F492
	.4byte _0809F4BC
	.4byte _0809F4D8
	.4byte _0809F4F4
	.4byte _0809F51C
	.4byte _0809F578
	.4byte _0809F584
	.4byte _0809F5A0
_0809F48C:
	bl StopCryAndClearCrySongs
	b _0809F5B2
_0809F492:
	ldr r0, _0809F4AC
	ldrb r1, [r0, 0xC]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0809F4B0
	adds r0, r1
	bl DestroySpriteAndFreeResources
	ldr r1, _0809F4B4
	ldr r0, _0809F4B8
	adds r1, r0
	b _0809F5B8
	.align 2, 0
_0809F4AC: .4byte 0x02018000
_0809F4B0: .4byte gSprites
_0809F4B4: .4byte gMain
_0809F4B8: .4byte 0x0000043c
_0809F4BC:
	ldr r0, _0809F4D0
	ldrb r1, [r0, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _0809F4D4
	adds r0, r1
	bl DestroySpriteAndFreeResources
	b _0809F5B2
	.align 2, 0
_0809F4D0: .4byte 0x02018000
_0809F4D4: .4byte gSprites
_0809F4D8:
	ldr r0, _0809F4EC
	adds r1, r0, 0
	adds r1, 0x74
	movs r2, 0
	strb r2, [r1]
	adds r0, 0x79
	strb r2, [r0]
	ldr r0, _0809F4F0
	adds r1, r3, r0
	b _0809F5B8
	.align 2, 0
_0809F4EC: .4byte 0x02018000
_0809F4F0: .4byte 0x0000043c
_0809F4F4:
	ldr r4, _0809F518
	adds r0, r4, 0
	bl sub_809F678
	adds r0, r4, 0
	bl sub_80A1CD8
	lsls r0, 24
	cmp r0, 0
	beq _0809F50E
	movs r0, 0x2
	bl sub_80A12D0
_0809F50E:
	adds r0, r4, 0
	bl sub_80A0EA4
	b _0809F5B2
	.align 2, 0
_0809F518: .4byte 0x02018010
_0809F51C:
	ldr r4, _0809F558
	adds r5, r4, 0
	adds r5, 0x64
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_809F6B4
	adds r1, r4, 0
	subs r1, 0x10
	strb r0, [r1, 0xC]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0xFF
	beq _0809F5EA
	movs r0, 0
	strb r0, [r5]
	adds r0, r4, 0
	movs r1, 0x2D
	bl GetMonData
	adds r1, r0, 0
	cmp r1, 0
	beq _0809F560
	ldr r1, _0809F55C
	movs r2, 0x80
	lsls r2, 1
	adds r0, r2, 0
	strh r0, [r1]
	b _0809F564
	.align 2, 0
_0809F558: .4byte 0x02018010
_0809F55C: .4byte gUnknown_030041B0
_0809F560:
	ldr r0, _0809F56C
	strh r1, [r0]
_0809F564:
	ldr r1, _0809F570
	ldr r0, _0809F574
	adds r1, r0
	b _0809F5B8
	.align 2, 0
_0809F56C: .4byte gUnknown_030041B0
_0809F570: .4byte gMain
_0809F574: .4byte 0x0000043c
_0809F578:
	ldr r0, _0809F580
	bl sub_80A1DCC
	b _0809F5B2
	.align 2, 0
_0809F580: .4byte 0x02018010
_0809F584:
	ldr r0, _0809F594
	bl sub_80A1DE8
	ldr r1, _0809F598
	ldr r0, _0809F59C
	adds r1, r0
	b _0809F5B8
	.align 2, 0
_0809F594: .4byte 0x02018010
_0809F598: .4byte gMain
_0809F59C: .4byte 0x0000043c
_0809F5A0:
	bl sub_809F5F8
	lsls r0, 24
	cmp r0, 0
	beq _0809F5EA
	ldr r0, _0809F5C0
	adds r0, 0x74
	movs r1, 0
	strb r1, [r0]
_0809F5B2:
	ldr r1, _0809F5C4
	ldr r2, _0809F5C8
	adds r1, r2
_0809F5B8:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _0809F5EA
	.align 2, 0
_0809F5C0: .4byte 0x02018000
_0809F5C4: .4byte gMain
_0809F5C8: .4byte 0x0000043c
_0809F5CC:
	bl sub_8055870
	cmp r0, 0x1
	beq _0809F5EA
	movs r0, 0
	strb r0, [r5]
	ldr r0, _0809F5F0
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r0, _0809F5F4
	adds r0, 0x84
	ldr r0, [r0]
	str r0, [r1]
_0809F5EA:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F5F0: .4byte gTasks
_0809F5F4: .4byte 0x02018000
	thumb_func_end sub_809F43C

	thumb_func_start sub_809F5F8
sub_809F5F8: @ 809F5F8
	push {r4,lr}
	ldr r2, _0809F61C
	adds r4, r2, 0
	adds r4, 0x74
	ldrb r0, [r4]
	cmp r0, 0
	beq _0809F624
	ldr r0, _0809F620
	ldrb r1, [r2, 0xB]
	lsls r1, 2
	adds r1, r0
	adds r0, r2, 0
	adds r0, 0x10
	ldr r1, [r1]
	bl _call_via_r1
	movs r0, 0x1
	b _0809F634
	.align 2, 0
_0809F61C: .4byte 0x02018000
_0809F620: .4byte gUnknown_083C1588
_0809F624:
	adds r0, r2, 0
	adds r0, 0x10
	bl sub_809FAC8
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	movs r0, 0
_0809F634:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_809F5F8

	thumb_func_start sub_809F63C
sub_809F63C: @ 809F63C
	push {r4,lr}
	adds r4, r0, 0
	bl sub_809FE80
	adds r0, r4, 0
	bl sub_809FC34
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_809F63C

	thumb_func_start sub_809F650
sub_809F650: @ 809F650
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A00A4
	adds r0, r4, 0
	bl sub_809FF64
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_809F650

	thumb_func_start sub_809F664
sub_809F664: @ 809F664
	push {r4,lr}
	adds r4, r0, 0
	bl sub_80A0390
	adds r0, r4, 0
	bl sub_80A015C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_809F664

	thumb_func_start sub_809F678
sub_809F678: @ 809F678
	push {lr}
	adds r3, r0, 0
	ldr r1, _0809F698
	ldrb r0, [r1, 0xE]
	cmp r0, 0
	bne _0809F69C
	ldr r2, [r1]
	ldrb r1, [r1, 0x9]
	movs r0, 0x64
	muls r1, r0
	adds r1, r2
	adds r0, r3, 0
	movs r2, 0x64
	bl memcpy
	b _0809F6AE
	.align 2, 0
_0809F698: .4byte 0x02018000
_0809F69C:
	ldr r0, [r1]
	ldrb r2, [r1, 0x9]
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 4
	adds r0, r1
	adds r1, r3, 0
	bl sub_803B4B4
_0809F6AE:
	pop {r0}
	bx r0
	thumb_func_end sub_809F678

	thumb_func_start sub_809F6B4
sub_809F6B4: @ 809F6B4
	push {r4-r7,lr}
	sub sp, 0xC
	adds r4, r0, 0
	adds r7, r1, 0
	ldrb r0, [r7]
	cmp r0, 0
	beq _0809F6D2
	cmp r0, 0x1
	beq _0809F718
	adds r0, r4, 0
	bl sub_80A1808
	lsls r0, 24
	lsrs r0, 24
	b _0809F756
_0809F6D2:
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r6, r0, 0
	lsls r0, r5, 3
	ldr r1, _0809F70C
	adds r0, r1
	ldr r1, _0809F710
	lsls r2, r5, 2
	adds r2, r1
	ldrb r1, [r2]
	ldrb r2, [r2, 0x1]
	movs r3, 0x80
	lsls r3, 18
	ldr r4, _0809F714
	ldr r4, [r4, 0x4]
	str r4, [sp]
	str r5, [sp, 0x4]
	str r6, [sp, 0x8]
	bl sub_800D334
	b _0809F74E
	.align 2, 0
_0809F70C: .4byte gMonFrontPicTable
_0809F710: .4byte gMonFrontPicCoords
_0809F714: .4byte gUnknown_081FAF4C
_0809F718:
	adds r0, r4, 0
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0
	movs r1, 0
	bl GetMonData
	adds r6, r0, 0
	adds r0, r4, 0
	movs r1, 0x1
	bl GetMonData
	adds r1, r0, 0
	adds r0, r5, 0
	adds r2, r6, 0
	bl sub_80409C8
	adds r4, r0, 0
	bl LoadCompressedObjectPalette
	ldrh r0, [r4, 0x4]
	movs r1, 0x1
	bl GetMonSpriteTemplate_803C56C
_0809F74E:
	ldrb r0, [r7]
	adds r0, 0x1
	strb r0, [r7]
	movs r0, 0xFF
_0809F756:
	add sp, 0xC
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_809F6B4

	thumb_func_start sub_809F760
sub_809F760: @ 809F760
	push {lr}
	lsls r1, 24
	lsrs r1, 24
	adds r2, r1, 0
	cmp r1, 0x1
	beq _0809F780
	cmp r1, 0x1
	bgt _0809F776
	cmp r1, 0
	beq _0809F77C
	b _0809F788
_0809F776:
	cmp r2, 0x2
	beq _0809F784
	b _0809F788
_0809F77C:
	movs r1, 0xD
	b _0809F78A
_0809F780:
	movs r1, 0xE
	b _0809F78A
_0809F784:
	movs r1, 0xF
	b _0809F78A
_0809F788:
	movs r1, 0x10
_0809F78A:
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_809F760

	thumb_func_start sub_809F798
sub_809F798: @ 809F798
	push {lr}
	lsls r1, 24
	lsrs r1, 24
	adds r2, r1, 0
	cmp r1, 0x1
	beq _0809F7B8
	cmp r1, 0x1
	bgt _0809F7AE
	cmp r1, 0
	beq _0809F7B4
	b _0809F7C0
_0809F7AE:
	cmp r2, 0x2
	beq _0809F7BC
	b _0809F7C0
_0809F7B4:
	movs r1, 0x11
	b _0809F7C2
_0809F7B8:
	movs r1, 0x12
	b _0809F7C2
_0809F7BC:
	movs r1, 0x13
	b _0809F7C2
_0809F7C0:
	movs r1, 0x14
_0809F7C2:
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	pop {r1}
	bx r1
	thumb_func_end sub_809F798

	thumb_func_start sub_809F7D0
sub_809F7D0: @ 809F7D0
	push {r4,lr}
	sub sp, 0x64
	mov r0, sp
	bl sub_809F678
	ldr r4, _0809F804
	adds r0, r4, 0
	adds r0, 0x79
	ldrb r1, [r0]
	mov r0, sp
	bl sub_809F760
	lsls r0, 16
	lsrs r0, 16
	bl sub_806F7B8
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809F808
	ldrb r0, [r4, 0x8]
	cmp r0, 0x3
	beq _0809F808
	movs r0, 0
	b _0809F80A
	.align 2, 0
_0809F804: .4byte 0x02018000
_0809F808:
	movs r0, 0x1
_0809F80A:
	add sp, 0x64
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_809F7D0

	thumb_func_start sub_809F814
sub_809F814: @ 809F814
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r6, r0, 3
	ldr r0, _0809F83C
	mov r8, r0
	adds r4, r6, r0
	ldrh r1, [r4, 0x1C]
	movs r2, 0x1C
	ldrsh r0, [r4, r2]
	cmp r0, 0x3
	bgt _0809F840
	adds r0, r1, 0x1
	strh r0, [r4, 0x1C]
	b _0809F9C0
	.align 2, 0
_0809F83C: .4byte gUnknown_03004B28
_0809F840:
	ldr r7, _0809F874
	ldrh r1, [r7, 0x2E]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _0809F880
	mov r0, r8
	subs r0, 0x8
	adds r0, r6, r0
	ldr r1, _0809F878
	str r1, [r0]
	movs r0, 0x4
	strh r0, [r4]
	movs r0, 0x1
	strh r0, [r4, 0x1A]
	ldr r2, _0809F87C
	ldrh r0, [r4, 0x1E]
	adds r2, 0x79
	strb r0, [r2]
	movs r1, 0x1
	negs r1, r1
	adds r0, r5, 0
	bl sub_809E8F0
	b _0809F9C0
	.align 2, 0
_0809F874: .4byte gMain
_0809F878: .4byte sub_809E260
_0809F87C: .4byte 0x02018000
_0809F880:
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _0809F8B4
	mov r0, r8
	subs r0, 0x8
	adds r0, r6, r0
	ldr r1, _0809F8AC
	str r1, [r0]
	movs r0, 0x4
	strh r0, [r4]
	movs r0, 0x1
	strh r0, [r4, 0x1A]
	ldr r2, _0809F8B0
	ldrh r0, [r4, 0x1E]
	adds r2, 0x79
	strb r0, [r2]
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_809E8F0
	b _0809F9C0
	.align 2, 0
_0809F8AC: .4byte sub_809E260
_0809F8B0: .4byte 0x02018000
_0809F8B4:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	bne _0809F8C8
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _0809F918
_0809F8C8:
	ldr r1, _0809F90C
	ldrb r0, [r1, 0xB]
	cmp r0, 0x2
	beq _0809F9C0
	cmp r0, 0x3
	bne _0809F8F4
	adds r0, r1, 0
	adds r0, 0x79
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0809F8E8
	adds r0, r1, 0
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	beq _0809F8F4
_0809F8E8:
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x12
	bl MenuZeroFillWindowRect
_0809F8F4:
	ldr r1, _0809F910
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809F914
	str r1, [r0]
	movs r1, 0x1
	negs r1, r1
	adds r0, r5, 0
	b _0809F972
	.align 2, 0
_0809F90C: .4byte 0x02018000
_0809F910: .4byte gTasks
_0809F914: .4byte sub_809E260
_0809F918:
	ldrh r1, [r7, 0x2E]
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _0809F92E
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _0809F994
_0809F92E:
	ldr r1, _0809F988
	adds r2, r1, 0
	adds r2, 0x76
	ldrb r0, [r1, 0xB]
	ldrb r2, [r2]
	cmp r0, r2
	beq _0809F9C0
	cmp r0, 0x2
	bne _0809F960
	adds r0, r1, 0
	adds r0, 0x79
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _0809F954
	adds r0, r1, 0
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	beq _0809F960
_0809F954:
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x12
	bl MenuZeroFillWindowRect
_0809F960:
	ldr r1, _0809F98C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809F990
	str r1, [r0]
	adds r0, r5, 0
	movs r1, 0x1
_0809F972:
	bl sub_809F134
	ldrb r1, [r4, 0x1E]
	movs r0, 0x1
	bl sub_80A1488
	ldrb r1, [r4, 0x1E]
	movs r0, 0x1
	bl sub_80A1654
	b _0809F9C0
	.align 2, 0
_0809F988: .4byte 0x02018000
_0809F98C: .4byte gTasks
_0809F990: .4byte sub_809E260
_0809F994:
	ldrh r1, [r7, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _0809F9A6
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _0809F9C0
_0809F9A6:
	ldrb r1, [r4, 0x1E]
	movs r0, 0x2
	bl sub_80A1488
	ldrb r1, [r4, 0x1E]
	movs r0, 0x2
	bl sub_80A1654
	mov r0, r8
	subs r0, 0x8
	adds r0, r6, r0
	ldr r1, _0809F9CC
	str r1, [r0]
_0809F9C0:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809F9CC: .4byte sub_809E260
	thumb_func_end sub_809F814

	thumb_func_start sub_809F9D0
sub_809F9D0: @ 809F9D0
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r6, _0809FA24
	adds r2, r4, r6
	movs r0, 0
	strh r0, [r2, 0x1C]
	strh r1, [r2, 0x1E]
	movs r5, 0x2
	negs r5, r5
	adds r0, r5, 0
	movs r1, 0x4
	bl sub_80A1488
	adds r0, r5, 0
	movs r1, 0x4
	bl sub_80A1654
	movs r0, 0xB
	movs r1, 0xF
	movs r2, 0x1C
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	ldr r0, _0809FA28
	movs r1, 0xB
	movs r2, 0xF
	bl MenuPrint
	subs r6, 0x8
	adds r4, r6
	ldr r0, _0809FA2C
	str r0, [r4]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809FA24: .4byte gUnknown_03004B28
_0809FA28: .4byte gOtherText_CantForgetHMs
_0809FA2C: .4byte sub_809F814
	thumb_func_end sub_809F9D0

	thumb_func_start sub_809FA30
sub_809FA30: @ 809FA30
	ldr r0, _0809FA38
	adds r0, 0x7A
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0809FA38: .4byte 0x02018000
	thumb_func_end sub_809FA30

	thumb_func_start GetStringCenterAlignXOffsetWithLetterSpacing
GetStringCenterAlignXOffsetWithLetterSpacing: @ 809FA3C
	push {r4,lr}
	lsls r0, 24
	lsls r1, 24
	lsls r2, 24
	lsls r3, 24
	lsrs r2, 23
	lsrs r3, 18
	ldr r4, _0809FA70
	adds r3, r4
	adds r2, r3
	lsrs r1, 12
	lsrs r0, 23
	movs r4, 0x80
	lsls r4, 2
	adds r3, r4, 0
	adds r0, r3
	adds r1, r0
	adds r0, r1, 0
	adds r0, 0x80
	strh r0, [r2]
	adds r2, 0x40
	adds r1, 0x81
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809FA70: .4byte 0x0600f000
	thumb_func_end GetStringCenterAlignXOffsetWithLetterSpacing

	thumb_func_start GetStringCenterAlignXOffset
GetStringCenterAlignXOffset: @ 809FA74
	push {r4,lr}
	adds r4, r1, 0
	adds r3, r2, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r3, 24
	lsrs r3, 24
	movs r1, 0xF
	adds r2, r4, 0
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end GetStringCenterAlignXOffset

	thumb_func_start sub_809FA94
sub_809FA94: @ 809FA94
	push {lr}
	bl sub_8040CB4
	lsls r0, 24
	cmp r0, 0
	beq _0809FAB4
	ldr r0, _0809FAB0
	movs r1, 0x4
	movs r2, 0x2
	bl LoadPalette
	movs r0, 0x1
	b _0809FAC0
	.align 2, 0
_0809FAB0: .4byte gUnknown_083C157E
_0809FAB4:
	ldr r0, _0809FAC4
	movs r1, 0x4
	movs r2, 0x2
	bl LoadPalette
	movs r0, 0
_0809FAC0:
	pop {r1}
	bx r1
	.align 2, 0
_0809FAC4: .4byte gUnknown_083C157C
	thumb_func_end sub_809FA94

	thumb_func_start sub_809FAC8
sub_809FAC8: @ 809FAC8
	push {r4-r6,lr}
	sub sp, 0xC
	adds r5, r0, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	beq _0809FB28
	movs r0, 0x1
	movs r1, 0x2
	movs r2, 0x4
	movs r3, 0x3
	bl MenuZeroFillWindowRect
	movs r0, 0x3
	movs r1, 0x10
	movs r2, 0x9
	movs r3, 0x11
	bl MenuZeroFillWindowRect
	movs r0, 0
	movs r1, 0xC
	movs r2, 0xB
	movs r3, 0xF
	bl MenuZeroFillWindowRect
	ldr r4, _0809FB20
	adds r0, r5, 0
	adds r1, r4, 0
	bl GetMonNickname
	adds r0, r4, 0
	movs r1, 0xD
	movs r2, 0x3
	movs r3, 0x10
	bl sub_80A1FF8
	ldr r0, _0809FB24
	movs r1, 0x4
	movs r2, 0x2
	bl LoadPalette
	b _0809FBD6
	.align 2, 0
_0809FB20: .4byte gStringVar1
_0809FB24: .4byte gUnknown_083C157C
_0809FB28:
	adds r0, r5, 0
	bl sub_809FA94
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r5, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl sub_80406D8
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, _0809FB6C
	cmp r4, r0
	beq _0809FB96
	cmp r6, 0
	bne _0809FB70
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0x2
	bl GetStringCenterAlignXOffset
	movs r0, 0x11
	str r0, [sp]
	movs r0, 0x10
	str r0, [sp, 0x4]
	movs r0, 0x1
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0xD
	b _0809FB8C
	.align 2, 0
_0809FB6C: .4byte 0x0000ffff
_0809FB70:
	movs r0, 0x2
	movs r1, 0x8
	movs r2, 0x1
	movs r3, 0x2
	bl GetStringCenterAlignXOffsetWithLetterSpacing
	movs r0, 0x11
	str r0, [sp]
	movs r0, 0x10
	str r0, [sp, 0x4]
	movs r0, 0x1
	str r0, [sp, 0x8]
	adds r0, r4, 0
	movs r1, 0x8
_0809FB8C:
	movs r2, 0x3
	movs r3, 0x2
	bl sub_80A1F98
	b _0809FBA2
_0809FB96:
	movs r0, 0x1
	movs r1, 0x2
	movs r2, 0x4
	movs r3, 0x3
	bl MenuZeroFillWindowRect
_0809FBA2:
	ldr r1, _0809FBE0
	adds r0, r1, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r1, r0, 0
	adds r0, r5, 0
	bl GetMonNickname
	adds r1, r0, 0
	movs r0, 0xFC
	strb r0, [r1]
	movs r0, 0x13
	strb r0, [r1, 0x1]
	movs r0, 0x3C
	strb r0, [r1, 0x2]
	movs r0, 0xFF
	strb r0, [r1, 0x3]
	ldr r0, _0809FBE0
	movs r1, 0x1
	movs r2, 0xC
	bl MenuPrint
	adds r0, r5, 0
	bl sub_80A0958
_0809FBD6:
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809FBE0: .4byte gStringVar1
	thumb_func_end sub_809FAC8

	thumb_func_start sub_809FBE4
sub_809FBE4: @ 809FBE4
	push {r4,lr}
	movs r4, 0
_0809FBE8:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80A1918
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x1B
	bls _0809FBE8
	movs r0, 0xB
	movs r1, 0x4
	movs r2, 0x1D
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_809FBE4

	thumb_func_start sub_809FC0C
sub_809FC0C: @ 809FC0C
	push {lr}
	ldr r0, _0809FC30
	movs r1, 0xB
	movs r2, 0x6
	bl MenuPrint
	movs r0, 0
	movs r1, 0x16
	movs r2, 0x4
	bl GetStringCenterAlignXOffset
	movs r0, 0x2
	movs r1, 0x17
	movs r2, 0x4
	bl GetStringCenterAlignXOffset
	pop {r0}
	bx r0
	.align 2, 0
_0809FC30: .4byte gOtherText_Type2
	thumb_func_end sub_809FC0C

	thumb_func_start sub_809FC34
sub_809FC34: @ 809FC34
	push {r4-r6,lr}
	sub sp, 0xC
	adds r6, r0, 0
	movs r4, 0
_0809FC3C:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80A1918
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _0809FC3C
	movs r0, 0xB
	movs r1, 0x9
	movs r2, 0x1C
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	adds r0, r6, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	beq _0809FD1C
	ldr r5, _0809FCD0
	adds r0, r5, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r5, r0, 0
	ldr r1, _0809FCD4
	bl StringCopy
	adds r5, r0, 0
	ldr r4, _0809FCD8
	adds r1, r4, 0
	bl StringCopy
	adds r5, r0, 0
	movs r0, 0xFC
	strb r0, [r5]
	movs r0, 0x13
	strb r0, [r5, 0x1]
	movs r0, 0x4E
	strb r0, [r5, 0x2]
	movs r0, 0xFF
	strb r0, [r5, 0x3]
	ldr r0, _0809FCD0
	movs r1, 0xB
	movs r2, 0x4
	bl MenuPrint
	movs r0, 0x1
	str r0, [sp]
	adds r0, r4, 0
	movs r1, 0xD
	movs r2, 0xC1
	movs r3, 0x20
	bl sub_80A1EF8
	movs r0, 0x9
	movs r1, 0x78
	movs r2, 0x30
	movs r3, 0
	bl sub_80A198C
	adds r0, r6, 0
	movs r1, 0x20
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	adds r1, r0, 0
	cmp r0, 0x5
	bhi _0809FCE0
	ldr r0, _0809FCDC
	b _0809FCF2
	.align 2, 0
_0809FCD0: .4byte gStringVar1
_0809FCD4: .4byte gOtherText_OriginalTrainer
_0809FCD8: .4byte gOtherText_FiveQuestionsAndSlash
_0809FCDC: .4byte gOtherText_EggAbout
_0809FCE0:
	cmp r0, 0xA
	bhi _0809FCEC
	ldr r0, _0809FCE8
	b _0809FCF2
	.align 2, 0
_0809FCE8: .4byte gOtherText_EggSoon
_0809FCEC:
	cmp r1, 0x28
	bhi _0809FD00
	ldr r0, _0809FCFC
_0809FCF2:
	movs r1, 0xB
	movs r2, 0x9
	bl MenuPrint
	b _0809FD0A
	.align 2, 0
_0809FCFC: .4byte gOtherText_EggSomeTime
_0809FD00:
	ldr r0, _0809FD18
	movs r1, 0xB
	movs r2, 0x9
	bl MenuPrint
_0809FD0A:
	adds r0, r6, 0
	movs r1, 0xB
	movs r2, 0xE
	bl sub_80A0708
	b _0809FE4C
	.align 2, 0
_0809FD18: .4byte gOtherText_EggLongTime
_0809FD1C:
	ldr r4, _0809FD64
	adds r0, r6, 0
	movs r1, 0x7
	adds r2, r4, 0
	bl GetMonData
	adds r0, r6, 0
	movs r1, 0x3
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl ConvertInternationalString
	ldr r5, _0809FD68
	adds r0, r5, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r5, r0, 0
	ldr r1, _0809FD6C
	bl StringCopy
	adds r5, r0, 0
	adds r0, r6, 0
	movs r1, 0x31
	bl GetMonData
	cmp r0, 0
	bne _0809FD70
	adds r0, r5, 0
	movs r1, 0x9
	b _0809FD74
	.align 2, 0
_0809FD64: .4byte gStringVar2
_0809FD68: .4byte gStringVar1
_0809FD6C: .4byte gOtherText_OriginalTrainer
_0809FD70:
	adds r0, r5, 0
	movs r1, 0xA
_0809FD74:
	bl sub_80A1E58
	adds r5, r0, 0
	ldr r1, _0809FE54
	adds r0, r5, 0
	bl StringCopy
	adds r5, r0, 0
	movs r0, 0xFC
	strb r0, [r5]
	movs r0, 0x13
	strb r0, [r5, 0x1]
	movs r0, 0x4E
	strb r0, [r5, 0x2]
	movs r0, 0xFF
	strb r0, [r5, 0x3]
	ldr r0, _0809FE58
	movs r1, 0xB
	movs r2, 0x4
	bl MenuPrint
	adds r0, r6, 0
	movs r1, 0x1
	bl GetMonData
	ldr r1, _0809FE5C
	ands r1, r0
	movs r0, 0xC1
	str r0, [sp]
	movs r0, 0x20
	str r0, [sp, 0x4]
	movs r0, 0x1
	str r0, [sp, 0x8]
	adds r0, r1, 0
	movs r1, 0xD
	movs r2, 0x5
	movs r3, 0x2
	bl sub_80A1F98
	adds r0, r6, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	ldr r2, _0809FE60
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r5, r1, r2
	ldrb r4, [r5, 0x6]
	adds r0, r4, 0
	movs r1, 0x78
	movs r2, 0x30
	movs r3, 0
	bl sub_80A198C
	ldrb r0, [r5, 0x7]
	cmp r4, r0
	beq _0809FDF8
	ldrb r0, [r5, 0x7]
	movs r1, 0xA0
	movs r2, 0x30
	movs r3, 0x1
	bl sub_80A198C
_0809FDF8:
	adds r0, r6, 0
	movs r1, 0xB
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r6, 0
	movs r1, 0x2E
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl GetAbilityBySpecies
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0xD
	muls r0, r4
	ldr r1, _0809FE64
	adds r0, r1
	movs r1, 0xD
	movs r2, 0xB
	movs r3, 0x9
	bl sub_80A1FF8
	ldr r0, _0809FE68
	lsls r4, 2
	adds r4, r0
	ldr r0, [r4]
	movs r1, 0xB
	movs r2, 0xB
	bl MenuPrint
	adds r0, r6, 0
	movs r1, 0xB
	movs r2, 0xE
	bl sub_80A0798
_0809FE4C:
	add sp, 0xC
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809FE54: .4byte gStringVar2
_0809FE58: .4byte gStringVar1
_0809FE5C: .4byte 0x0000ffff
_0809FE60: .4byte gBaseStats
_0809FE64: .4byte gAbilityNames
_0809FE68: .4byte gAbilityDescriptions
	thumb_func_end sub_809FC34

	thumb_func_start sub_809FE6C
sub_809FE6C: @ 809FE6C
	push {r4,lr}
	adds r4, r0, 0
	bl sub_809FC0C
	adds r0, r4, 0
	bl sub_809FC34
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_809FE6C

	thumb_func_start sub_809FE80
sub_809FE80: @ 809FE80
	push {lr}
	movs r0, 0xE
	movs r1, 0x4
	movs r2, 0x12
	movs r3, 0x5
	bl MenuZeroFillWindowRect
	movs r0, 0x19
	movs r1, 0x4
	movs r2, 0x1E
	movs r3, 0x5
	bl MenuZeroFillWindowRect
	movs r0, 0xB
	movs r1, 0x9
	movs r2, 0x1C
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r0, 0xB
	movs r1, 0xE
	movs r2, 0x1C
	movs r3, 0x11
	bl MenuZeroFillWindowRect
	pop {r0}
	bx r0
	thumb_func_end sub_809FE80

	thumb_func_start sub_809FEB8
sub_809FEB8: @ 809FEB8
	push {r4,lr}
	sub sp, 0x4
	ldr r0, _0809FF40
	movs r1, 0xD
	movs r2, 0xB
	movs r3, 0xE
	bl sub_80A1FF8
	ldr r0, _0809FF44
	movs r1, 0xD
	movs r2, 0xB
	movs r3, 0x10
	bl sub_80A1FF8
	ldr r0, _0809FF48
	movs r1, 0x15
	movs r2, 0x10
	bl MenuPrint
	ldr r0, _0809FF4C
	movs r4, 0x2A
	str r4, [sp]
	movs r1, 0xD
	movs r2, 0xB
	movs r3, 0x7
	bl sub_80A1F48
	ldr r0, _0809FF50
	str r4, [sp]
	movs r1, 0xD
	movs r2, 0xB
	movs r3, 0x9
	bl sub_80A1F48
	ldr r0, _0809FF54
	str r4, [sp]
	movs r1, 0xD
	movs r2, 0xB
	movs r3, 0xB
	bl sub_80A1F48
	ldr r0, _0809FF58
	movs r4, 0x24
	str r4, [sp]
	movs r1, 0xD
	movs r2, 0x16
	movs r3, 0x7
	bl sub_80A1F48
	ldr r0, _0809FF5C
	str r4, [sp]
	movs r1, 0xD
	movs r2, 0x16
	movs r3, 0x9
	bl sub_80A1F48
	ldr r0, _0809FF60
	str r4, [sp]
	movs r1, 0xD
	movs r2, 0x16
	movs r3, 0xB
	bl sub_80A1F48
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809FF40: .4byte gOtherText_ExpPoints
_0809FF44: .4byte gOtherText_NextLv
_0809FF48: .4byte gOtherText_Terminator18
_0809FF4C: .4byte gOtherText_HP
_0809FF50: .4byte gOtherText_Attack
_0809FF54: .4byte gOtherText_Defense
_0809FF58: .4byte gOtherText_SpAtk
_0809FF5C: .4byte gOtherText_SpDef
_0809FF60: .4byte gOtherText_Speed
	thumb_func_end sub_809FEB8

	thumb_func_start sub_809FF64
sub_809FF64: @ 809FF64
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r4, 0
_0809FF6A:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80A1918
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _0809FF6A
	adds r0, r5, 0
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xB
	movs r2, 0x4
	bl sub_80A0BF4
	adds r0, r5, 0
	bl sub_80A0B88
	ldr r4, _080A008C
	adds r0, r5, 0
	movs r1, 0x19
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	movs r1, 0x1D
	movs r2, 0xE
	bl sub_8072B4C
	adds r0, r5, 0
	movs r1, 0x17
	movs r2, 0x10
	bl sub_80A0C80
	adds r0, r5, 0
	movs r1, 0x3B
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	movs r1, 0x10
	movs r2, 0x9
	movs r3, 0x32
	bl sub_8072BD8
	adds r0, r5, 0
	movs r1, 0x3C
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	movs r1, 0x10
	movs r2, 0xB
	movs r3, 0x32
	bl sub_8072BD8
	adds r0, r5, 0
	movs r1, 0x3E
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	movs r1, 0x1B
	movs r2, 0x7
	movs r3, 0x12
	bl sub_8072BD8
	adds r0, r5, 0
	movs r1, 0x3F
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	movs r1, 0x1B
	movs r2, 0x9
	movs r3, 0x12
	bl sub_8072BD8
	adds r0, r5, 0
	movs r1, 0x3D
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	movs r1, 0x1B
	movs r2, 0xB
	movs r3, 0x12
	bl sub_8072BD8
	adds r0, r5, 0
	movs r1, 0x39
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0x18
	movs r3, 0x1
	bl sub_8072C14
	adds r4, r0, 0
	movs r0, 0xBA
	strb r0, [r4]
	adds r4, 0x1
	adds r0, r5, 0
	movs r1, 0x3A
	bl GetMonData
	adds r1, r0, 0
	adds r0, r4, 0
	movs r2, 0x30
	movs r3, 0x1
	bl sub_8072C14
	ldr r0, _080A008C
	movs r1, 0x7E
	movs r2, 0x38
	movs r3, 0x1
	bl sub_80729D8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A008C: .4byte gStringVar1
	thumb_func_end sub_809FF64

	thumb_func_start sub_80A0090
sub_80A0090: @ 80A0090
	push {r4,lr}
	adds r4, r0, 0
	bl sub_809FEB8
	adds r0, r4, 0
	bl sub_809FF64
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A0090

	thumb_func_start sub_80A00A4
sub_80A00A4: @ 80A00A4
	push {lr}
	movs r0, 0xB
	movs r1, 0x4
	movs r2, 0x13
	movs r3, 0x5
	bl MenuZeroFillWindowRect
	movs r0, 0x10
	movs r1, 0x7
	movs r2, 0x15
	movs r3, 0x8
	bl MenuZeroFillWindowRect
	movs r0, 0x11
	movs r1, 0x9
	movs r2, 0x15
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r0, 0x1B
	movs r1, 0x7
	movs r2, 0x1D
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r0, 0x16
	movs r1, 0xE
	movs r2, 0x1C
	movs r3, 0xF
	bl MenuZeroFillWindowRect
	movs r0, 0x17
	movs r1, 0x10
	movs r2, 0x1C
	movs r3, 0x11
	bl MenuZeroFillWindowRect
	pop {r0}
	bx r0
	thumb_func_end sub_80A00A4

	thumb_func_start sub_80A00F4
sub_80A00F4: @ 80A00F4
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r2, _080A012C
	adds r0, r2, 0
	adds r0, 0x7C
	ldrh r0, [r0]
	cmp r0, 0
	bne _080A010A
	cmp r1, 0x4
	beq _080A0150
_080A010A:
	ldrb r0, [r2, 0xB]
	cmp r0, 0x2
	bne _080A0138
	ldr r0, _080A0130
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0xF
	bl sub_80A1FF8
	ldr r0, _080A0134
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0x11
	bl sub_80A1FF8
	b _080A0150
	.align 2, 0
_080A012C: .4byte 0x02018000
_080A0130: .4byte gOtherText_Power2
_080A0134: .4byte gOtherText_Accuracy2
_080A0138:
	ldr r0, _080A0154
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0xF
	bl sub_80A1FF8
	ldr r0, _080A0158
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0x11
	bl sub_80A1FF8
_080A0150:
	pop {r0}
	bx r0
	.align 2, 0
_080A0154: .4byte gOtherText_Appeal2
_080A0158: .4byte gOtherText_Jam2
	thumb_func_end sub_80A00F4

	thumb_func_start sub_80A015C
sub_80A015C: @ 80A015C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	movs r7, 0
_080A0168:
	mov r0, r8
	adds r1, r7, 0
	bl sub_809F760
	lsls r0, 16
	lsrs r6, r0, 16
	mov r0, r8
	adds r1, r7, 0
	bl sub_809F798
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	cmp r6, 0
	bne _080A01B8
	adds r0, r7, 0
	movs r1, 0x1
	bl sub_80A1918
	lsls r4, r7, 25
	movs r0, 0x80
	lsls r0, 19
	adds r4, r0
	lsrs r4, 24
	ldr r0, _080A01B0
	movs r1, 0xD
	movs r2, 0xF
	adds r3, r4, 0
	bl sub_80A1FF8
	ldr r0, _080A01B4
	movs r1, 0x1A
	adds r2, r4, 0
	bl MenuPrint
	b _080A0276
	.align 2, 0
_080A01B0: .4byte gOtherText_OneDash
_080A01B4: .4byte gOtherText_TwoDashes
_080A01B8:
	ldr r0, _080A01E0
	ldrb r0, [r0, 0xB]
	cmp r0, 0x2
	bne _080A01E8
	ldr r1, _080A01E4
	lsls r0, r6, 1
	adds r0, r6
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	lsls r4, r7, 1
	adds r2, r4, 0x4
	lsls r2, 27
	lsrs r2, 24
	movs r1, 0x57
	adds r3, r7, 0
	bl sub_80A198C
	b _080A020C
	.align 2, 0
_080A01E0: .4byte 0x02018000
_080A01E4: .4byte gBattleMoves
_080A01E8:
	ldr r1, _080A0290
	lsls r0, r6, 3
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 29
	lsrs r0, 5
	movs r1, 0x90
	lsls r1, 21
	adds r0, r1
	lsrs r0, 24
	lsls r4, r7, 1
	adds r2, r4, 0x4
	lsls r2, 27
	lsrs r2, 24
	movs r1, 0x57
	adds r3, r7, 0
	bl sub_80A198C
_080A020C:
	movs r0, 0xD
	muls r0, r6
	ldr r1, _080A0294
	adds r0, r1
	adds r5, r4, 0x4
	lsls r5, 24
	lsrs r5, 24
	movs r1, 0xD
	movs r2, 0xF
	adds r3, r5, 0
	bl sub_80A1FF8
	movs r0, 0x1
	movs r1, 0x18
	adds r2, r5, 0
	bl GetStringCenterAlignXOffset
	mov r0, r8
	movs r1, 0x15
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r6, 0
	adds r2, r7, 0
	bl CalculatePPWithBonus
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080A0298
	adds r0, r1, 0
	mov r1, r9
	movs r2, 0xE
	movs r3, 0x1
	bl sub_8072C14
	adds r1, r0, 0
	movs r0, 0xBA
	strb r0, [r1]
	adds r1, 0x1
	adds r0, r1, 0
	adds r1, r4, 0
	movs r2, 0x20
	movs r3, 0x1
	bl sub_8072C14
	ldr r0, _080A0298
	movs r1, 0x19
	adds r2, r5, 0
	bl MenuPrint
_080A0276:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x3
	bhi _080A0282
	b _080A0168
_080A0282:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0290: .4byte gContestMoves
_080A0294: .4byte gMoveNames
_080A0298: .4byte gStringVar1
	thumb_func_end sub_80A015C

	thumb_func_start sub_80A029C
sub_80A029C: @ 80A029C
	push {r4,r5,lr}
	ldr r1, _080A02B8
	adds r4, r1, 0
	adds r4, 0x7C
	ldrh r0, [r4]
	cmp r0, 0
	bne _080A02C0
	ldr r0, _080A02BC
	movs r1, 0xD
	movs r2, 0xF
	movs r3, 0xC
	bl sub_80A1FF8
	b _080A037E
	.align 2, 0
_080A02B8: .4byte 0x02018000
_080A02BC: .4byte gOtherText_CancelNoTerminator
_080A02C0:
	ldrh r5, [r4]
	ldrb r0, [r1, 0xB]
	cmp r0, 0x2
	bne _080A02E4
	ldr r1, _080A02E0
	lsls r4, r5, 1
	adds r0, r4, r5
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x2]
	movs r1, 0x57
	movs r2, 0x60
	movs r3, 0x4
	bl sub_80A198C
	b _080A0304
	.align 2, 0
_080A02E0: .4byte gBattleMoves
_080A02E4:
	ldr r1, _080A0320
	lsls r0, r5, 3
	adds r0, r1
	ldrb r0, [r0, 0x1]
	lsls r0, 29
	lsrs r0, 5
	movs r1, 0x90
	lsls r1, 21
	adds r0, r1
	lsrs r0, 24
	movs r1, 0x57
	movs r2, 0x60
	movs r3, 0x4
	bl sub_80A198C
	lsls r4, r5, 1
_080A0304:
	ldr r0, _080A0324
	ldrb r0, [r0, 0xB]
	cmp r0, 0x2
	bne _080A032C
	movs r0, 0xD
	muls r0, r5
	ldr r1, _080A0328
	adds r0, r1
	movs r1, 0xA
	movs r2, 0xF
	movs r3, 0xC
	bl sub_80A1FF8
	b _080A033E
	.align 2, 0
_080A0320: .4byte gContestMoves
_080A0324: .4byte 0x02018000
_080A0328: .4byte gMoveNames
_080A032C:
	movs r0, 0xD
	muls r0, r5
	ldr r1, _080A0384
	adds r0, r1
	movs r1, 0x9
	movs r2, 0xF
	movs r3, 0xC
	bl sub_80A1FF8
_080A033E:
	movs r0, 0x1
	movs r1, 0x18
	movs r2, 0xC
	bl GetStringCenterAlignXOffset
	ldr r2, _080A0388
	ldr r1, _080A038C
	adds r0, r4, r5
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x4]
	adds r0, r2, 0
	adds r1, r4, 0
	movs r2, 0xE
	movs r3, 0x1
	bl sub_8072C14
	adds r2, r0, 0
	movs r0, 0xBA
	strb r0, [r2]
	adds r2, 0x1
	adds r0, r2, 0
	adds r1, r4, 0
	movs r2, 0x20
	movs r3, 0x1
	bl sub_8072C14
	ldr r0, _080A0388
	movs r1, 0x19
	movs r2, 0xC
	bl MenuPrint
_080A037E:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0384: .4byte gMoveNames
_080A0388: .4byte gStringVar1
_080A038C: .4byte gBattleMoves
	thumb_func_end sub_80A029C

	thumb_func_start sub_80A0390
sub_80A0390: @ 80A0390
	push {r4,lr}
	movs r4, 0
_080A0394:
	lsls r3, r4, 1
	adds r1, r3, 0x4
	lsls r1, 24
	lsrs r1, 24
	adds r3, 0x5
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0xF
	movs r2, 0x1C
	bl MenuZeroFillWindowRect
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080A0394
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A0390

	thumb_func_start sub_80A03BC
sub_80A03BC: @ 80A03BC
	push {lr}
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0x4
	beq _080A03D0
	bl sub_809F760
	lsls r0, 16
	lsrs r1, r0, 16
	b _080A03E0
_080A03D0:
	ldr r0, _080A03E8
	adds r2, r0, 0
	adds r2, 0x7C
	ldrh r0, [r2]
	ldr r1, _080A03EC
	cmp r0, 0
	beq _080A03E0
	adds r1, r0, 0
_080A03E0:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A03E8: .4byte 0x02018000
_080A03EC: .4byte 0x0000ffff
	thumb_func_end sub_80A03BC

	thumb_func_start sub_80A03F0
sub_80A03F0: @ 80A03F0
	push {lr}
	ldrb r1, [r1]
	bl sub_80A03BC
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _080A0414
	ldrb r0, [r0, 0xB]
	cmp r0, 0x2
	bne _080A041C
	adds r0, r1, 0
	bl sub_80A04CC
	ldr r0, _080A0418
	bl sub_80A057C
	b _080A0422
	.align 2, 0
_080A0414: .4byte 0x02018000
_080A0418: .4byte 0x0000ffff
_080A041C:
	adds r0, r1, 0
	bl sub_80A057C
_080A0422:
	pop {r0}
	bx r0
	thumb_func_end sub_80A03F0

	thumb_func_start sub_80A0428
sub_80A0428: @ 80A0428
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r6, r1, 0
	ldrb r1, [r6]
	bl sub_80A03BC
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0xB
	movs r1, 0xF
	movs r2, 0x1C
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	ldr r0, _080A0454
	ldrb r0, [r0, 0xB]
	cmp r0, 0x2
	bne _080A0458
	adds r0, r4, 0
	bl sub_80A046C
	b _080A045E
	.align 2, 0
_080A0454: .4byte 0x02018000
_080A0458:
	adds r0, r4, 0
	bl sub_80A0498
_080A045E:
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_80A03F0
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A0428

	thumb_func_start sub_80A046C
sub_80A046C: @ 80A046C
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	ldr r0, _080A0490
	cmp r1, r0
	beq _080A048A
	ldr r0, _080A0494
	subs r1, 0x1
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	movs r1, 0xB
	movs r2, 0xF
	bl MenuPrint
_080A048A:
	pop {r0}
	bx r0
	.align 2, 0
_080A0490: .4byte 0x0000ffff
_080A0494: .4byte gMoveDescriptions
	thumb_func_end sub_80A046C

	thumb_func_start sub_80A0498
sub_80A0498: @ 80A0498
	push {lr}
	lsls r0, 16
	lsrs r3, r0, 16
	ldr r0, _080A04C0
	cmp r3, r0
	beq _080A04BC
	ldr r2, _080A04C4
	ldr r1, _080A04C8
	lsls r0, r3, 3
	adds r0, r1
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r2
	ldr r0, [r0]
	movs r1, 0xB
	movs r2, 0xF
	bl MenuPrint
_080A04BC:
	pop {r0}
	bx r0
	.align 2, 0
_080A04C0: .4byte 0x0000ffff
_080A04C4: .4byte gUnknown_083CADD4
_080A04C8: .4byte gContestMoves
	thumb_func_end sub_80A0498

	thumb_func_start sub_80A04CC
sub_80A04CC: @ 80A04CC
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	ldr r0, _080A0504
	cmp r4, r0
	beq _080A0572
	ldr r2, _080A0508
	lsls r1, r4, 1
	adds r0, r1, r4
	lsls r0, 2
	adds r2, r0, r2
	ldrb r0, [r2, 0x1]
	adds r5, r1, 0
	cmp r0, 0x1
	bhi _080A0514
	ldr r0, _080A050C
	ldr r1, _080A0510
	movs r2, 0x15
	movs r3, 0x1
	bl sub_8072C74
	ldr r0, _080A050C
	movs r1, 0x7
	movs r2, 0xF
	bl MenuPrint
	b _080A052A
	.align 2, 0
_080A0504: .4byte 0x0000ffff
_080A0508: .4byte gBattleMoves
_080A050C: .4byte gStringVar1
_080A0510: .4byte gOtherText_ThreeDashes2
_080A0514:
	ldr r0, _080A0550
	ldrb r1, [r2, 0x1]
	movs r2, 0x15
	movs r3, 0x1
	bl sub_8072C14
	ldr r0, _080A0550
	movs r1, 0x7
	movs r2, 0xF
	bl MenuPrint
_080A052A:
	ldr r0, _080A0554
	adds r1, r5, r4
	lsls r1, 2
	adds r1, r0
	ldrb r0, [r1, 0x3]
	cmp r0, 0
	bne _080A055C
	ldr r0, _080A0550
	ldr r1, _080A0558
	movs r2, 0x15
	movs r3, 0x1
	bl sub_8072C74
	ldr r0, _080A0550
	movs r1, 0x7
	movs r2, 0x11
	bl MenuPrint
	b _080A0572
	.align 2, 0
_080A0550: .4byte gStringVar1
_080A0554: .4byte gBattleMoves
_080A0558: .4byte gOtherText_ThreeDashes2
_080A055C:
	ldr r0, _080A0578
	ldrb r1, [r1, 0x3]
	movs r2, 0x15
	movs r3, 0x1
	bl sub_8072C14
	ldr r0, _080A0578
	movs r1, 0x7
	movs r2, 0x11
	bl MenuPrint
_080A0572:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0578: .4byte gStringVar1
	thumb_func_end sub_80A04CC

	thumb_func_start sub_80A057C
sub_80A057C: @ 80A057C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r0, _080A0648
	mov r8, r0
	ldr r0, _080A064C
	cmp r5, r0
	beq _080A063A
	ldr r1, _080A0650
	ldr r2, _080A0654
	lsls r3, r5, 3
	adds r0, r3, r2
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x1]
	mov r10, r2
	mov r9, r3
	cmp r4, 0xFF
	beq _080A05B8
	adds r0, r4, 0
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 24
	lsrs r4, r0, 24
_080A05B8:
	movs r2, 0
	movs r7, 0x3
	movs r6, 0xF3
	lsls r6, 2
_080A05C0:
	ldr r3, _080A0658
	cmp r4, 0xFF
	beq _080A05CC
	cmp r2, r4
	bcs _080A05CC
	adds r3, 0x1
_080A05CC:
	lsrs r0, r2, 2
	lsls r0, 5
	adds r1, r2, 0
	ands r1, r7
	adds r1, r0
	lsls r1, 1
	add r1, r8
	adds r1, r6
	strh r3, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _080A05C0
	ldr r0, _080A064C
	cmp r5, r0
	beq _080A063A
	mov r0, r9
	add r0, r10
	ldrb r0, [r0]
	lsls r0, 2
	ldr r1, _080A0650
	adds r0, r1
	ldrb r4, [r0, 0x2]
	cmp r4, 0xFF
	beq _080A060C
	adds r0, r4, 0
	movs r1, 0xA
	bl __udivsi3
	lsls r0, 24
	lsrs r4, r0, 24
_080A060C:
	movs r2, 0
	movs r6, 0x3
	ldr r5, _080A065C
_080A0612:
	ldr r3, _080A0660
	cmp r4, 0xFF
	beq _080A061E
	cmp r2, r4
	bcs _080A061E
	subs r3, 0x1
_080A061E:
	lsrs r0, r2, 2
	lsls r0, 5
	adds r1, r2, 0
	ands r1, r6
	adds r1, r0
	lsls r1, 1
	add r1, r8
	adds r1, r5
	strh r3, [r1]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x7
	bls _080A0612
_080A063A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0648: .4byte 0x06006800
_080A064C: .4byte 0x0000ffff
_080A0650: .4byte gContestEffects
_080A0654: .4byte gContestMoves
_080A0658: .4byte 0x00001039
_080A065C: .4byte 0x0000044c
_080A0660: .4byte 0x0000103d
	thumb_func_end sub_80A057C

	thumb_func_start sub_80A0664
sub_80A0664: @ 80A0664
	push {r4-r6,lr}
	adds r6, r0, 0
	ldr r0, _080A06A0
	ldr r1, [r0]
	ldr r0, _080A06A4
	cmp r1, r0
	bne _080A06B0
	bl GetMultiplayerId
	movs r1, 0x1
	eors r0, r1
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A06A8
	lsls r1, r0, 3
	subs r1, r0
	lsls r1, 2
	adds r0, r2, 0x4
	adds r0, r1, r0
	ldrh r5, [r0]
	ldr r4, _080A06AC
	adds r2, 0x8
	adds r1, r2
	adds r0, r4, 0
	bl StringCopy
	adds r0, r4, 0
	bl SkipExtCtrlCodes
	b _080A06C2
	.align 2, 0
_080A06A0: .4byte 0x02018000
_080A06A4: .4byte gEnemyParty
_080A06A8: .4byte gLinkPlayers
_080A06AC: .4byte gStringVar1
_080A06B0:
	bl sub_80BFB94
	adds r5, r0, 0
	ldr r0, _080A06F0
	ands r5, r0
	ldr r0, _080A06F4
	ldr r1, _080A06F8
	bl StringCopy
_080A06C2:
	adds r0, r6, 0
	movs r1, 0x1
	bl GetMonData
	ldr r1, _080A06F0
	ands r1, r0
	cmp r5, r1
	bne _080A06EA
	ldr r4, _080A06FC
	adds r0, r6, 0
	movs r1, 0x7
	adds r2, r4, 0
	bl GetMonData
	ldr r0, _080A06F4
	adds r1, r4, 0
	bl StringCompareWithoutExtCtrlCodes
	cmp r0, 0
	beq _080A0700
_080A06EA:
	movs r0, 0
	b _080A0702
	.align 2, 0
_080A06F0: .4byte 0x0000ffff
_080A06F4: .4byte gStringVar1
_080A06F8: .4byte gSaveBlock2
_080A06FC: .4byte gStringVar2
_080A0700:
	movs r0, 0x1
_080A0702:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A0664

	thumb_func_start sub_80A0708
sub_80A0708: @ 80A0708
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r4, r0, 0
	lsls r1, 24
	lsrs r5, r1, 24
	mov r9, r5
	lsls r2, 24
	lsrs r6, r2, 24
	mov r8, r6
	movs r1, 0x25
	bl GetMonData
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x2
	bls _080A073C
	ldr r0, _080A0738
	b _080A076E
	.align 2, 0
_080A0738: .4byte gOtherText_EggObtainedInTrade
_080A073C:
	adds r0, r4, 0
	movs r1, 0x23
	bl GetMonData
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0xFF
	bne _080A0754
	ldr r0, _080A0750
	b _080A076E
	.align 2, 0
_080A0750: .4byte gOtherText_EggNicePlace
_080A0754:
	adds r0, r4, 0
	bl sub_80A0664
	lsls r0, 24
	cmp r0, 0
	bne _080A0768
	ldr r0, _080A0764
	b _080A076E
	.align 2, 0
_080A0764: .4byte gOtherText_EggObtainedInTrade
_080A0768:
	cmp r7, 0xFD
	bne _080A077C
	ldr r0, _080A0778
_080A076E:
	adds r1, r5, 0
	adds r2, r6, 0
	bl MenuPrint
	b _080A0786
	.align 2, 0
_080A0778: .4byte gOtherText_EggHotSprings
_080A077C:
	ldr r0, _080A0794
	mov r1, r9
	mov r2, r8
	bl MenuPrint
_080A0786:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0794: .4byte gOtherText_EggDayCare
	thumb_func_end sub_80A0708

	thumb_func_start sub_80A0798
sub_80A0798: @ 80A0798
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r9, r1
	lsls r2, 24
	lsrs r2, 24
	mov r8, r2
	ldr r5, _080A0838
	bl GetNature
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080A083C
	lsls r0, r4, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r5, 0
	movs r2, 0xE
	bl sub_80A1E9C
	adds r5, r0, 0
	cmp r4, 0x5
	beq _080A07DA
	cmp r4, 0x15
	beq _080A07DA
	ldr r1, _080A0840
	bl StringCopy
	adds r5, r0, 0
_080A07DA:
	ldr r1, _080A0844
	adds r0, r5, 0
	bl StringCopy
	adds r5, r0, 0
	adds r0, r7, 0
	bl sub_80A0664
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A0898
	adds r0, r7, 0
	movs r1, 0x23
	bl GetMonData
	lsls r0, 24
	lsrs r6, r0, 24
	adds r0, r7, 0
	movs r1, 0x24
	bl GetMonData
	cmp r0, 0
	bne _080A0850
	adds r0, r5, 0
	movs r1, 0x5
	bl sub_80A203C
	adds r5, r0, 0
	movs r0, 0xFE
	strb r0, [r5]
	adds r5, 0x1
	ldr r4, _080A0848
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_80FC02C
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0xE
	bl sub_80A1E9C
	adds r5, r0, 0
	ldr r1, _080A084C
	bl StringCopy
	b _080A0934
	.align 2, 0
_080A0838: .4byte gStringVar4
_080A083C: .4byte gNatureNames
_080A0840: .4byte gOtherText_Terminator4
_080A0844: .4byte gOtherText_Nature
_080A0848: .4byte gStringVar1
_080A084C: .4byte gOtherText_Egg2
_080A0850:
	cmp r6, 0x57
	bhi _080A08E8
	adds r0, r7, 0
	movs r1, 0x24
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl sub_80A203C
	adds r5, r0, 0
	movs r0, 0xFE
	strb r0, [r5]
	adds r5, 0x1
	ldr r4, _080A0890
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_80FC02C
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0xE
	bl sub_80A1E9C
	adds r5, r0, 0
	ldr r1, _080A0894
	bl StringCopy
	b _080A0934
	.align 2, 0
_080A0890: .4byte gStringVar1
_080A0894: .4byte gOtherText_Met
_080A0898:
	adds r0, r7, 0
	movs r1, 0x25
	bl GetMonData
	lsls r0, 24
	movs r1, 0xFF
	lsls r1, 24
	adds r0, r1
	lsrs r0, 24
	cmp r0, 0x2
	bhi _080A08E8
	adds r0, r7, 0
	movs r1, 0x23
	bl GetMonData
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0xFF
	bne _080A08E4
	adds r0, r7, 0
	movs r1, 0x24
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl sub_80A203C
	adds r5, r0, 0
	movs r0, 0xFE
	strb r0, [r5]
	adds r5, 0x1
	ldr r1, _080A08E0
	b _080A08F0
	.align 2, 0
_080A08E0: .4byte gOtherText_FatefulEncounter
_080A08E4:
	cmp r6, 0x57
	bls _080A08FC
_080A08E8:
	movs r0, 0xFE
	strb r0, [r5]
	adds r5, 0x1
	ldr r1, _080A08F8
_080A08F0:
	adds r0, r5, 0
	bl StringCopy
	b _080A0934
	.align 2, 0
_080A08F8: .4byte gOtherText_ObtainedInTrade
_080A08FC:
	adds r0, r7, 0
	movs r1, 0x24
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r5, 0
	bl sub_80A203C
	adds r5, r0, 0
	movs r0, 0xFE
	strb r0, [r5]
	adds r5, 0x1
	ldr r4, _080A094C
	adds r0, r4, 0
	adds r1, r6, 0
	bl sub_80FC02C
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0xE
	bl sub_80A1E9C
	adds r5, r0, 0
	ldr r1, _080A0950
	bl StringCopy
_080A0934:
	ldr r0, _080A0954
	mov r1, r9
	mov r2, r8
	bl MenuPrint
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A094C: .4byte gStringVar1
_080A0950: .4byte gOtherText_Met2
_080A0954: .4byte gStringVar4
	thumb_func_end sub_80A0798

	thumb_func_start sub_80A0958
sub_80A0958: @ 80A0958
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	mov r8, r0
	movs r1, 0xB
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	ldr r2, _080A0A24
	adds r0, r2, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r2, r0, 0
	movs r6, 0xFC
	strb r6, [r2]
	movs r0, 0x11
	strb r0, [r2, 0x1]
	movs r0, 0x7
	strb r0, [r2, 0x2]
	movs r0, 0xBA
	strb r0, [r2, 0x3]
	adds r2, 0x4
	movs r0, 0xB
	adds r1, r4, 0
	muls r1, r0
	ldr r0, _080A0A28
	adds r1, r0
	adds r0, r2, 0
	bl StringCopy
	adds r2, r0, 0
	strb r6, [r2]
	movs r0, 0x13
	mov r10, r0
	strb r0, [r2, 0x1]
	movs r0, 0x50
	strb r0, [r2, 0x2]
	movs r0, 0xFF
	mov r9, r0
	strb r0, [r2, 0x3]
	ldr r5, _080A0A24
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0xE
	bl MenuPrint
	movs r0, 0x3
	movs r1, 0x10
	movs r2, 0x9
	movs r3, 0x11
	bl MenuZeroFillWindowRect
	mov r0, r8
	movs r1, 0x38
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r2, r0, 0
	movs r0, 0x34
	strb r0, [r2]
	adds r2, 0x1
	adds r0, r2, 0
	adds r1, r4, 0
	bl ConvertIntToDecimalString
	adds r2, r0, 0
	strb r6, [r2]
	mov r0, r10
	strb r0, [r2, 0x1]
	movs r0, 0x20
	strb r0, [r2, 0x2]
	mov r0, r9
	strb r0, [r2, 0x3]
	adds r0, r5, 0
	movs r1, 0x3
	movs r2, 0x10
	bl MenuPrint
	mov r0, r8
	movs r1, 0x7
	movs r2, 0x10
	bl sub_80A0A2C
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0A24: .4byte gStringVar1
_080A0A28: .4byte gSpeciesNames
	thumb_func_end sub_80A0958

	thumb_func_start sub_80A0A2C
sub_80A0A2C: @ 80A0A2C
	push {r4-r6,lr}
	adds r6, r0, 0
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r4, r2, 24
	movs r1, 0x41
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x20
	beq _080A0A84
	cmp r0, 0x1D
	beq _080A0A84
	adds r0, r6, 0
	bl GetMonGender
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _080A0A6E
	cmp r0, 0xFE
	beq _080A0A78
	adds r3, r4, 0x1
	lsls r3, 24
	lsrs r3, 24
	adds r0, r5, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl MenuZeroFillWindowRect
	b _080A0A84
_080A0A6E:
	ldr r0, _080A0A74
	movs r1, 0xB
	b _080A0A7C
	.align 2, 0
_080A0A74: .4byte gOtherText_MaleSymbol2
_080A0A78:
	ldr r0, _080A0A8C
	movs r1, 0xC
_080A0A7C:
	adds r2, r5, 0
	adds r3, r4, 0
	bl sub_80A1FF8
_080A0A84:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0A8C: .4byte gOtherText_FemaleSymbolAndLv
	thumb_func_end sub_80A0A2C

	thumb_func_start sub_80A0A90
sub_80A0A90: @ 80A0A90
	push {r4,r5,lr}
	adds r5, r0, 0
	movs r1, 0x32
	bl GetMonData
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x33
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x34
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x35
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x36
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x43
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x44
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x45
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x46
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x47
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x48
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x49
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x4A
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x4B
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x4C
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x4D
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r5, 0
	movs r1, 0x4E
	bl GetMonData
	adds r4, r0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A0A90

	thumb_func_start sub_80A0B88
sub_80A0B88: @ 80A0B88
	push {r4,r5,lr}
	bl sub_80A0A90
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _080A0BA8
	ldr r0, _080A0BA0
	ldr r1, _080A0BA4
	bl StringCopy
	b _080A0BD8
	.align 2, 0
_080A0BA0: .4byte gStringVar1
_080A0BA4: .4byte gOtherText_None
_080A0BA8:
	ldr r4, _080A0BE8
	ldr r1, _080A0BEC
	adds r0, r4, 0
	bl StringCopy
	adds r0, r4, 0
	bl StringLength
	lsls r0, 24
	lsrs r0, 24
	subs r4, 0x2
	adds r0, r4
	movs r1, 0xFC
	strb r1, [r0]
	movs r1, 0x14
	strb r1, [r0, 0x1]
	movs r1, 0x6
	strb r1, [r0, 0x2]
	adds r0, 0x3
	adds r1, r5, 0
	movs r2, 0x1
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
_080A0BD8:
	ldr r0, _080A0BF0
	movs r1, 0x15
	movs r2, 0x4
	bl MenuPrint
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0BE8: .4byte gStringVar1
_080A0BEC: .4byte gOtherText_Ribbons00
_080A0BF0: .4byte gUnknown_083C15AE
	thumb_func_end sub_80A0B88

	thumb_func_start sub_80A0BF4
sub_80A0BF4: @ 80A0BF4
	push {r4-r7,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	cmp r5, 0xAF
	bne _080A0C48
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A0C48
	bl sub_806B528
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A0C48
	ldr r0, _080A0C40
	ldrb r0, [r0, 0x9]
	cmp r0, 0x1
	beq _080A0C2E
	cmp r0, 0x4
	beq _080A0C2E
	cmp r0, 0x5
	bne _080A0C48
_080A0C2E:
	ldr r4, _080A0C44
	adds r0, r5, 0
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	b _080A0C68
	.align 2, 0
_080A0C40: .4byte 0x02018000
_080A0C44: .4byte gStringVar1
_080A0C48:
	cmp r5, 0
	bne _080A0C60
	ldr r0, _080A0C58
	ldr r1, _080A0C5C
	bl StringCopy
	b _080A0C68
	.align 2, 0
_080A0C58: .4byte gStringVar1
_080A0C5C: .4byte gOtherText_None
_080A0C60:
	ldr r1, _080A0C78
	adds r0, r5, 0
	bl itemid_copy_name
_080A0C68:
	ldr r0, _080A0C7C
	adds r1, r7, 0
	adds r2, r6, 0
	bl MenuPrint
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0C78: .4byte gStringVar1
_080A0C7C: .4byte gUnknown_083C15B4
	thumb_func_end sub_80A0BF4

	thumb_func_start sub_80A0C80
sub_80A0C80: @ 80A0C80
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r1, 24
	lsrs r1, 24
	mov r10, r1
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp]
	movs r0, 0
	mov r9, r0
	movs r6, 0
	movs r7, 0
	adds r0, r4, 0
	movs r1, 0x19
	bl GetMonData
	mov r8, r0
	adds r0, r4, 0
	movs r1, 0x38
	bl GetMonData
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r4, 0
	movs r1, 0xB
	bl GetMonData
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0x63
	bhi _080A0D14
	ldr r3, _080A0D4C
	adds r1, r5, 0x1
	lsls r1, 2
	ldr r2, _080A0D50
	lsls r0, r4, 3
	subs r0, r4
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0, 0x13]
	movs r0, 0xCA
	lsls r0, 1
	muls r2, r0
	adds r1, r2
	adds r1, r3
	ldr r1, [r1]
	mov r0, r8
	subs r0, r1, r0
	mov r9, r0
	lsls r0, r5, 2
	adds r0, r2
	adds r0, r3
	ldr r0, [r0]
	subs r1, r0
	mov r2, r8
	subs r4, r2, r0
	lsls r0, r4, 6
	bl __udivsi3
	adds r6, r0, 0
	movs r7, 0
	adds r0, r7, 0
	orrs r0, r6
	cmp r0, 0
	bne _080A0D14
	cmp r4, 0
	beq _080A0D14
	movs r6, 0x1
	movs r7, 0
_080A0D14:
	ldr r4, _080A0D54
	adds r0, r4, 0
	mov r1, r9
	bl ConvertIntToDecimalString
	mov r1, r10
	adds r1, 0x6
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	ldr r2, [sp]
	bl sub_8072B4C
	ldr r0, _080A0D58
	mov r9, r0
	movs r2, 0
	mov r12, r2
	ldr r0, _080A0D5C
	mov r8, r0
_080A0D3A:
	cmp r7, 0
	bgt _080A0D46
	cmp r7, 0
	bne _080A0D64
	cmp r6, 0x7
	bls _080A0D64
_080A0D46:
	ldr r1, _080A0D60
	b _080A0D96
	.align 2, 0
_080A0D4C: .4byte gExperienceTables
_080A0D50: .4byte gBaseStats
_080A0D54: .4byte gStringVar1
_080A0D58: .4byte 0x06004caa
_080A0D5C: .4byte 0x00002062
_080A0D60: .4byte 0x0000206a
_080A0D64:
	adds r5, r7, 0
	adds r4, r6, 0
	cmp r7, 0
	bge _080A0D74
	movs r4, 0x7
	movs r5, 0
	adds r4, r6
	adcs r5, r7
_080A0D74:
	lsls r3, r5, 29
	lsrs r2, r4, 3
	adds r0, r3, 0
	orrs r0, r2
	asrs r1, r5, 3
	lsrs r5, r0, 29
	lsls r4, r1, 3
	adds r3, r5, 0
	orrs r3, r4
	lsls r2, r0, 3
	adds r1, r7, 0
	adds r0, r6, 0
	subs r0, r2
	sbcs r1, r3
	add r0, r8
	lsls r0, 16
	lsrs r1, r0, 16
_080A0D96:
	mov r2, r12
	lsls r0, r2, 1
	add r0, r9
	strh r1, [r0]
	movs r0, 0x8
	negs r0, r0
	asrs r1, r0, 31
	adds r6, r0
	adcs r7, r1
	cmp r7, 0
	bge _080A0DB0
	movs r6, 0
	movs r7, 0
_080A0DB0:
	mov r0, r12
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r12, r0
	cmp r0, 0x7
	bls _080A0D3A
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A0C80

	thumb_func_start sub_80A0DD0
sub_80A0DD0: @ 80A0DD0
	push {r4,r5,lr}
	ldr r2, _080A0E3C
	movs r5, 0xFC
	strb r5, [r2]
	movs r0, 0x12
	strb r0, [r2, 0x1]
	movs r0, 0x2
	strb r0, [r2, 0x2]
	adds r2, 0x3
	adds r0, r2, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r2, r0, 0
	ldr r1, _080A0E40
	ldr r4, _080A0E44
	adds r0, r4, 0
	adds r0, 0x7E
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r2, 0
	bl StringCopy
	adds r2, r0, 0
	strb r5, [r2]
	movs r0, 0x13
	strb r0, [r2, 0x1]
	movs r0, 0x58
	strb r0, [r2, 0x2]
	movs r0, 0xFF
	strb r0, [r2, 0x3]
	ldr r0, _080A0E3C
	movs r1, 0
	movs r2, 0
	bl MenuPrint
	adds r4, 0x7F
	ldrb r0, [r4]
	cmp r0, 0
	beq _080A0E48
	movs r0, 0x5
	movs r1, 0x17
	movs r2, 0
	bl GetStringCenterAlignXOffset
	movs r0, 0x6
	movs r1, 0x18
	movs r2, 0
	bl GetStringCenterAlignXOffset
	b _080A0E54
	.align 2, 0
_080A0E3C: .4byte gStringVar1
_080A0E40: .4byte gUnknown_083C1068
_080A0E44: .4byte 0x02018000
_080A0E48:
	movs r0, 0x17
	movs r1, 0
	movs r2, 0x18
	movs r3, 0x1
	bl MenuZeroFillWindowRect
_080A0E54:
	ldr r2, _080A0E98
	adds r0, r2, 0
	movs r1, 0xD
	bl sub_80A1E58
	adds r2, r0, 0
	ldr r1, _080A0E9C
	ldr r0, _080A0EA0
	adds r0, 0x7F
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r1, [r0]
	adds r0, r2, 0
	bl StringCopy
	adds r2, r0, 0
	movs r0, 0xFC
	strb r0, [r2]
	movs r0, 0x13
	strb r0, [r2, 0x1]
	movs r0, 0x28
	strb r0, [r2, 0x2]
	movs r0, 0xFF
	strb r0, [r2, 0x3]
	ldr r0, _080A0E98
	movs r1, 0x19
	movs r2, 0
	bl MenuPrint
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0E98: .4byte gStringVar1
_080A0E9C: .4byte gUnknown_083C1068
_080A0EA0: .4byte 0x02018000
	thumb_func_end sub_80A0DD0

	thumb_func_start sub_80A0EA4
sub_80A0EA4: @ 80A0EA4
	push {r4-r6,lr}
	adds r4, r0, 0
	ldr r5, _080A0ECC
	ldr r6, _080A0ED0
	movs r1, 0
	bl sub_8040110
	lsls r0, 24
	cmp r0, 0
	bne _080A0ED4
	adds r0, r4, 0
	movs r1, 0
	bl sub_8040178
	lsls r0, 24
	cmp r0, 0
	beq _080A0ED4
	movs r0, 0x2C
	b _080A0ED8
	.align 2, 0
_080A0ECC: .4byte 0x0600e444
_080A0ED0: .4byte 0x0600ec44
_080A0ED4:
	ldr r1, _080A0EE4
	adds r0, r1, 0
_080A0ED8:
	strh r0, [r5]
	strh r0, [r6]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0EE4: .4byte 0x0000081a
	thumb_func_end sub_80A0EA4

	thumb_func_start sub_80A0EE8
sub_80A0EE8: @ 80A0EE8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	movs r3, 0
	ldr r6, _080A0F24
	adds r5, r6, 0
	ldr r1, _080A0F28
	mov r8, r1
	ldr r2, _080A0F2C
	mov r10, r2
_080A0F02:
	adds r0, r5, 0
	adds r0, 0x75
	ldrb r0, [r0]
	cmp r3, r0
	bcs _080A0F30
	lsls r1, r3, 1
	lsls r0, r3, 2
	add r0, sp
	mov r4, r8
	strh r4, [r0]
	adds r1, 0x1
	lsls r1, 1
	mov r7, sp
	adds r0, r7, r1
	strh r4, [r0]
	b _080A0FE2
	.align 2, 0
_080A0F24: .4byte 0x02018000
_080A0F28: .4byte 0x00004040
_080A0F2C: .4byte 0x0000404a
_080A0F30:
	movs r0, 0x76
	adds r0, r6
	mov r12, r0
	ldrb r1, [r0]
	cmp r3, r1
	bls _080A0F52
	lsls r1, r3, 1
	lsls r0, r3, 2
	add r0, sp
	mov r2, r10
	strh r2, [r0]
	adds r1, 0x1
	lsls r1, 1
	mov r4, sp
	adds r0, r4, r1
	strh r2, [r0]
	b _080A0FE2
_080A0F52:
	ldrb r4, [r5, 0xB]
	cmp r3, r4
	bcs _080A0F6E
	lsls r1, r3, 1
	lsls r0, r3, 2
	mov r7, sp
	adds r2, r7, r0
	ldr r0, _080A0F88
	strh r0, [r2]
	adds r1, 0x1
	lsls r1, 1
	add r1, sp
	adds r0, 0x1
	strh r0, [r1]
_080A0F6E:
	cmp r3, r4
	bne _080A0FA6
	mov r0, r12
	ldrb r0, [r0]
	cmp r3, r0
	beq _080A0F90
	lsls r1, r3, 1
	lsls r0, r3, 2
	mov r4, sp
	adds r2, r4, r0
	ldr r0, _080A0F8C
	b _080A0F9A
	.align 2, 0
_080A0F88: .4byte 0x00004046
_080A0F8C: .4byte 0x00004041
_080A0F90:
	lsls r1, r3, 1
	lsls r0, r3, 2
	mov r7, sp
	adds r2, r7, r0
	ldr r0, _080A0FC4
_080A0F9A:
	strh r0, [r2]
	adds r1, 0x1
	lsls r1, 1
	add r1, sp
	adds r0, 0x1
	strh r0, [r1]
_080A0FA6:
	ldrb r0, [r5, 0xB]
	cmp r3, r0
	bls _080A0FE2
	adds r0, r6, 0
	adds r0, 0x76
	ldrb r0, [r0]
	cmp r3, r0
	beq _080A0FCC
	lsls r1, r3, 1
	lsls r0, r3, 2
	mov r4, sp
	adds r2, r4, r0
	ldr r0, _080A0FC8
	b _080A0FD6
	.align 2, 0
_080A0FC4: .4byte 0x0000404b
_080A0FC8: .4byte 0x00004043
_080A0FCC:
	lsls r1, r3, 1
	lsls r0, r3, 2
	mov r7, sp
	adds r2, r7, r0
	ldr r0, _080A1034
_080A0FD6:
	strh r0, [r2]
	adds r1, 0x1
	lsls r1, 1
	add r1, sp
	adds r0, 0x1
	strh r0, [r1]
_080A0FE2:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _080A0F02
	ldr r1, _080A1038
	ldr r0, _080A103C
	mov r2, sp
	str r2, [r0]
	str r1, [r0, 0x4]
	ldr r1, _080A1040
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	movs r3, 0
_080A0FFE:
	lsls r0, r3, 1
	mov r4, sp
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, 0x10
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x7
	bls _080A0FFE
	ldr r1, _080A1044
	ldr r0, _080A103C
	str r4, [r0]
	str r1, [r0, 0x4]
	ldr r1, _080A1040
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1034: .4byte 0x00004048
_080A1038: .4byte 0x0600e016
_080A103C: .4byte 0x040000d4
_080A1040: .4byte 0x80000008
_080A1044: .4byte 0x0600e056
	thumb_func_end sub_80A0EE8

	thumb_func_start sub_80A1048
sub_80A1048: @ 80A1048
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r0, 2
	add r0, r8
	lsls r0, 3
	ldr r1, _080A10A0
	adds r6, r0, r1
	ldrh r0, [r6]
	ldrh r1, [r6, 0x2]
	adds r0, r1
	strh r0, [r6, 0x2]
	lsls r0, 16
	cmp r0, 0
	bne _080A106E
	b _080A1224
_080A106E:
	movs r5, 0x2
	ldrsh r2, [r6, r5]
	ldr r0, _080A10A4
	subs r0, r2
	lsls r0, 1
	ldr r1, _080A10A8
	adds r4, r0, r1
	ldr r5, _080A10AC
	lsls r2, 1
	movs r0, 0x80
	lsls r0, 5
	adds r7, r1, 0
	cmp r2, r0
	bhi _080A10B4
	ldr r0, _080A10B0
	str r4, [r0]
	str r5, [r0, 0x4]
	lsrs r1, r2, 1
	movs r2, 0x80
	lsls r2, 24
	orrs r1, r2
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	b _080A10E0
	.align 2, 0
_080A10A0: .4byte gUnknown_03004B28
_080A10A4: .4byte 0x0000024a
_080A10A8: .4byte gUnknown_08E73508
_080A10AC: .4byte 0x0600e480
_080A10B0: .4byte 0x040000d4
_080A10B4:
	ldr r3, _080A110C
	str r4, [r3]
	str r5, [r3, 0x4]
	ldr r0, _080A1110
	str r0, [r3, 0x8]
	ldr r0, [r3, 0x8]
	movs r0, 0x80
	lsls r0, 5
	adds r4, r0
	adds r5, r0
	ldr r1, _080A1114
	adds r2, r1
	cmp r2, r0
	bhi _080A10B4
	str r4, [r3]
	str r5, [r3, 0x4]
	lsrs r0, r2, 1
	movs r1, 0x80
	lsls r1, 24
	orrs r0, r1
	str r0, [r3, 0x8]
	ldr r0, [r3, 0x8]
_080A10E0:
	movs r5, 0x2
	ldrsh r0, [r6, r5]
	ldr r1, _080A1118
	subs r1, r0
	lsls r1, 1
	adds r3, r1, r7
	ldr r4, _080A111C
	lsls r1, r0, 1
	movs r0, 0x80
	lsls r0, 5
	cmp r1, r0
	bhi _080A1120
	ldr r0, _080A110C
	str r3, [r0]
	str r4, [r0, 0x4]
	lsrs r1, 1
	movs r2, 0x80
	lsls r2, 24
	orrs r1, r2
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	b _080A114C
	.align 2, 0
_080A110C: .4byte 0x040000d4
_080A1110: .4byte 0x80000800
_080A1114: .4byte 0xfffff000
_080A1118: .4byte 0x0000026a
_080A111C: .4byte 0x0600e4c0
_080A1120:
	ldr r2, _080A1178
	str r3, [r2]
	str r4, [r2, 0x4]
	ldr r0, _080A117C
	str r0, [r2, 0x8]
	ldr r0, [r2, 0x8]
	movs r0, 0x80
	lsls r0, 5
	adds r3, r0
	adds r4, r0
	ldr r5, _080A1180
	adds r1, r5
	cmp r1, r0
	bhi _080A1120
	str r3, [r2]
	str r4, [r2, 0x4]
	lsrs r0, r1, 1
	movs r1, 0x80
	lsls r1, 24
	orrs r0, r1
	str r0, [r2, 0x8]
	ldr r0, [r2, 0x8]
_080A114C:
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	ldr r1, _080A1184
	subs r1, r0
	lsls r1, 1
	adds r3, r1, r7
	ldr r4, _080A1188
	lsls r1, r0, 1
	movs r0, 0x80
	lsls r0, 5
	cmp r1, r0
	bhi _080A118C
	ldr r0, _080A1178
	str r3, [r0]
	str r4, [r0, 0x4]
	lsrs r1, 1
	movs r2, 0x80
	lsls r2, 24
	orrs r1, r2
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	b _080A11B8
	.align 2, 0
_080A1178: .4byte 0x040000d4
_080A117C: .4byte 0x80000800
_080A1180: .4byte 0xfffff000
_080A1184: .4byte 0x0000024a
_080A1188: .4byte 0x0600ec80
_080A118C:
	ldr r2, _080A11E4
	str r3, [r2]
	str r4, [r2, 0x4]
	ldr r0, _080A11E8
	str r0, [r2, 0x8]
	ldr r0, [r2, 0x8]
	movs r0, 0x80
	lsls r0, 5
	adds r3, r0
	adds r4, r0
	ldr r5, _080A11EC
	adds r1, r5
	cmp r1, r0
	bhi _080A118C
	str r3, [r2]
	str r4, [r2, 0x4]
	lsrs r0, r1, 1
	movs r1, 0x80
	lsls r1, 24
	orrs r0, r1
	str r0, [r2, 0x8]
	ldr r0, [r2, 0x8]
_080A11B8:
	movs r1, 0x2
	ldrsh r0, [r6, r1]
	ldr r1, _080A11F0
	subs r1, r0
	lsls r1, 1
	adds r3, r1, r7
	ldr r4, _080A11F4
	lsls r1, r0, 1
	movs r0, 0x80
	lsls r0, 5
	cmp r1, r0
	bhi _080A11F8
	ldr r0, _080A11E4
	str r3, [r0]
	str r4, [r0, 0x4]
	lsrs r1, 1
	movs r2, 0x80
	lsls r2, 24
	orrs r1, r2
	str r1, [r0, 0x8]
	ldr r0, [r0, 0x8]
	b _080A1224
	.align 2, 0
_080A11E4: .4byte 0x040000d4
_080A11E8: .4byte 0x80000800
_080A11EC: .4byte 0xfffff000
_080A11F0: .4byte 0x0000026a
_080A11F4: .4byte 0x0600ecc0
_080A11F8:
	ldr r2, _080A12B0
	str r3, [r2]
	str r4, [r2, 0x4]
	ldr r0, _080A12B4
	str r0, [r2, 0x8]
	ldr r0, [r2, 0x8]
	movs r0, 0x80
	lsls r0, 5
	adds r3, r0
	adds r4, r0
	ldr r5, _080A12B8
	adds r1, r5
	cmp r1, r0
	bhi _080A11F8
	str r3, [r2]
	str r4, [r2, 0x4]
	lsrs r0, r1, 1
	movs r1, 0x80
	lsls r1, 24
	orrs r0, r1
	str r0, [r2, 0x8]
	ldr r0, [r2, 0x8]
_080A1224:
	ldrb r4, [r6, 0x2]
	ldrh r7, [r6, 0x2]
	ldrh r0, [r6]
	mov r12, r0
	cmp r4, 0x9
	bhi _080A1272
	adds r3, r6, 0x4
	ldr r2, _080A12B0
	ldr r5, _080A12BC
_080A1236:
	lsls r1, r4, 1
	ldr r6, _080A12C0
	adds r0, r1, r6
	str r3, [r2]
	str r0, [r2, 0x4]
	str r5, [r2, 0x8]
	ldr r0, [r2, 0x8]
	adds r6, 0x40
	adds r0, r1, r6
	str r3, [r2]
	str r0, [r2, 0x4]
	str r5, [r2, 0x8]
	ldr r0, [r2, 0x8]
	ldr r6, _080A12C4
	adds r0, r1, r6
	str r3, [r2]
	str r0, [r2, 0x4]
	str r5, [r2, 0x8]
	ldr r0, [r2, 0x8]
	ldr r0, _080A12C8
	adds r1, r0
	str r3, [r2]
	str r1, [r2, 0x4]
	str r5, [r2, 0x8]
	ldr r0, [r2, 0x8]
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bls _080A1236
_080A1272:
	mov r1, r12
	lsls r0, r1, 16
	cmp r0, 0
	beq _080A1286
	lsls r0, r7, 16
	asrs r0, 16
	cmp r0, 0
	ble _080A1286
	cmp r0, 0x9
	ble _080A12A4
_080A1286:
	lsls r0, r7, 16
	asrs r0, 16
	cmp r0, 0x9
	ble _080A129A
	ldr r0, _080A12CC
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0x12
	bl sub_80A1FF8
_080A129A:
	bl sub_80A1D18
	mov r0, r8
	bl DestroyTask
_080A12A4:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A12B0: .4byte 0x040000d4
_080A12B4: .4byte 0x80000800
_080A12B8: .4byte 0xfffff000
_080A12BC: .4byte 0x80000001
_080A12C0: .4byte 0x0600e480
_080A12C4: .4byte 0x0600ec80
_080A12C8: .4byte 0x0600ecc0
_080A12CC: .4byte gOtherText_Status
	thumb_func_end sub_80A1048

	thumb_func_start sub_80A12D0
sub_80A12D0: @ 80A12D0
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	movs r1, 0x12
	movs r2, 0x5
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	movs r0, 0x1D
	bl sub_80A18E4
	ldr r0, _080A1310
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, _080A1314
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r1, r0, r1
	lsls r4, 24
	asrs r4, 24
	strh r4, [r1, 0x8]
	cmp r4, 0
	bge _080A1318
	movs r0, 0xA
	b _080A131A
	.align 2, 0
_080A1310: .4byte sub_80A1048
_080A1314: .4byte gTasks
_080A1318:
	movs r0, 0
_080A131A:
	strh r0, [r1, 0xA]
	ldr r0, _080A1330
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r1, r0
	movs r0, 0x1
	strh r0, [r1, 0xC]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1330: .4byte gTasks
	thumb_func_end sub_80A12D0

	thumb_func_start sub_80A1334
sub_80A1334: @ 80A1334
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r0, 2
	add r0, r10
	lsls r0, 3
	ldr r1, _080A13E4
	adds r7, r0, r1
	ldrh r0, [r7]
	ldrh r1, [r7, 0x2]
	adds r0, r1
	strh r0, [r7, 0x2]
	lsls r0, 16
	asrs r1, r0, 16
	movs r0, 0
	cmp r1, 0
	blt _080A136A
	movs r0, 0xA
	cmp r1, 0xA
	bgt _080A136A
	ldrh r0, [r7, 0x2]
_080A136A:
	lsls r0, 16
	asrs r2, r0, 16
	mov r9, r0
	cmp r2, 0
	ble _080A13A6
	movs r0, 0xA
	subs r0, r2
	lsls r0, 1
	ldr r1, _080A13E8
	adds r4, r0, r1
	movs r5, 0
	adds r6, r2, 0
	ldr r0, _080A13EC
	mov r8, r0
_080A1386:
	adds r0, r5, 0
	adds r0, 0xD
	lsls r0, 6
	ldr r1, _080A13F0
	adds r0, r1
	adds r1, r4, 0
	mov r2, r8
	ands r2, r6
	bl CpuSet
	adds r4, 0x40
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x6
	bls _080A1386
_080A13A6:
	mov r1, r9
	asrs r2, r1, 16
	cmp r2, 0x9
	bgt _080A13F4
	ldr r4, _080A13E8
	movs r5, 0
	mov r8, sp
	movs r0, 0xA
	subs r6, r0, r2
	ldr r0, _080A13EC
	ands r6, r0
	movs r0, 0x80
	lsls r0, 17
	mov r9, r0
_080A13C2:
	ldrh r0, [r7, 0x4]
	mov r1, r8
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, 0
	mov r2, r9
	orrs r2, r6
	bl CpuSet
	adds r4, 0x40
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x6
	bls _080A13C2
	b _080A1400
	.align 2, 0
_080A13E4: .4byte gUnknown_03004B28
_080A13E8: .4byte 0x06005b40
_080A13EC: .4byte 0x001fffff
_080A13F0: .4byte gUnknown_08E73E88
_080A13F4:
	movs r0, 0
	movs r1, 0x13
	movs r2, 0x9
	movs r3, 0x13
	bl MenuZeroFillWindowRect
_080A1400:
	movs r1, 0
	ldrsh r0, [r7, r1]
	cmp r0, 0
	beq _080A1410
	movs r1, 0x2
	ldrsh r0, [r7, r1]
	cmp r0, 0
	bge _080A144A
_080A1410:
	ldr r4, _080A1480
	ldrb r0, [r4, 0xB]
	cmp r0, 0x2
	bne _080A1444
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	adds r4, 0x10
	adds r0, r4, 0
	bl sub_80A0958
	adds r0, r4, 0
	bl sub_80A1CD8
	lsls r0, 24
	cmp r0, 0
	beq _080A1444
	ldr r0, _080A1484
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0x12
	bl sub_80A1FF8
_080A1444:
	mov r0, r10
	bl DestroyTask
_080A144A:
	movs r1, 0x2
	ldrsh r0, [r7, r1]
	cmp r0, 0x9
	ble _080A1470
	ldr r4, _080A1480
	ldrb r0, [r4, 0xB]
	cmp r0, 0x2
	bne _080A1460
	ldrb r0, [r7, 0x6]
	bl sub_80A00F4
_080A1460:
	adds r0, r4, 0
	adds r0, 0x10
	adds r1, r7, 0x6
	bl sub_80A0428
	mov r0, r10
	bl DestroyTask
_080A1470:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1480: .4byte 0x02018000
_080A1484: .4byte gOtherText_Status
	thumb_func_end sub_80A1334

	thumb_func_start sub_80A1488
sub_80A1488: @ 80A1488
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r0, _080A14DC
	ldrb r0, [r0, 0xB]
	cmp r0, 0x2
	bne _080A14A6
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x13
	bl MenuZeroFillWindowRect
_080A14A6:
	ldr r5, _080A14E0
	adds r0, r5, 0
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xFF
	bne _080A14C2
	adds r0, r5, 0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
_080A14C2:
	ldr r1, _080A14E4
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r3, r0, r1
	lsls r0, r6, 24
	asrs r0, 24
	strh r0, [r3, 0x8]
	cmp r0, 0
	bge _080A14E8
	movs r0, 0xA
	b _080A14EA
	.align 2, 0
_080A14DC: .4byte 0x02018000
_080A14E0: .4byte sub_80A1334
_080A14E4: .4byte gTasks
_080A14E8:
	movs r0, 0
_080A14EA:
	strh r0, [r3, 0xA]
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0xC]
	strh r7, [r0, 0xE]
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A1488

	thumb_func_start sub_80A1500
sub_80A1500: @ 80A1500
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	lsls r0, 2
	add r0, r10
	lsls r0, 3
	ldr r1, _080A15B0
	adds r7, r0, r1
	ldrh r0, [r7]
	ldrh r1, [r7, 0x2]
	adds r0, r1
	strh r0, [r7, 0x2]
	lsls r0, 16
	asrs r1, r0, 16
	movs r0, 0
	cmp r1, 0
	blt _080A1536
	movs r0, 0xA
	cmp r1, 0xA
	bgt _080A1536
	ldrh r0, [r7, 0x2]
_080A1536:
	lsls r0, 16
	asrs r2, r0, 16
	mov r9, r0
	cmp r2, 0
	ble _080A1572
	movs r0, 0xA
	subs r0, r2
	lsls r0, 1
	ldr r1, _080A15B4
	adds r4, r0, r1
	movs r5, 0
	adds r6, r2, 0
	ldr r0, _080A15B8
	mov r8, r0
_080A1552:
	adds r0, r5, 0
	adds r0, 0xD
	lsls r0, 6
	ldr r1, _080A15BC
	adds r0, r1
	adds r1, r4, 0
	mov r2, r8
	ands r2, r6
	bl CpuSet
	adds r4, 0x40
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x6
	bls _080A1552
_080A1572:
	mov r1, r9
	asrs r2, r1, 16
	cmp r2, 0x9
	bgt _080A15C0
	ldr r4, _080A15B4
	movs r5, 0
	mov r8, sp
	movs r0, 0xA
	subs r6, r0, r2
	ldr r0, _080A15B8
	ands r6, r0
	movs r0, 0x80
	lsls r0, 17
	mov r9, r0
_080A158E:
	ldrh r0, [r7, 0x4]
	mov r1, r8
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, 0
	mov r2, r9
	orrs r2, r6
	bl CpuSet
	adds r4, 0x40
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x6
	bls _080A158E
	b _080A15CC
	.align 2, 0
_080A15B0: .4byte gUnknown_03004B28
_080A15B4: .4byte 0x06006b40
_080A15B8: .4byte 0x001fffff
_080A15BC: .4byte gUnknown_08E74688
_080A15C0:
	movs r0, 0
	movs r1, 0x13
	movs r2, 0x9
	movs r3, 0x13
	bl MenuZeroFillWindowRect
_080A15CC:
	movs r1, 0
	ldrsh r0, [r7, r1]
	cmp r0, 0
	beq _080A15DC
	movs r1, 0x2
	ldrsh r0, [r7, r1]
	cmp r0, 0
	bge _080A1616
_080A15DC:
	ldr r4, _080A164C
	ldrb r0, [r4, 0xB]
	cmp r0, 0x3
	bne _080A1610
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	adds r4, 0x10
	adds r0, r4, 0
	bl sub_80A0958
	adds r0, r4, 0
	bl sub_80A1CD8
	lsls r0, 24
	cmp r0, 0
	beq _080A1610
	ldr r0, _080A1650
	movs r1, 0xD
	movs r2, 0x1
	movs r3, 0x12
	bl sub_80A1FF8
_080A1610:
	mov r0, r10
	bl DestroyTask
_080A1616:
	movs r1, 0x2
	ldrsh r0, [r7, r1]
	cmp r0, 0x9
	ble _080A163C
	ldr r4, _080A164C
	ldrb r0, [r4, 0xB]
	cmp r0, 0x3
	bne _080A162C
	ldrb r0, [r7, 0x6]
	bl sub_80A00F4
_080A162C:
	adds r0, r4, 0
	adds r0, 0x10
	adds r1, r7, 0x6
	bl sub_80A0428
	mov r0, r10
	bl DestroyTask
_080A163C:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A164C: .4byte 0x02018000
_080A1650: .4byte gOtherText_Status
	thumb_func_end sub_80A1500

	thumb_func_start sub_80A1654
sub_80A1654: @ 80A1654
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r0, _080A16A8
	ldrb r0, [r0, 0xB]
	cmp r0, 0x3
	bne _080A1672
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x9
	movs r3, 0x13
	bl MenuZeroFillWindowRect
_080A1672:
	ldr r5, _080A16AC
	adds r0, r5, 0
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xFF
	bne _080A168E
	adds r0, r5, 0
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r4, r0, 24
_080A168E:
	ldr r1, _080A16B0
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r3, r0, r1
	lsls r0, r6, 24
	asrs r0, 24
	strh r0, [r3, 0x8]
	cmp r0, 0
	bge _080A16B4
	movs r0, 0xA
	b _080A16B6
	.align 2, 0
_080A16A8: .4byte 0x02018000
_080A16AC: .4byte sub_80A1500
_080A16B0: .4byte gTasks
_080A16B4:
	movs r0, 0
_080A16B6:
	strh r0, [r3, 0xA]
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0xC]
	strh r7, [r0, 0xE]
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A1654

	thumb_func_start sub_80A16CC
sub_80A16CC: @ 80A16CC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	mov r9, r0
	ldr r0, _080A1724
	mov r12, r0
	mov r1, r9
	cmp r1, 0
	bne _080A172C
	movs r5, 0
	ldr r7, _080A1728
	movs r0, 0x80
	lsls r0, 5
	adds r6, r0, 0
	movs r1, 0x40
	adds r1, r7
	mov r8, r1
_080A16F4:
	lsls r2, r5, 1
	mov r0, r12
	adds r3, r2, r0
	adds r4, r2, r7
	ldrh r1, [r4]
	adds r0, r6, r1
	strh r0, [r3]
	adds r1, r3, 0
	adds r1, 0x40
	ldrh r4, [r4]
	adds r0, r6, r4
	strh r0, [r1]
	adds r3, 0x80
	add r2, r8
	ldrh r2, [r2]
	adds r0, r6, r2
	strh r0, [r3]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x13
	bls _080A16F4
	b _080A1768
	.align 2, 0
_080A1724: .4byte 0x06006ad4
_080A1728: .4byte gUnknown_08E94510
_080A172C:
	movs r5, 0
	ldr r6, _080A17B0
	movs r7, 0x80
	lsls r7, 5
	adds r4, r7, 0
	movs r0, 0x40
	adds r0, r6
	mov r8, r0
_080A173C:
	lsls r1, r5, 1
	mov r7, r12
	adds r2, r1, r7
	adds r0, r1, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	strh r0, [r2]
	adds r3, r2, 0
	adds r3, 0x40
	add r1, r8
	ldrh r7, [r1]
	adds r0, r4, r7
	strh r0, [r3]
	adds r2, 0x80
	ldrh r1, [r1]
	adds r0, r4, r1
	strh r0, [r2]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x13
	bls _080A173C
_080A1768:
	ldr r0, _080A17B4
	mov r12, r0
	mov r1, r9
	cmp r1, 0
	bne _080A17BC
	movs r5, 0
	ldr r7, _080A17B8
	movs r0, 0xC0
	lsls r0, 6
	adds r6, r0, 0
	movs r1, 0x40
	adds r1, r7
	mov r8, r1
_080A1782:
	lsls r2, r5, 1
	mov r0, r12
	adds r3, r2, r0
	adds r4, r2, r7
	ldrh r1, [r4]
	adds r0, r6, r1
	strh r0, [r3]
	adds r1, r3, 0
	adds r1, 0x40
	ldrh r4, [r4]
	adds r0, r6, r4
	strh r0, [r1]
	adds r3, 0x80
	add r2, r8
	ldrh r2, [r2]
	adds r0, r6, r2
	strh r0, [r3]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x13
	bls _080A1782
	b _080A17F8
	.align 2, 0
_080A17B0: .4byte gUnknown_08E94550
_080A17B4: .4byte 0x06005ad4
_080A17B8: .4byte gUnknown_08E94510
_080A17BC:
	movs r5, 0
	ldr r6, _080A1804
	movs r7, 0xC0
	lsls r7, 6
	adds r4, r7, 0
	movs r0, 0x40
	adds r0, r6
	mov r8, r0
_080A17CC:
	lsls r1, r5, 1
	mov r7, r12
	adds r2, r1, r7
	adds r0, r1, r6
	ldrh r0, [r0]
	adds r0, r4, r0
	strh r0, [r2]
	adds r3, r2, 0
	adds r3, 0x40
	add r1, r8
	ldrh r7, [r1]
	adds r0, r4, r7
	strh r0, [r3]
	adds r2, 0x80
	ldrh r1, [r1]
	adds r0, r4, r1
	strh r0, [r2]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x13
	bls _080A17CC
_080A17F8:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1804: .4byte gUnknown_08E94550
	thumb_func_end sub_80A16CC

	thumb_func_start sub_80A1808
sub_80A1808: @ 80A1808
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r1, 0x41
	bl GetMonData
	adds r6, r0, 0
	lsls r6, 16
	lsrs r6, 16
	ldr r0, _080A1860
	movs r1, 0x28
	movs r2, 0x40
	movs r3, 0x5
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r4, r0, 4
	add r4, r8
	lsls r4, 2
	ldr r5, _080A1864
	adds r7, r4, r5
	adds r0, r7, 0
	bl FreeSpriteOamMatrix
	strh r6, [r7, 0x2E]
	adds r5, 0x1C
	adds r4, r5
	ldr r0, _080A1868
	str r0, [r4]
	adds r0, r6, 0
	bl sub_8040A3C
	lsls r0, 24
	cmp r0, 0
	bne _080A186C
	adds r0, r7, 0
	adds r0, 0x3F
	ldrb r1, [r0]
	movs r2, 0x1
	orrs r1, r2
	strb r1, [r0]
	b _080A187A
	.align 2, 0
_080A1860: .4byte gUnknown_02024E8C
_080A1864: .4byte gSprites
_080A1868: .4byte sub_80A1888
_080A186C:
	adds r2, r7, 0
	adds r2, 0x3F
	ldrb r1, [r2]
	movs r0, 0x2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
_080A187A:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A1808

	thumb_func_start sub_80A1888
sub_80A1888: @ 80A1888
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _080A18B8
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080A18B0
	ldr r0, _080A18BC
	str r0, [r4, 0x1C]
	ldr r0, _080A18C0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	bne _080A18B0
	ldrh r0, [r4, 0x2E]
	movs r1, 0
	bl PlayCry1
_080A18B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A18B8: .4byte gPaletteFade
_080A18BC: .4byte SpriteCallbackDummy
_080A18C0: .4byte 0x02018010
	thumb_func_end sub_80A1888

	thumb_func_start sub_80A18C4
sub_80A18C4: @ 80A18C4
	push {lr}
	movs r1, 0
	ldr r3, _080A18E0
	movs r2, 0xFF
_080A18CC:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x1D
	bls _080A18CC
	pop {r0}
	bx r0
	.align 2, 0
_080A18E0: .4byte 0x0201a000
	thumb_func_end sub_80A18C4

	thumb_func_start sub_80A18E4
sub_80A18E4: @ 80A18E4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A1910
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _080A1908
	adds r1, r0, 0
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080A1914
	adds r0, r1
	bl DestroySprite
	movs r0, 0xFF
	strb r0, [r4]
_080A1908:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1910: .4byte 0x0201a000
_080A1914: .4byte gSprites
	thumb_func_end sub_80A18E4

	thumb_func_start sub_80A1918
sub_80A1918: @ 80A1918
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	ldr r3, _080A1948
	ldr r2, _080A194C
	adds r0, r2
	ldrb r0, [r0]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r3
	adds r2, 0x3E
	movs r0, 0x1
	ands r1, r0
	lsls r1, 2
	ldrb r3, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080A1948: .4byte gSprites
_080A194C: .4byte 0x0201a000
	thumb_func_end sub_80A1918

	thumb_func_start sub_80A1950
sub_80A1950: @ 80A1950
	push {r4,r5,lr}
	movs r5, 0
_080A1954:
	ldr r0, _080A1984
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _080A196C
	ldr r0, _080A1988
	movs r1, 0
	movs r2, 0
	movs r3, 0x2
	bl CreateSprite
	strb r0, [r4]
_080A196C:
	adds r0, r5, 0
	movs r1, 0x1
	bl sub_80A1918
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x4
	bls _080A1954
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1984: .4byte 0x0201a000
_080A1988: .4byte gSpriteTemplate_83C11C0
	thumb_func_end sub_80A1950

	thumb_func_start sub_80A198C
sub_80A198C: @ 80A198C
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	mov r10, r3
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	mov r0, r10
	lsls r0, 24
	lsrs r0, 24
	mov r10, r0
	ldr r1, _080A1A24
	mov r8, r1
	add r8, r10
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080A1A28
	mov r9, r1
	add r0, r9
	adds r1, r4, 0
	bl StartSpriteAnim
	mov r1, r8
	ldrb r0, [r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	add r1, r9
	ldr r0, _080A1A2C
	adds r4, r0
	ldrb r2, [r4]
	lsls r2, 4
	ldrb r3, [r1, 0x5]
	movs r0, 0xF
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, 0x5]
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r5, 0x10
	strh r5, [r0, 0x20]
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	add r0, r9
	adds r6, 0x8
	strh r6, [r0, 0x22]
	mov r0, r10
	movs r1, 0
	bl sub_80A1918
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1A24: .4byte 0x0201a000
_080A1A28: .4byte gSprites
_080A1A2C: .4byte gUnknown_083C11D8
	thumb_func_end sub_80A198C

	thumb_func_start sub_80A1A30
sub_80A1A30: @ 80A1A30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0
	mov r9, r0
	ldr r1, _080A1A98
	ldrb r0, [r1, 0xB]
	cmp r0, 0x1
	bls _080A1B0A
	cmp r4, 0x9
	bne _080A1A52
	movs r3, 0x1
	mov r9, r3
_080A1A52:
	movs r5, 0
	movs r0, 0x80
	lsls r0, 6
	adds r0, r1
	mov r8, r0
	ldr r6, _080A1A9C
	mov r10, r5
_080A1A60:
	lsls r1, r5, 20
	movs r3, 0xB0
	lsls r3, 15
	adds r1, r3
	asrs r1, 16
	ldr r0, _080A1AA0
	movs r2, 0x28
	mov r3, r9
	bl CreateSprite
	adds r1, r4, r5
	mov r3, r8
	adds r2, r1, r3
	strb r0, [r2]
	adds r7, r1, 0
	cmp r5, 0
	bne _080A1AA4
	adds r0, r4, r3
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r1, 0x4
	bl StartSpriteAnim
	b _080A1AD0
	.align 2, 0
_080A1A98: .4byte 0x02018000
_080A1A9C: .4byte gSprites
_080A1AA0: .4byte gSpriteTemplate_83C1280
_080A1AA4:
	cmp r5, 0x9
	bne _080A1AC0
	adds r0, r4, 0
	adds r0, 0x9
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r1, 0x5
	bl StartSpriteAnim
	b _080A1AD0
_080A1AC0:
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	movs r1, 0x6
	bl StartSpriteAnim
_080A1AD0:
	mov r0, r8
	adds r2, r7, r0
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r6, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, _080A1B18
	str r1, [r0]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	strh r4, [r0, 0x2E]
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	mov r1, r10
	strh r1, [r0, 0x30]
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x9
	bls _080A1A60
_080A1B0A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1B18: .4byte sub_80A1BC0
	thumb_func_end sub_80A1A30

	thumb_func_start sub_80A1B1C
sub_80A1B1C: @ 80A1B1C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r4, 0
_080A1B24:
	adds r0, r5, r4
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A18E4
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x9
	bls _080A1B24
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A1B1C

	thumb_func_start sub_80A1B40
sub_80A1B40: @ 80A1B40
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, r7, 1
	adds r1, r7
	lsls r1, 24
	ldr r0, _080A1BB4
	ldrb r2, [r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	ldr r2, _080A1BB8
	adds r0, r2
	lsrs r7, r1, 24
	movs r2, 0x80
	lsls r2, 19
	adds r1, r2
	lsrs r1, 24
	bl StartSpriteAnim
	movs r4, 0
	adds r0, r7, 0x6
	lsls r0, 24
	mov r8, r0
_080A1B74:
	ldr r6, _080A1BBC
	adds r0, r4, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, _080A1BB8
	adds r0, r5
	mov r2, r8
	lsrs r1, r2, 24
	bl StartSpriteAnim
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _080A1B74
	ldrb r1, [r6, 0x8]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	adds r1, r7, 0x5
	lsls r1, 24
	lsrs r1, 24
	bl StartSpriteAnim
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1BB4: .4byte 0x0201a009
_080A1BB8: .4byte gSprites
_080A1BBC: .4byte 0x0201a00a
	thumb_func_end sub_80A1B40

	thumb_func_start sub_80A1BC0
sub_80A1BC0: @ 80A1BC0
	push {lr}
	adds r2, r0, 0
	adds r0, 0x2A
	ldrb r0, [r0]
	subs r0, 0x4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bhi _080A1BF8
	ldrh r0, [r2, 0x30]
	adds r0, 0x1
	movs r1, 0x1F
	ands r0, r1
	strh r0, [r2, 0x30]
	cmp r0, 0x18
	ble _080A1BEC
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	b _080A1C06
_080A1BEC:
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	movs r0, 0x5
	negs r0, r0
	b _080A1C04
_080A1BF8:
	movs r0, 0
	strh r0, [r2, 0x30]
	adds r3, r2, 0
	adds r3, 0x3E
	ldrb r1, [r3]
	subs r0, 0x5
_080A1C04:
	ands r0, r1
_080A1C06:
	strb r0, [r3]
	movs r1, 0x2E
	ldrsh r0, [r2, r1]
	cmp r0, 0x9
	bne _080A1C1C
	ldr r0, _080A1C18
	adds r0, 0x79
	b _080A1C20
	.align 2, 0
_080A1C18: .4byte 0x02018000
_080A1C1C:
	ldr r0, _080A1C2C
	adds r0, 0x7A
_080A1C20:
	ldrb r0, [r0]
	lsls r0, 4
	strh r0, [r2, 0x26]
	pop {r0}
	bx r0
	.align 2, 0
_080A1C2C: .4byte 0x02018000
	thumb_func_end sub_80A1BC0

	thumb_func_start sub_80A1C30
sub_80A1C30: @ 80A1C30
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 25
	lsrs r3, r0, 24
	adds r4, r3, 0
	adds r0, r3, 0
	adds r0, 0xA
	cmp r3, r0
	bge _080A1C82
	ldr r5, _080A1C88
	movs r7, 0x5
	negs r7, r7
	ldr r6, _080A1C8C
_080A1C50:
	adds r2, r3, r6
	ldrb r1, [r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0
	strh r1, [r0, 0x30]
	ldrb r0, [r2]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r5
	adds r1, 0x3E
	ldrb r2, [r1]
	adds r0, r7, 0
	ands r0, r2
	strb r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r4, 0
	adds r0, 0xA
	cmp r3, r0
	blt _080A1C50
_080A1C82:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1C88: .4byte gSprites
_080A1C8C: .4byte 0x0201a009
	thumb_func_end sub_80A1C30

	thumb_func_start pokemon_ailments_get_primary
pokemon_ailments_get_primary: @ 80A1C90
	push {lr}
	adds r1, r0, 0
	movs r0, 0x88
	ands r0, r1
	cmp r0, 0
	beq _080A1CA0
	movs r0, 0x1
	b _080A1CD2
_080A1CA0:
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080A1CAC
	movs r0, 0x2
	b _080A1CD2
_080A1CAC:
	movs r0, 0x7
	ands r0, r1
	cmp r0, 0
	beq _080A1CB8
	movs r0, 0x3
	b _080A1CD2
_080A1CB8:
	movs r0, 0x20
	ands r0, r1
	cmp r0, 0
	beq _080A1CC4
	movs r0, 0x4
	b _080A1CD2
_080A1CC4:
	movs r0, 0x10
	ands r0, r1
	cmp r0, 0
	bne _080A1CD0
	movs r0, 0
	b _080A1CD2
_080A1CD0:
	movs r0, 0x5
_080A1CD2:
	pop {r1}
	bx r1
	thumb_func_end pokemon_ailments_get_primary

	thumb_func_start sub_80A1CD8
sub_80A1CD8: @ 80A1CD8
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _080A1CEA
	movs r0, 0x7
	b _080A1D12
_080A1CEA:
	adds r0, r4, 0
	movs r1, 0x37
	bl GetMonData
	bl pokemon_ailments_get_primary
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	bne _080A1D12
	adds r0, r4, 0
	movs r1, 0
	bl sub_8040110
	lsls r0, 24
	cmp r0, 0
	bne _080A1D10
	movs r0, 0
	b _080A1D12
_080A1D10:
	movs r0, 0x6
_080A1D12:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A1CD8

	thumb_func_start sub_80A1D18
sub_80A1D18: @ 80A1D18
	push {r4,r5,lr}
	sub sp, 0x64
	mov r0, sp
	bl sub_809F678
	mov r0, sp
	bl sub_80A1CD8
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0
	beq _080A1D58
	subs r0, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _080A1D50
	ldrb r0, [r4]
	cmp r0, 0xFF
	bne _080A1D60
	ldr r0, _080A1D54
	movs r1, 0x40
	movs r2, 0x98
	movs r3, 0
	bl CreateSprite
	strb r0, [r4]
	b _080A1D60
	.align 2, 0
_080A1D50: .4byte 0x0201a01d
_080A1D54: .4byte gSpriteTemplate_83C1304
_080A1D58:
	movs r0, 0x1D
	bl sub_80A18E4
	b _080A1D74
_080A1D60:
	ldr r0, _080A1D7C
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080A1D80
	adds r0, r1
	adds r1, r5, 0
	bl StartSpriteAnim
_080A1D74:
	add sp, 0x64
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1D7C: .4byte 0x0201a01d
_080A1D80: .4byte gSprites
	thumb_func_end sub_80A1D18

	thumb_func_start sub_80A1D84
sub_80A1D84: @ 80A1D84
	push {r4-r6,lr}
	adds r5, r0, 0
	ldr r1, _080A1DC0
	ldr r2, _080A1DC4
	adds r0, r1, 0
	bl sub_80F7920
	adds r4, r0, 0
	ldr r6, _080A1DC8
	str r4, [r6]
	cmp r4, 0
	beq _080A1DBA
	adds r0, r5, 0
	movs r1, 0x8
	bl GetMonData
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl StartSpriteAnim
	ldr r1, [r6]
	movs r0, 0x3C
	strh r0, [r1, 0x20]
	movs r0, 0x1A
	strh r0, [r1, 0x22]
_080A1DBA:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1DC0: .4byte 0x00007533
_080A1DC4: .4byte gSummaryScreenMonMarkingsPalette
_080A1DC8: .4byte gUnknown_020384F4
	thumb_func_end sub_80A1D84

	thumb_func_start sub_80A1DCC
sub_80A1DCC: @ 80A1DCC
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _080A1DE4
	ldr r0, [r0]
	bl DestroySprite
	adds r0, r4, 0
	bl sub_80A1D84
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1DE4: .4byte gUnknown_020384F4
	thumb_func_end sub_80A1DCC

	thumb_func_start sub_80A1DE8
sub_80A1DE8: @ 80A1DE8
	push {r4,lr}
	movs r1, 0x26
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl ball_number_to_ball_processing_index
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80478DC
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 3
	ldr r1, _080A1E48
	adds r0, r1
	movs r1, 0x6
	movs r2, 0x88
	movs r3, 0
	bl CreateSprite
	ldr r2, _080A1E4C
	strb r0, [r2, 0xD]
	ldr r3, _080A1E50
	ldrb r1, [r2, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r3, 0
	adds r1, 0x1C
	adds r0, r1
	ldr r1, _080A1E54
	str r1, [r0]
	ldrb r1, [r2, 0xD]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x5]
	movs r2, 0xC
	orrs r1, r2
	strb r1, [r0, 0x5]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1E48: .4byte gSpriteTemplate_820AAB4
_080A1E4C: .4byte 0x02018000
_080A1E50: .4byte gSprites
_080A1E54: .4byte SpriteCallbackDummy
	thumb_func_end sub_80A1DE8

	thumb_func_start sub_80A1E58
sub_80A1E58: @ 80A1E58
	push {r4,lr}
	adds r2, r0, 0
	lsls r1, 24
	lsrs r1, 24
	cmp r1, 0xFF
	beq _080A1E92
	ldr r3, _080A1E6C
	ldrb r0, [r3]
	adds r4, r2, 0x5
	b _080A1E74
	.align 2, 0
_080A1E6C: .4byte gUnknown_083C15BC
_080A1E70:
	adds r3, 0x4
	ldrb r0, [r3]
_080A1E74:
	cmp r0, 0xFF
	beq _080A1E7C
	cmp r0, r1
	bne _080A1E70
_080A1E7C:
	movs r0, 0xFC
	strb r0, [r2]
	movs r0, 0x4
	strb r0, [r2, 0x1]
	ldrb r0, [r3, 0x1]
	strb r0, [r2, 0x2]
	ldrb r0, [r3, 0x2]
	strb r0, [r2, 0x3]
	ldrb r0, [r3, 0x3]
	strb r0, [r2, 0x4]
	adds r2, r4, 0
_080A1E92:
	adds r0, r2, 0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A1E58

	thumb_func_start sub_80A1E9C
sub_80A1E9C: @ 80A1E9C
	push {r4-r6,lr}
	sub sp, 0x4
	adds r6, r0, 0
	adds r5, r1, 0
	lsls r4, r2, 24
	lsrs r4, 24
	mov r1, sp
	adds r1, 0x1
	mov r2, sp
	adds r2, 0x2
	mov r0, sp
	bl sub_8072CD4
	adds r0, r6, 0
	adds r1, r4, 0
	bl sub_80A1E58
	adds r6, r0, 0
	adds r1, r5, 0
	bl StringCopy
	adds r6, r0, 0
	cmp r4, 0xFF
	beq _080A1EEC
	movs r0, 0xFC
	strb r0, [r6]
	movs r0, 0x4
	strb r0, [r6, 0x1]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r6, 0x2]
	mov r0, sp
	ldrb r0, [r0, 0x1]
	strb r0, [r6, 0x3]
	mov r0, sp
	ldrb r0, [r0, 0x2]
	strb r0, [r6, 0x4]
	movs r0, 0xFF
	strb r0, [r6, 0x5]
	adds r6, 0x5
_080A1EEC:
	adds r0, r6, 0
	add sp, 0x4
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A1E9C

	thumb_func_start sub_80A1EF8
sub_80A1EF8: @ 80A1EF8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x4
	mov r9, r0
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r3, [sp, 0x1C]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 16
	lsrs r6, 16
	ldr r0, _080A1F44
	mov r8, r0
	mov r1, r9
	adds r2, r4, 0
	str r3, [sp]
	bl sub_80A1E9C
	ldr r3, [sp]
	lsls r3, 24
	lsrs r3, 24
	mov r0, r8
	adds r1, r5, 0
	adds r2, r6, 0
	bl sub_80729D8
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1F44: .4byte gStringVar4
	thumb_func_end sub_80A1EF8

	thumb_func_start sub_80A1F48
sub_80A1F48: @ 80A1F48
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, 0x4
	mov r9, r0
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r3, [sp, 0x1C]
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 16
	lsrs r3, 16
	ldr r0, _080A1F94
	mov r8, r0
	mov r1, r9
	adds r2, r4, 0
	str r3, [sp]
	bl sub_80A1E9C
	mov r0, r8
	adds r1, r5, 0
	adds r2, r6, 0
	ldr r3, [sp]
	bl sub_8072BD8
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A1F94: .4byte gStringVar4
	thumb_func_end sub_80A1F48

	thumb_func_start sub_80A1F98
sub_80A1F98: @ 80A1F98
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	mov r10, r0
	mov r8, r1
	adds r4, r2, 0
	adds r2, r3, 0
	ldr r5, [sp, 0x24]
	ldr r6, [sp, 0x28]
	ldr r7, [sp, 0x2C]
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	lsls r4, 24
	lsrs r4, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 16
	lsrs r6, 16
	ldr r0, _080A1FF4
	mov r9, r0
	mov r1, r10
	adds r3, r4, 0
	bl ConvertIntToDecimalStringN
	str r7, [sp]
	mov r0, r9
	mov r1, r8
	adds r2, r5, 0
	adds r3, r6, 0
	bl sub_80A1EF8
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A1FF4: .4byte gStringVar1
	thumb_func_end sub_80A1F98

	thumb_func_start sub_80A1FF8
sub_80A1FF8: @ 80A1FF8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	mov r9, r0
	adds r4, r1, 0
	adds r5, r2, 0
	adds r6, r3, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	ldr r0, _080A2038
	mov r8, r0
	mov r1, r9
	adds r2, r4, 0
	bl sub_80A1E9C
	mov r0, r8
	adds r1, r5, 0
	adds r2, r6, 0
	bl MenuPrint
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2038: .4byte gStringVar4
	thumb_func_end sub_80A1FF8

	thumb_func_start sub_80A203C
sub_80A203C: @ 80A203C
	push {r4,lr}
	sub sp, 0xC
	adds r4, r0, 0
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x34
	strb r0, [r4]
	adds r4, 0x1
	cmp r1, 0
	bne _080A2052
	movs r1, 0x5
_080A2052:
	mov r0, sp
	bl ConvertIntToDecimalString
	adds r0, r4, 0
	mov r1, sp
	movs r2, 0xE
	bl sub_80A1E9C
	adds r4, r0, 0
	ldr r1, _080A2074
	bl StringCopy
	adds r4, r0, 0
	add sp, 0xC
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A2074: .4byte gOtherText_Comma
	thumb_func_end sub_80A203C

	thumb_func_start BgFrame_FillTileMap
BgFrame_FillTileMap: @ 80A2078
	push {lr}
	ldr r3, _080A209C
	ldr r2, _080A20A0
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, [r1]
	str r2, [r3]
	ldr r2, _080A20A4
	str r2, [r1]
	lsls r0, 24
	lsrs r0, 24
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080A209C: .4byte gUnknown_03005CF0
_080A20A0: .4byte gTasks
_080A20A4: .4byte sub_80A20A8
	thumb_func_end BgFrame_FillTileMap

	thumb_func_start sub_80A20A8
sub_80A20A8: @ 80A20A8
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_8055870
	cmp r0, 0x1
	beq _080A20C6
	ldr r1, _080A20CC
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A20D0
	ldr r1, [r1]
	str r1, [r0]
_080A20C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A20CC: .4byte gTasks
_080A20D0: .4byte gUnknown_03005CF0
	thumb_func_end sub_80A20A8

	thumb_func_start exec_movement
exec_movement: @ 80A20D4
	push {r4,lr}
	sub sp, 0x4
	adds r4, r3, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r3, sp
	bl TryGetFieldObjectIdByLocalIdAndMap
	lsls r0, 24
	cmp r0, 0
	beq _080A20F6
	movs r0, 0x1
	b _080A211E
_080A20F6:
	ldr r0, _080A2128
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	bne _080A2108
	movs r0, 0x32
	bl sub_80A2198
_080A2108:
	bl sub_80A21E0
	lsls r0, 24
	lsrs r0, 24
	mov r1, sp
	ldrb r1, [r1]
	adds r2, r4, 0
	bl sub_80A21F4
	lsls r0, 24
	lsrs r0, 24
_080A211E:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A2128: .4byte sub_80A244C
	thumb_func_end exec_movement

	thumb_func_start sub_80A212C
sub_80A212C: @ 80A212C
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	mov r3, sp
	bl TryGetFieldObjectIdByLocalIdAndMap
	lsls r0, 24
	cmp r0, 0
	bne _080A216E
	bl sub_80A21E0
	lsls r0, 24
	lsrs r4, r0, 24
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_80A2260
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x10
	beq _080A216E
	adds r0, r4, 0
	bl sub_80A2370
	lsls r0, 24
	lsrs r0, 24
	b _080A2170
_080A216E:
	movs r0, 0x1
_080A2170:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A212C

	thumb_func_start sub_80A2178
sub_80A2178: @ 80A2178
	push {r4,lr}
	bl sub_80A21E0
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xFF
	beq _080A2192
	adds r0, r4, 0
	bl sub_80A2408
	adds r0, r4, 0
	bl DestroyTask
_080A2192:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A2178

	thumb_func_start sub_80A2198
sub_80A2198: @ 80A2198
	push {r4,r5,lr}
	adds r1, r0, 0
	lsls r1, 24
	lsrs r1, 24
	ldr r0, _080A21D4
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	movs r2, 0x1
	lsls r1, r0, 2
	adds r1, r0
	lsls r3, r1, 3
	ldr r5, _080A21D8
	ldr r0, _080A21DC
	adds r4, r0, 0
_080A21B8:
	lsls r0, r2, 1
	adds r0, r3
	adds r0, r5
	ldrh r1, [r0]
	orrs r1, r4
	strh r1, [r0]
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xF
	bls _080A21B8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A21D4: .4byte sub_80A244C
_080A21D8: .4byte gUnknown_03004B28
_080A21DC: .4byte 0x0000ffff
	thumb_func_end sub_80A2198

	thumb_func_start sub_80A21E0
sub_80A21E0: @ 80A21E0
	push {lr}
	ldr r0, _080A21F0
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.align 2, 0
_080A21F0: .4byte sub_80A244C
	thumb_func_end sub_80A21E0

	thumb_func_start sub_80A21F4
sub_80A21F4: @ 80A21F4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r2
	lsls r0, 24
	lsrs r5, r0, 24
	adds r7, r5, 0
	lsls r1, 24
	lsrs r6, r1, 24
	mov r8, r6
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_80A2260
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x10
	beq _080A2230
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A2370
	lsls r0, 24
	cmp r0, 0
	beq _080A2250
	adds r0, r5, 0
	adds r1, r4, 0
	adds r2, r6, 0
	b _080A2246
_080A2230:
	adds r0, r7, 0
	movs r1, 0xFF
	bl sub_80A2260
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x10
	beq _080A2250
	adds r0, r7, 0
	adds r1, r4, 0
	mov r2, r8
_080A2246:
	mov r3, r9
	bl sub_80A23C8
	movs r0, 0
	b _080A2252
_080A2250:
	movs r0, 0x1
_080A2252:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A21F4

	thumb_func_start sub_80A2260
sub_80A2260: @ 80A2260
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _080A2284
	adds r1, r0
	adds r1, 0x2
	movs r2, 0
_080A2278:
	ldrb r0, [r1]
	cmp r0, r3
	bne _080A2288
	adds r0, r2, 0
	b _080A2296
	.align 2, 0
_080A2284: .4byte gUnknown_03004B28
_080A2288:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	adds r1, 0x1
	cmp r2, 0xF
	bls _080A2278
	movs r0, 0x10
_080A2296:
	pop {r1}
	bx r1
	thumb_func_end sub_80A2260

	thumb_func_start sub_80A229C
sub_80A229C: @ 80A229C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _080A22CC
	adds r1, r0
	adds r1, 0x2
	str r1, [r2]
	movs r0, 0
	cmp r0, r3
	bcs _080A22C8
_080A22BA:
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	adds r1, 0x1
	cmp r0, r3
	bcc _080A22BA
	str r1, [r2]
_080A22C8:
	pop {r0}
	bx r0
	.align 2, 0
_080A22CC: .4byte gUnknown_03004B28
	thumb_func_end sub_80A229C

	thumb_func_start sub_80A22D0
sub_80A22D0: @ 80A22D0
	push {r4,lr}
	sub sp, 0x4
	adds r4, r2, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r4, 24
	lsrs r4, 24
	mov r2, sp
	bl sub_80A229C
	ldr r0, [sp]
	strb r4, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A22D0

	thumb_func_start sub_80A22F4
sub_80A22F4: @ 80A22F4
	push {r4,lr}
	sub sp, 0x4
	adds r4, r2, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r2, sp
	bl sub_80A229C
	ldr r0, [sp]
	ldrb r0, [r0]
	strb r0, [r4]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A22F4

	thumb_func_start sub_80A2318
sub_80A2318: @ 80A2318
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	ldr r2, _080A2340
	lsrs r1, 22
	adds r1, r2
	ldr r2, [r1]
	mvns r2, r2
	lsls r2, 16
	lsrs r2, 16
	ldr r3, _080A2344
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r3
	ldrh r0, [r1, 0x8]
	ands r2, r0
	strh r2, [r1, 0x8]
	bx lr
	.align 2, 0
_080A2340: .4byte gBitTable
_080A2344: .4byte gTasks
	thumb_func_end sub_80A2318

	thumb_func_start sub_80A2348
sub_80A2348: @ 80A2348
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	ldr r3, _080A2368
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r2, r3
	ldr r0, _080A236C
	lsrs r1, 22
	adds r1, r0
	ldr r0, [r1]
	ldrh r1, [r2, 0x8]
	orrs r0, r1
	strh r0, [r2, 0x8]
	bx lr
	.align 2, 0
_080A2368: .4byte gTasks
_080A236C: .4byte gBitTable
	thumb_func_end sub_80A2348

	thumb_func_start sub_80A2370
sub_80A2370: @ 80A2370
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	ldr r3, _080A2398
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r2, r3
	ldr r0, _080A239C
	lsrs r1, 22
	adds r1, r0
	ldr r0, [r1]
	ldrh r1, [r2, 0x8]
	ands r0, r1
	cmp r0, 0
	bne _080A23A0
	movs r0, 0
	b _080A23A2
	.align 2, 0
_080A2398: .4byte gTasks
_080A239C: .4byte gBitTable
_080A23A0:
	movs r0, 0x1
_080A23A2:
	pop {r1}
	bx r1
	thumb_func_end sub_80A2370

	thumb_func_start npc_obj_offscreen_culling_and_flag_update
npc_obj_offscreen_culling_and_flag_update: @ 80A23A8
	lsls r0, 24
	ldr r2, _080A23B4
	lsrs r0, 22
	adds r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_080A23B4: .4byte gUnknown_020384F8
	thumb_func_end npc_obj_offscreen_culling_and_flag_update

	thumb_func_start sub_80A23B8
sub_80A23B8: @ 80A23B8
	lsls r0, 24
	ldr r1, _080A23C4
	lsrs r0, 22
	adds r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080A23C4: .4byte gUnknown_020384F8
	thumb_func_end sub_80A23B8

	thumb_func_start sub_80A23C8
sub_80A23C8: @ 80A23C8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r5, r0, 0
	adds r4, r1, 0
	adds r6, r2, 0
	mov r8, r3
	lsls r5, 24
	lsrs r5, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r6, 24
	lsrs r6, 24
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A2318
	adds r0, r4, 0
	mov r1, r8
	bl npc_obj_offscreen_culling_and_flag_update
	adds r0, r5, 0
	adds r1, r4, 0
	adds r2, r6, 0
	bl sub_80A22D0
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A23C8

	thumb_func_start sub_80A2408
sub_80A2408: @ 80A2408
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _080A2444
	adds r1, r0
	adds r4, r1, 0x2
	movs r5, 0
_080A241C:
	ldrb r0, [r4]
	cmp r0, 0xFF
	beq _080A2432
	adds r1, r0, 0
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r1, _080A2448
	adds r0, r1
	bl npc_sync_anim_pause_bits
_080A2432:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r4, 0x1
	cmp r5, 0xF
	bls _080A241C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2444: .4byte gUnknown_03004B28
_080A2448: .4byte gMapObjects
	thumb_func_end sub_80A2408

	thumb_func_start sub_80A244C
sub_80A244C: @ 80A244C
	push {r4-r7,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r7, r0, 24
	movs r5, 0
	mov r6, sp
_080A2458:
	adds r0, r7, 0
	adds r1, r5, 0
	mov r2, sp
	bl sub_80A22F4
	ldrb r0, [r6]
	cmp r0, 0xFF
	beq _080A247C
	adds r4, r0, 0
	adds r0, r5, 0
	bl sub_80A23B8
	adds r3, r0, 0
	adds r0, r7, 0
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_80A2490
_080A247C:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0xF
	bls _080A2458
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A244C

	thumb_func_start sub_80A2490
sub_80A2490: @ 80A2490
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r5, r3, 0
	lsls r0, 24
	lsrs r7, r0, 24
	lsls r1, 24
	lsrs r6, r1, 24
	mov r8, r6
	lsls r2, 24
	lsrs r2, 24
	lsls r0, r2, 3
	adds r0, r2
	lsls r0, 2
	ldr r1, _080A24E0
	adds r4, r0, r1
	adds r0, r4, 0
	bl FieldObjectIsSpecialAnimActive
	lsls r0, 24
	cmp r0, 0
	beq _080A24C8
	adds r0, r4, 0
	bl FieldObjectClearAnimIfSpecialAnimFinished
	lsls r0, 24
	cmp r0, 0
	beq _080A24FA
_080A24C8:
	ldrb r1, [r5]
	cmp r1, 0xFE
	bne _080A24E4
	adds r0, r7, 0
	adds r1, r6, 0
	bl sub_80A2348
	adds r0, r4, 0
	bl sub_80643A4
	b _080A24FA
	.align 2, 0
_080A24E0: .4byte gMapObjects
_080A24E4:
	adds r0, r4, 0
	bl FieldObjectSetSpecialAnim
	lsls r0, 24
	cmp r0, 0
	bne _080A24FA
	adds r5, 0x1
	mov r0, r8
	adds r1, r5, 0
	bl npc_obj_offscreen_culling_and_flag_update
_080A24FA:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A2490

	thumb_func_start SetUpFieldMove_Cut
SetUpFieldMove_Cut: @ 80A2504
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r0, 0x52
	bl npc_before_player_of_type
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A2534
	ldr r1, _080A2524
	ldr r0, _080A2528
	str r0, [r1]
	ldr r1, _080A252C
	ldr r0, _080A2530
	b _080A25A8
	.align 2, 0
_080A2524: .4byte gUnknown_0300485C
_080A2528: .4byte sub_808AB90
_080A252C: .4byte gUnknown_03005CE4
_080A2530: .4byte sub_80A2634
_080A2534:
	ldr r4, _080A25B0
	adds r1, r4, 0x2
	adds r0, r4, 0
	bl PlayerGetDestCoords
	movs r7, 0
	mov r8, r4
_080A2542:
	ldr r1, _080A25B4
	adds r0, r7, r1
	mov r2, r8
	ldrh r2, [r2, 0x2]
	adds r0, r2
	movs r6, 0
	lsls r0, 16
	asrs r5, r0, 16
_080A2552:
	ldr r1, _080A25B4
	adds r0, r6, r1
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r2
	lsls r0, 16
	asrs r4, r0, 16
	adds r0, r4, 0
	adds r1, r5, 0
	bl MapGridGetZCoordAt
	lsls r0, 24
	lsrs r0, 24
	mov r2, r8
	movs r1, 0x4
	ldrsb r1, [r2, r1]
	cmp r0, r1
	bne _080A25C8
	adds r0, r4, 0
	adds r1, r5, 0
	bl MapGridGetMetatileBehaviorAt
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl sub_8056E14
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A259E
	adds r0, r4, 0
	bl MetatileBehavior_IsAsh
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A25C8
_080A259E:
	ldr r1, _080A25B8
	ldr r0, _080A25BC
	str r0, [r1]
	ldr r1, _080A25C0
	ldr r0, _080A25C4
_080A25A8:
	str r0, [r1]
	movs r0, 0x1
	b _080A25DE
	.align 2, 0
_080A25B0: .4byte gUnknown_0203923C
_080A25B4: .4byte 0x0000ffff
_080A25B8: .4byte gUnknown_0300485C
_080A25BC: .4byte sub_808AB90
_080A25C0: .4byte gUnknown_03005CE4
_080A25C4: .4byte sub_80A25E8
_080A25C8:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _080A2552
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _080A2542
	movs r0, 0
_080A25DE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end SetUpFieldMove_Cut

	thumb_func_start sub_80A25E8
sub_80A25E8: @ 80A25E8
	push {lr}
	movs r0, 0x1
	bl FieldEffectStart
	ldr r0, _080A25FC
	ldr r1, _080A2600
	ldrb r1, [r1]
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080A25FC: .4byte gUnknown_0202FF84
_080A2600: .4byte gUnknown_03005CE0
	thumb_func_end sub_80A25E8

	thumb_func_start FldEff_UseCutOnGrass
FldEff_UseCutOnGrass: @ 80A2604
	push {lr}
	bl oei_task_add
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A262C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, _080A2630
	lsrs r0, r2, 16
	strh r0, [r1, 0x18]
	strh r2, [r1, 0x1A]
	movs r0, 0x12
	bl sav12_xor_increment
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A262C: .4byte gTasks
_080A2630: .4byte sub_80A2684
	thumb_func_end FldEff_UseCutOnGrass

	thumb_func_start sub_80A2634
sub_80A2634: @ 80A2634
	push {lr}
	ldr r1, _080A2648
	ldr r0, _080A264C
	ldrb r0, [r0]
	str r0, [r1]
	ldr r0, _080A2650
	bl ScriptContext1_SetupScript
	pop {r0}
	bx r0
	.align 2, 0
_080A2648: .4byte gUnknown_0202FF84
_080A264C: .4byte gUnknown_03005CE0
_080A2650: .4byte UseCutScript
	thumb_func_end sub_80A2634

	thumb_func_start FldEff_UseCutOnTree
FldEff_UseCutOnTree: @ 80A2654
	push {lr}
	bl oei_task_add
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A267C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, _080A2680
	lsrs r0, r2, 16
	strh r0, [r1, 0x18]
	strh r2, [r1, 0x1A]
	movs r0, 0x12
	bl sav12_xor_increment
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A267C: .4byte gTasks
_080A2680: .4byte sub_80A2B00
	thumb_func_end FldEff_UseCutOnTree

	thumb_func_start sub_80A2684
sub_80A2684: @ 80A2684
	push {lr}
	movs r0, 0x1
	bl FieldEffectActiveListRemove
	movs r0, 0x3A
	bl FieldEffectStart
	pop {r0}
	bx r0
	thumb_func_end sub_80A2684

	thumb_func_start FldEff_CutGrass
FldEff_CutGrass: @ 80A2698
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	movs r7, 0
	movs r0, 0x80
	bl PlaySE
	ldr r4, _080A2790
	adds r1, r4, 0x2
	adds r0, r4, 0
	bl PlayerGetDestCoords
	mov r8, r4
_080A26B2:
	ldr r1, _080A2794
	adds r0, r7, r1
	mov r2, r8
	ldrh r2, [r2, 0x2]
	adds r0, r2
	movs r6, 0
	lsls r0, 16
	asrs r5, r0, 16
_080A26C2:
	ldr r1, _080A2794
	adds r0, r6, r1
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r2
	lsls r0, 16
	asrs r4, r0, 16
	adds r0, r4, 0
	adds r1, r5, 0
	bl MapGridGetZCoordAt
	lsls r0, 24
	lsrs r0, 24
	mov r2, r8
	movs r1, 0x4
	ldrsb r1, [r2, r1]
	cmp r0, r1
	bne _080A270E
	adds r0, r4, 0
	adds r1, r5, 0
	bl MapGridGetMetatileBehaviorAt
	lsls r0, 24
	lsrs r0, 24
	bl sub_80578F8
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A270E
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_80A27A8
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_805BCC0
_080A270E:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	cmp r6, 0x2
	bls _080A26C2
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x2
	bls _080A26B2
	ldr r1, _080A2790
	ldrh r0, [r1]
	subs r0, 0x1
	lsls r0, 16
	asrs r0, 16
	ldrh r1, [r1, 0x2]
	subs r1, 0x2
	lsls r1, 16
	asrs r1, 16
	bl sub_80A28F4
	bl DrawWholeMapView
	movs r7, 0
	ldr r4, _080A2798
_080A2740:
	ldr r0, _080A279C
	ldrb r1, [r0, 0x4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	ldrh r1, [r0, 0x2]
	lsls r1, 23
	lsrs r1, 7
	movs r2, 0x80
	lsls r2, 12
	adds r1, r2
	asrs r1, 16
	ldrb r2, [r0]
	adds r2, 0x14
	ldr r0, _080A27A0
	movs r3, 0
	bl CreateSprite
	ldr r1, _080A27A4
	adds r1, r7, r1
	strb r0, [r1]
	ldrb r1, [r1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r4
	lsls r1, r7, 5
	strh r1, [r0, 0x32]
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0x7
	bls _080A2740
	movs r0, 0
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A2790: .4byte gUnknown_0203923C
_080A2794: .4byte 0x0000ffff
_080A2798: .4byte gSprites
_080A279C: .4byte gPlayerAvatar
_080A27A0: .4byte gSpriteTemplate_CutGrass
_080A27A4: .4byte 0x0201fff0
	thumb_func_end FldEff_CutGrass

	thumb_func_start sub_80A27A8
sub_80A27A8: @ 80A27A8
	push {r4-r7,lr}
	lsls r0, 16
	lsls r1, 16
	lsrs r6, r0, 16
	asrs r4, r0, 16
	lsrs r7, r1, 16
	asrs r5, r1, 16
	adds r0, r4, 0
	adds r1, r5, 0
	bl MapGridGetMetatileIdAt
	adds r1, r0, 0
	ldr r0, _080A27E0
	cmp r1, r0
	bgt _080A27F4
	subs r0, 0x1
	cmp r1, r0
	bge _080A286C
	cmp r1, 0x25
	beq _080A288E
	cmp r1, 0x25
	bgt _080A27E4
	cmp r1, 0xD
	beq _080A2834
	cmp r1, 0x15
	beq _080A2834
	b _080A2898
	.align 2, 0
_080A27E0: .4byte 0x00000207
_080A27E4:
	movs r0, 0xE3
	lsls r0, 1
	cmp r1, r0
	beq _080A2844
	adds r0, 0x1
	cmp r1, r0
	beq _080A284A
	b _080A2898
_080A27F4:
	ldr r0, _080A280C
	cmp r1, r0
	beq _080A287C
	cmp r1, r0
	bgt _080A2810
	subs r0, 0xA
	cmp r1, r0
	beq _080A2834
	adds r0, 0x2
	cmp r1, r0
	beq _080A287C
	b _080A2898
	.align 2, 0
_080A280C: .4byte 0x00000212
_080A2810:
	ldr r0, _080A2824
	cmp r1, r0
	beq _080A285C
	cmp r1, r0
	bgt _080A2828
	subs r0, 0x1
	cmp r1, r0
	beq _080A2854
	b _080A2898
	.align 2, 0
_080A2824: .4byte 0x00000282
_080A2828:
	ldr r0, _080A2830
	cmp r1, r0
	beq _080A2864
	b _080A2898
	.align 2, 0
_080A2830: .4byte 0x00000283
_080A2834:
	lsls r0, r6, 16
	asrs r0, 16
	lsls r1, r7, 16
	asrs r1, 16
	movs r2, 0x1
	bl MapGridSetMetatileIdAt
	b _080A2898
_080A2844:
	movs r2, 0xE7
	lsls r2, 1
	b _080A286E
_080A284A:
	ldr r2, _080A2850
	b _080A286E
	.align 2, 0
_080A2850: .4byte 0x000001cf
_080A2854:
	ldr r2, _080A2858
	b _080A286E
	.align 2, 0
_080A2858: .4byte 0x00000279
_080A285C:
	ldr r2, _080A2860
	b _080A286E
	.align 2, 0
_080A2860: .4byte 0x0000027a
_080A2864:
	ldr r2, _080A2868
	b _080A286E
	.align 2, 0
_080A2868: .4byte 0x0000027b
_080A286C:
	ldr r2, _080A2878
_080A286E:
	adds r0, r4, 0
	adds r1, r5, 0
	bl MapGridSetMetatileIdAt
	b _080A2898
	.align 2, 0
_080A2878: .4byte 0x00000271
_080A287C:
	lsls r0, r6, 16
	asrs r0, 16
	lsls r1, r7, 16
	asrs r1, 16
	movs r2, 0x86
	lsls r2, 2
	bl MapGridSetMetatileIdAt
	b _080A2898
_080A288E:
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0xE
	bl MapGridSetMetatileIdAt
_080A2898:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A27A8

	thumb_func_start sub_80A28A0
sub_80A28A0: @ 80A28A0
	push {lr}
	lsls r0, 16
	asrs r0, 16
	lsls r1, 16
	asrs r1, 16
	bl MapGridGetMetatileIdAt
	lsls r0, 16
	lsrs r1, r0, 16
	adds r2, r1, 0
	cmp r1, 0x1
	bne _080A28BC
	movs r0, 0x1
	b _080A28EE
_080A28BC:
	ldr r0, _080A28C8
	cmp r1, r0
	bne _080A28CC
	movs r0, 0x2
	b _080A28EE
	.align 2, 0
_080A28C8: .4byte 0x00000279
_080A28CC:
	ldr r0, _080A28D8
	cmp r1, r0
	bne _080A28DC
	movs r0, 0x3
	b _080A28EE
	.align 2, 0
_080A28D8: .4byte 0x0000027a
_080A28DC:
	ldr r0, _080A28E8
	cmp r2, r0
	beq _080A28EC
	movs r0, 0
	b _080A28EE
	.align 2, 0
_080A28E8: .4byte 0x0000027b
_080A28EC:
	movs r0, 0x4
_080A28EE:
	pop {r1}
	bx r1
	thumb_func_end sub_80A28A0

	thumb_func_start sub_80A28F4
sub_80A28F4: @ 80A28F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	lsls r1, 16
	movs r2, 0xC0
	lsls r2, 10
	adds r0, r1, r2
	lsrs r0, 16
	mov r9, r0
	movs r4, 0
	asrs r7, r1, 16
_080A2914:
	mov r1, r10
	lsls r0, r1, 16
	asrs r0, 16
	lsls r4, 16
	asrs r1, r4, 16
	adds r0, r1
	lsls r0, 16
	lsrs r6, r0, 16
	asrs r5, r0, 16
	adds r0, r5, 0
	adds r1, r7, 0
	bl MapGridGetMetatileIdAt
	mov r8, r4
	cmp r0, 0x15
	bne _080A2996
	adds r4, r7, 0x1
	lsls r1, r4, 16
	asrs r1, 16
	adds r0, r5, 0
	bl sub_80A28A0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	beq _080A296A
	cmp r0, 0x2
	bgt _080A2952
	cmp r0, 0x1
	beq _080A295C
	b _080A2996
_080A2952:
	cmp r0, 0x3
	beq _080A297C
	cmp r0, 0x4
	beq _080A298C
	b _080A2996
_080A295C:
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x82
	lsls r2, 2
	bl MapGridSetMetatileIdAt
	b _080A2996
_080A296A:
	adds r0, r5, 0
	adds r1, r4, 0
	ldr r2, _080A2978
	bl MapGridSetMetatileIdAt
	b _080A2996
	.align 2, 0
_080A2978: .4byte 0x00000281
_080A297C:
	adds r0, r5, 0
	adds r1, r4, 0
	ldr r2, _080A2988
	bl MapGridSetMetatileIdAt
	b _080A2996
	.align 2, 0
_080A2988: .4byte 0x00000282
_080A298C:
	adds r0, r5, 0
	adds r1, r4, 0
	ldr r2, _080A2A30
	bl MapGridSetMetatileIdAt
_080A2996:
	lsls r0, r6, 16
	asrs r5, r0, 16
	mov r2, r9
	lsls r0, r2, 16
	asrs r4, r0, 16
	adds r0, r5, 0
	adds r1, r4, 0
	bl MapGridGetMetatileIdAt
	cmp r0, 0x1
	bne _080A2A10
	adds r4, 0x1
	adds r0, r5, 0
	adds r1, r4, 0
	bl MapGridGetMetatileIdAt
	movs r1, 0x82
	lsls r1, 2
	cmp r0, r1
	bne _080A29C8
	adds r0, r5, 0
	adds r1, r4, 0
	movs r2, 0x1
	bl MapGridSetMetatileIdAt
_080A29C8:
	adds r0, r5, 0
	adds r1, r4, 0
	bl MapGridGetMetatileIdAt
	ldr r1, _080A2A34
	cmp r0, r1
	bne _080A29E0
	adds r0, r5, 0
	adds r1, r4, 0
	ldr r2, _080A2A38
	bl MapGridSetMetatileIdAt
_080A29E0:
	adds r0, r5, 0
	adds r1, r4, 0
	bl MapGridGetMetatileIdAt
	ldr r1, _080A2A3C
	cmp r0, r1
	bne _080A29F8
	adds r0, r5, 0
	adds r1, r4, 0
	ldr r2, _080A2A40
	bl MapGridSetMetatileIdAt
_080A29F8:
	adds r0, r5, 0
	adds r1, r4, 0
	bl MapGridGetMetatileIdAt
	ldr r1, _080A2A30
	cmp r0, r1
	bne _080A2A10
	adds r0, r5, 0
	adds r1, r4, 0
	ldr r2, _080A2A44
	bl MapGridSetMetatileIdAt
_080A2A10:
	movs r0, 0x80
	lsls r0, 9
	add r0, r8
	lsrs r4, r0, 16
	asrs r0, 16
	cmp r0, 0x2
	bgt _080A2A20
	b _080A2914
_080A2A20:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2A30: .4byte 0x00000283
_080A2A34: .4byte 0x00000281
_080A2A38: .4byte 0x00000279
_080A2A3C: .4byte 0x00000282
_080A2A40: .4byte 0x0000027a
_080A2A44: .4byte 0x0000027b
	thumb_func_end sub_80A28F4

	thumb_func_start sub_80A2A48
sub_80A2A48: @ 80A2A48
	movs r2, 0
	movs r1, 0x8
	strh r1, [r0, 0x2E]
	strh r2, [r0, 0x30]
	strh r2, [r0, 0x34]
	ldr r1, _080A2A58
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_080A2A58: .4byte objc_8097BBC
	thumb_func_end sub_80A2A48

	thumb_func_start objc_8097BBC
objc_8097BBC: @ 80A2A5C
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x32
	ldrsh r0, [r4, r1]
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	bl Sin
	strh r0, [r4, 0x24]
	movs r1, 0x32
	ldrsh r0, [r4, r1]
	movs r2, 0x2E
	ldrsh r1, [r4, r2]
	bl Cos
	strh r0, [r4, 0x26]
	ldrh r0, [r4, 0x32]
	adds r0, 0x8
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r4, 0x32]
	ldrh r1, [r4, 0x2E]
	adds r1, 0x1
	ldrh r2, [r4, 0x34]
	lsls r0, r2, 16
	asrs r0, 18
	adds r1, r0
	strh r1, [r4, 0x2E]
	adds r2, 0x1
	strh r2, [r4, 0x34]
	ldrh r1, [r4, 0x30]
	movs r2, 0x30
	ldrsh r0, [r4, r2]
	cmp r0, 0x1C
	beq _080A2AA8
	adds r0, r1, 0x1
	strh r0, [r4, 0x30]
	b _080A2AAC
_080A2AA8:
	ldr r0, _080A2AB4
	str r0, [r4, 0x1C]
_080A2AAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2AB4: .4byte sub_80A2AB8
	thumb_func_end objc_8097BBC

	thumb_func_start sub_80A2AB8
sub_80A2AB8: @ 80A2AB8
	push {r4-r6,lr}
	movs r4, 0x1
_080A2ABC:
	ldr r6, _080A2AF8
	adds r0, r4, r6
	ldrb r1, [r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r5, _080A2AFC
	adds r0, r5
	bl DestroySprite
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bls _080A2ABC
	ldrb r1, [r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	movs r1, 0x3A
	bl FieldEffectStop
	bl sub_8064E2C
	bl ScriptContext2_Disable
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2AF8: .4byte 0x0201fff0
_080A2AFC: .4byte gSprites
	thumb_func_end sub_80A2AB8

	thumb_func_start sub_80A2B00
sub_80A2B00: @ 80A2B00
	push {lr}
	movs r0, 0x80
	bl PlaySE
	movs r0, 0x2
	bl FieldEffectActiveListRemove
	bl EnableBothScriptContexts
	pop {r0}
	bx r0
	thumb_func_end sub_80A2B00

	thumb_func_start sub_80A2B18
sub_80A2B18: @ 80A2B18
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _080A2B3C
_080A2B1E:
	lsls r0, r4, 3
	adds r0, r4
	lsls r0, 2
	adds r0, r5
	bl sub_80A2B40
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0xF
	bls _080A2B1E
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2B3C: .4byte gSaveBlock1 + 0x2B4C
	thumb_func_end sub_80A2B18

	thumb_func_start sub_80A2B40
sub_80A2B40: @ 80A2B40
	push {r4-r6,lr}
	adds r3, r0, 0
	ldr r0, _080A2B90
	adds r4, r0, 0
	adds r1, r3, 0
	movs r2, 0x8
_080A2B4C:
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, 0x2
	subs r2, 0x1
	cmp r2, 0
	bge _080A2B4C
	movs r2, 0
	adds r6, r3, 0
	adds r6, 0x1A
	adds r4, r3, 0
	adds r4, 0x12
	movs r5, 0xFF
_080A2B66:
	adds r1, r4, r2
	ldrb r0, [r1]
	orrs r0, r5
	strb r0, [r1]
	adds r2, 0x1
	cmp r2, 0x7
	ble _080A2B66
	adds r1, r6, 0
	movs r2, 0
	adds r0, r1, 0x3
_080A2B7A:
	strb r2, [r0]
	subs r0, 0x1
	cmp r0, r1
	bge _080A2B7A
	movs r1, 0
	movs r0, 0x1
	strh r0, [r3, 0x1E]
	strh r1, [r3, 0x20]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2B90: .4byte 0x0000ffff
	thumb_func_end sub_80A2B40

	thumb_func_start sub_80A2B94
sub_80A2B94: @ 80A2B94
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0xC
	bl GetMonData
	lsls r0, 16
	lsrs r0, 16
	bl itemid_is_mail
	lsls r0, 24
	cmp r0, 0
	beq _080A2BBC
	adds r0, r4, 0
	movs r1, 0x40
	bl GetMonData
	cmp r0, 0xFF
	beq _080A2BBC
	movs r0, 0x1
	b _080A2BBE
_080A2BBC:
	movs r0, 0
_080A2BBE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A2B94

	thumb_func_start sub_80A2BC4
sub_80A2BC4: @ 80A2BC4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0xC
	adds r7, r0, 0
	lsls r1, 16
	lsrs r0, r1, 16
	str r0, [sp, 0x8]
	mov r0, sp
	movs r2, 0
	ldrb r3, [r0, 0x8]
	strb r3, [r0]
	lsrs r1, 24
	strb r1, [r0, 0x1]
	add r3, sp, 0x4
	strb r2, [r3]
	mov r10, r3
	ldr r4, _080A2D00
	mov r9, r4
	mov r8, r3
	adds r2, r3, 0
_080A2BF2:
	ldrb r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r9
	ldr r5, _080A2D04
	adds r0, r5
	ldrh r0, [r0]
	cmp r0, 0
	beq _080A2C08
	b _080A2D24
_080A2C08:
	movs r3, 0
	ldr r0, _080A2D08
	mov r12, r0
	mov r4, r10
	ldr r6, _080A2D0C
	ldr r1, _080A2D10
	adds r5, r1, 0
_080A2C16:
	lsls r2, r3, 1
	ldrb r1, [r4]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r2, r0
	adds r2, r6
	ldrh r0, [r2]
	orrs r0, r5
	strh r0, [r2]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x8
	bls _080A2C16
	movs r3, 0
	mov r2, r10
	ldr r4, _080A2D14
_080A2C3A:
	ldrb r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3, r0
	adds r0, r4
	mov r5, r12
	adds r1, r3, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x6
	bls _080A2C3A
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3, r0
	ldr r1, _080A2D14
	adds r0, r1
	movs r1, 0xFF
	strb r1, [r0]
	mov r2, r8
	ldrb r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	ldr r3, _080A2D14
	adds r0, r3
	movs r1, 0
	bl sub_814A518
	movs r3, 0
	mov r2, r10
	ldr r5, _080A2D18
	ldr r4, _080A2D1C
_080A2C88:
	ldrb r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3, r0
	adds r0, r5
	adds r1, r3, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x3
	bls _080A2C88
	adds r0, r7, 0
	movs r1, 0xB
	bl GetBoxMonData
	adds r4, r0, 0
	lsls r4, 16
	lsrs r4, 16
	adds r0, r7, 0
	movs r1, 0
	bl GetBoxMonData
	adds r1, r0, 0
	adds r0, r4, 0
	bl sub_80A2D44
	mov r4, r8
	ldrb r2, [r4]
	lsls r1, r2, 3
	adds r1, r2
	lsls r1, 2
	add r1, r9
	ldr r5, _080A2D20
	adds r1, r5
	strh r0, [r1]
	ldrb r1, [r4]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	add r0, r9
	ldr r1, _080A2D04
	adds r0, r1
	mov r2, sp
	ldrh r2, [r2, 0x8]
	strh r2, [r0]
	adds r0, r7, 0
	movs r1, 0x40
	mov r2, r8
	bl SetMonData
	adds r0, r7, 0
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
	ldrb r0, [r4]
	b _080A2D32
	.align 2, 0
_080A2D00: .4byte gSaveBlock1
_080A2D04: .4byte 0x00002b6c
_080A2D08: .4byte gSaveBlock2
_080A2D0C: .4byte gSaveBlock1 + 0x2B4C
_080A2D10: .4byte 0x0000ffff
_080A2D14: .4byte gSaveBlock1 + 0x2B5E
_080A2D18: .4byte gSaveBlock1 + 0x2B66
_080A2D1C: .4byte gSaveBlock2 + 0xA
_080A2D20: .4byte 0x00002b6a
_080A2D24:
	adds r0, r1, 0x1
	strb r0, [r3]
	ldrb r0, [r2]
	cmp r0, 0x5
	bhi _080A2D30
	b _080A2BF2
_080A2D30:
	movs r0, 0xFF
_080A2D32:
	add sp, 0xC
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A2BC4

	thumb_func_start sub_80A2D44
sub_80A2D44: @ 80A2D44
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xC9
	bne _080A2D5C
	adds r0, r1, 0
	bl sub_809D474
	lsls r0, 16
	ldr r1, _080A2D60
	adds r0, r1
	lsrs r0, 16
_080A2D5C:
	pop {r1}
	bx r1
	.align 2, 0
_080A2D60: .4byte 0x75300000
	thumb_func_end sub_80A2D44

	thumb_func_start sub_80A2D64
sub_80A2D64: @ 80A2D64
	push {lr}
	lsls r0, 16
	lsrs r3, r0, 16
	ldr r0, _080A2D7C
	adds r2, r3, r0
	lsls r0, r2, 16
	lsrs r0, 16
	cmp r0, 0x1B
	bhi _080A2D80
	movs r0, 0xC9
	strh r2, [r1]
	b _080A2D82
	.align 2, 0
_080A2D7C: .4byte 0xffff8ad0
_080A2D80:
	adds r0, r3, 0
_080A2D82:
	pop {r1}
	bx r1
	thumb_func_end sub_80A2D64

	thumb_func_start sub_80A2D88
sub_80A2D88: @ 80A2D88
	push {r4-r7,lr}
	sub sp, 0x8
	adds r6, r0, 0
	adds r7, r1, 0
	ldrh r5, [r7, 0x20]
	adds r1, r5, 0
	bl sub_80A2BC4
	add r4, sp, 0x4
	strb r0, [r4]
	ldrb r2, [r4]
	cmp r2, 0xFF
	beq _080A2DE8
	ldr r0, _080A2DE0
	lsls r1, r2, 3
	adds r1, r2
	lsls r1, 2
	adds r1, r0
	ldr r0, _080A2DE4
	adds r1, r0
	adds r0, r7, 0
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	ldm r0!, {r2,r3,r7}
	stm r1!, {r2,r3,r7}
	adds r0, r6, 0
	movs r1, 0x40
	adds r2, r4, 0
	bl SetMonData
	mov r0, sp
	strb r5, [r0]
	mov r1, sp
	lsrs r0, r5, 8
	strb r0, [r1, 0x1]
	adds r0, r6, 0
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
	ldrb r0, [r4]
	b _080A2DEA
	.align 2, 0
_080A2DE0: .4byte gSaveBlock1
_080A2DE4: .4byte 0x00002b4c
_080A2DE8:
	movs r0, 0xFF
_080A2DEA:
	add sp, 0x8
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A2D88

	thumb_func_start unref_sub_80A2DF4
unref_sub_80A2DF4: @ 80A2DF4
	movs r0, 0
	bx lr
	thumb_func_end unref_sub_80A2DF4

	thumb_func_start sub_80A2DF8
sub_80A2DF8: @ 80A2DF8
	push {r4,lr}
	sub sp, 0x8
	adds r4, r0, 0
	bl sub_80A2B94
	lsls r0, 24
	cmp r0, 0
	beq _080A2E46
	adds r0, r4, 0
	movs r1, 0x40
	bl GetMonData
	add r2, sp, 0x4
	strb r0, [r2]
	ldr r3, _080A2E50
	ldrb r1, [r2]
	lsls r0, r1, 3
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldr r1, _080A2E54
	adds r0, r1
	movs r3, 0
	movs r1, 0
	strh r1, [r0]
	movs r0, 0xFF
	strb r0, [r2]
	mov r0, sp
	strb r3, [r0]
	strb r3, [r0, 0x1]
	adds r0, r4, 0
	movs r1, 0x40
	bl SetMonData
	adds r0, r4, 0
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
_080A2E46:
	add sp, 0x8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2E50: .4byte gSaveBlock1
_080A2E54: .4byte 0x00002b6c
	thumb_func_end sub_80A2DF8

	thumb_func_start unref_sub_80A2E58
unref_sub_80A2E58: @ 80A2E58
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A2E70
	lsls r1, r0, 3
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldr r0, _080A2E74
	adds r1, r0
	movs r0, 0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080A2E70: .4byte gSaveBlock1
_080A2E74: .4byte 0x00002b6c
	thumb_func_end unref_sub_80A2E58

	thumb_func_start sub_80A2E78
sub_80A2E78: @ 80A2E78
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0xC
	adds r5, r0, 0
	mov r0, sp
	movs r1, 0
	strb r1, [r0]
	strb r1, [r0, 0x1]
	add r1, sp, 0x4
	movs r0, 0xFF
	strb r0, [r1]
	movs r7, 0x6
	mov r9, r1
	ldr r0, _080A2F04
	mov r8, r0
	ldr r2, _080A2F08
	add r2, r8
_080A2E9E:
	lsls r0, r7, 3
	adds r0, r7
	lsls r4, r0, 2
	mov r1, r8
	adds r0, r4, r1
	ldr r3, _080A2F0C
	adds r0, r3
	ldrh r6, [r0]
	cmp r6, 0
	bne _080A2F10
	adds r4, r2
	adds r0, r5, 0
	movs r1, 0x40
	str r2, [sp, 0x8]
	bl GetMonData
	lsls r1, r0, 3
	adds r1, r0
	lsls r1, 2
	ldr r2, [sp, 0x8]
	adds r1, r2
	ldm r1!, {r0,r2,r3}
	stm r4!, {r0,r2,r3}
	ldm r1!, {r0,r2,r3}
	stm r4!, {r0,r2,r3}
	ldm r1!, {r0,r2,r3}
	stm r4!, {r0,r2,r3}
	adds r0, r5, 0
	movs r1, 0x40
	bl GetMonData
	lsls r1, r0, 3
	adds r1, r0
	lsls r1, 2
	add r1, r8
	ldr r0, _080A2F0C
	adds r1, r0
	strh r6, [r1]
	adds r0, r5, 0
	movs r1, 0x40
	mov r2, r9
	bl SetMonData
	adds r0, r5, 0
	movs r1, 0xC
	mov r2, sp
	bl SetMonData
	adds r0, r7, 0
	b _080A2F1C
	.align 2, 0
_080A2F04: .4byte gSaveBlock1
_080A2F08: .4byte 0x00002b4c
_080A2F0C: .4byte 0x00002b6c
_080A2F10:
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
	cmp r7, 0xF
	bls _080A2E9E
	movs r0, 0xFF
_080A2F1C:
	add sp, 0xC
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A2E78

	thumb_func_start itemid_is_mail
itemid_is_mail: @ 80A2F2C
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x84
	bgt _080A2F3E
	cmp r0, 0x79
	blt _080A2F3E
	movs r0, 0x1
	b _080A2F40
_080A2F3E:
	movs r0, 0
_080A2F40:
	pop {r1}
	bx r1
	thumb_func_end itemid_is_mail

	thumb_func_start unref_sub_80A2F44
unref_sub_80A2F44: @ 80A2F44
	push {lr}
	bl sub_8071C20
	bl AddMapNamePopUpWindowTask
	movs r0, 0x1
	pop {r1}
	bx r1
	thumb_func_end unref_sub_80A2F44

	thumb_func_start AddMapNamePopUpWindowTask
AddMapNamePopUpWindowTask: @ 80A2F54
	push {r4,r5,lr}
	movs r0, 0x80
	lsls r0, 7
	bl FlagGet
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A2FE4
	ldr r4, _080A2FAC
	adds r0, r4, 0
	bl FuncIsActiveTask
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _080A2FBC
	adds r0, r4, 0
	movs r1, 0x5A
	bl CreateTask
	ldr r4, _080A2FB0
	strb r0, [r4]
	ldr r1, _080A2FB4
	movs r0, 0x20
	strh r0, [r1]
	bl sub_80A30E0
	ldr r2, _080A2FB8
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	strh r5, [r0, 0x8]
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	movs r1, 0x20
	strh r1, [r0, 0xC]
	b _080A2FE4
	.align 2, 0
_080A2FAC: .4byte sub_80A2FF4
_080A2FB0: .4byte gUnknown_02038538
_080A2FB4: .4byte REG_BG0VOFS
_080A2FB8: .4byte gTasks
_080A2FBC:
	ldr r3, _080A2FEC
	ldr r2, _080A2FF0
	ldrb r0, [r2]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r3
	movs r4, 0x8
	ldrsh r0, [r1, r4]
	cmp r0, 0x2
	beq _080A2FD6
	movs r0, 0x2
	strh r0, [r1, 0x8]
_080A2FD6:
	ldrb r0, [r2]
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r3
	movs r0, 0x1
	strh r0, [r1, 0xE]
_080A2FE4:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2FEC: .4byte gTasks
_080A2FF0: .4byte gUnknown_02038538
	thumb_func_end AddMapNamePopUpWindowTask

	thumb_func_start sub_80A2FF4
sub_80A2FF4: @ 80A2FF4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r3, _080A3018
	adds r4, r1, r3
	movs r0, 0x8
	ldrsh r2, [r4, r0]
	cmp r2, 0x1
	beq _080A304C
	cmp r2, 0x1
	bgt _080A301C
	cmp r2, 0
	beq _080A3026
	b _080A3092
	.align 2, 0
_080A3018: .4byte gTasks
_080A301C:
	cmp r2, 0x2
	beq _080A3064
	cmp r2, 0x4
	beq _080A308C
	b _080A3092
_080A3026:
	ldrh r0, [r4, 0xC]
	subs r0, 0x2
	strh r0, [r4, 0xC]
	lsls r0, 16
	cmp r0, 0
	bgt _080A3092
	movs r0, 0x1
	strh r0, [r4, 0x8]
	ldr r0, _080A3048
	ldrb r1, [r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r3
	strh r2, [r0, 0xA]
	b _080A3092
	.align 2, 0
_080A3048: .4byte gUnknown_02038538
_080A304C:
	ldrh r0, [r4, 0xA]
	adds r0, 0x1
	strh r0, [r4, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x78
	ble _080A3092
	movs r0, 0
	strh r0, [r4, 0xA]
	movs r0, 0x2
	strh r0, [r4, 0x8]
	b _080A3092
_080A3064:
	ldrh r0, [r4, 0xC]
	adds r0, 0x2
	movs r5, 0
	strh r0, [r4, 0xC]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x1F
	ble _080A3092
	movs r1, 0xE
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A3086
	bl sub_80A30E0
	strh r5, [r4, 0x8]
	strh r5, [r4, 0xE]
	b _080A3092
_080A3086:
	movs r0, 0x4
	strh r0, [r4, 0x8]
	b _080A3098
_080A308C:
	bl HideMapNamePopUpWindow
	b _080A3098
_080A3092:
	ldr r1, _080A30A0
	ldrh r0, [r4, 0xC]
	strh r0, [r1]
_080A3098:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A30A0: .4byte REG_BG0VOFS
	thumb_func_end sub_80A2FF4

	thumb_func_start HideMapNamePopUpWindow
HideMapNamePopUpWindow: @ 80A30A4
	push {lr}
	ldr r0, _080A30D4
	bl FuncIsActiveTask
	lsls r0, 24
	cmp r0, 0
	beq _080A30D0
	bl MenuLoadTextWindowGraphics
	movs r0, 0
	movs r1, 0
	movs r2, 0xD
	movs r3, 0x3
	bl MenuZeroFillWindowRect
	ldr r1, _080A30D8
	movs r0, 0
	strh r0, [r1]
	ldr r0, _080A30DC
	ldrb r0, [r0]
	bl DestroyTask
_080A30D0:
	pop {r0}
	bx r0
	.align 2, 0
_080A30D4: .4byte sub_80A2FF4
_080A30D8: .4byte REG_BG0VOFS
_080A30DC: .4byte gUnknown_02038538
	thumb_func_end HideMapNamePopUpWindow

	thumb_func_start sub_80A30E0
sub_80A30E0: @ 80A30E0
	push {lr}
	sub sp, 0x14
	movs r0, 0
	bl MenuLoadTextWindowGraphics_OverrideFrameType
	ldr r0, _080A3114
	ldrb r1, [r0, 0x14]
	mov r0, sp
	movs r2, 0
	bl sub_80FBFB4
	movs r0, 0
	movs r1, 0
	movs r2, 0xD
	movs r3, 0x3
	bl MenuDrawTextWindow
	mov r0, sp
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0x60
	bl sub_8072BD8
	add sp, 0x14
	pop {r0}
	bx r0
	.align 2, 0
_080A3114: .4byte gMapHeader
	thumb_func_end sub_80A30E0

	thumb_func_start sub_80A3118
sub_80A3118: @ 80A3118
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	bl RunTasks
	bl sub_80A740C
	bl UpdatePaletteFade
	pop {r0}
	bx r0
	thumb_func_end sub_80A3118

	thumb_func_start sub_80A3134
sub_80A3134: @ 80A3134
	push {lr}
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	ldr r1, _080A3168
	ldr r2, _080A316C
	ldr r0, _080A3170
	str r1, [r0]
	str r2, [r0, 0x4]
	ldr r3, _080A3174
	str r3, [r0, 0x8]
	ldr r2, [r0, 0x8]
	movs r2, 0x80
	lsls r2, 4
	adds r1, r2
	ldr r2, _080A3178
	str r1, [r0]
	str r2, [r0, 0x4]
	str r3, [r0, 0x8]
	ldr r0, [r0, 0x8]
	pop {r0}
	bx r0
	.align 2, 0
_080A3168: .4byte gBG1TilemapBuffer
_080A316C: .4byte 0x06002000
_080A3170: .4byte 0x040000d4
_080A3174: .4byte 0x80000400
_080A3178: .4byte 0x06006000
	thumb_func_end sub_80A3134

	thumb_func_start sub_80A317C
sub_80A317C: @ 80A317C
	push {r4,r5,lr}
	sub sp, 0x4
	ldr r0, _080A3198
	ldr r1, _080A319C
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x10
	bls _080A318E
	b _080A34A8
_080A318E:
	lsls r0, 2
	ldr r1, _080A31A0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A3198: .4byte gMain
_080A319C: .4byte 0x0000043c
_080A31A0: .4byte _080A31A4
	.align 2, 0
_080A31A4:
	.4byte _080A31E8
	.4byte _080A31F2
	.4byte _080A3208
	.4byte _080A320E
	.4byte _080A3228
	.4byte _080A324C
	.4byte _080A3252
	.4byte _080A3270
	.4byte _080A327C
	.4byte _080A3298
	.4byte _080A32A4
	.4byte _080A3328
	.4byte _080A338C
	.4byte _080A33F4
	.4byte _080A3404
	.4byte _080A345C
	.4byte _080A347C
_080A31E8:
	bl sub_80F9438
	bl sub_80A34E8
	b _080A3464
_080A31F2:
	bl remove_some_task
	ldr r1, _080A3200
	ldr r0, _080A3204
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A3200: .4byte gMain
_080A3204: .4byte 0x0000043c
_080A3208:
	bl gpu_pal_allocator_reset__manage_upper_four
	b _080A3464
_080A320E:
	bl sub_80F9020
	ldr r0, _080A3220
	ldr r1, _080A3224
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	b _080A3464
	.align 2, 0
_080A3220: .4byte 0x02000000
_080A3224: .4byte 0x0001ffff
_080A3228:
	bl ResetPaletteFade
	ldr r2, _080A3240
	ldrb r0, [r2, 0x8]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r2, 0x8]
	ldr r1, _080A3244
	ldr r0, _080A3248
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A3240: .4byte gPaletteFade
_080A3244: .4byte gMain
_080A3248: .4byte 0x0000043c
_080A324C:
	bl ResetSpriteData
	b _080A3464
_080A3252:
	bl sub_80A3520
	lsls r0, 24
	cmp r0, 0
	bne _080A325E
	b _080A34A8
_080A325E:
	ldr r1, _080A3268
	ldr r0, _080A326C
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A3268: .4byte gMain
_080A326C: .4byte 0x0000043c
_080A3270:
	ldr r0, _080A3278
	bl SetUpWindowConfig
	b _080A3464
	.align 2, 0
_080A3278: .4byte gWindowConfig_81E6DFC
_080A327C:
	ldr r0, _080A328C
	bl MultistepInitMenuWindowBegin
	ldr r1, _080A3290
	ldr r0, _080A3294
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A328C: .4byte gWindowConfig_81E6DFC
_080A3290: .4byte gMain
_080A3294: .4byte 0x0000043c
_080A3298:
	bl MultistepInitMenuWindowContinue
	cmp r0, 0
	bne _080A32A2
	b _080A34A8
_080A32A2:
	b _080A3464
_080A32A4:
	bl sub_80F944C
	bl InitMenuInUpperLeftCornerPlaySoundWhenAPressed
	movs r0, 0
	movs r1, 0xAC
	movs r2, 0xC
	bl sub_80F953C
	movs r0, 0x1
	movs r1, 0xAC
	movs r2, 0x94
	bl sub_80F953C
	movs r0, 0x2
	movs r1, 0x1C
	movs r2, 0x58
	bl sub_80F953C
	movs r0, 0x3
	movs r1, 0x64
	movs r2, 0x58
	bl sub_80F953C
	movs r0, 0
	movs r1, 0x2
	bl sub_80F9988
	movs r0, 0x1
	movs r1, 0x2
	bl sub_80F9988
	movs r0, 0x2
	movs r1, 0x2
	bl sub_80F9988
	movs r0, 0x3
	movs r1, 0x2
	bl sub_80F9988
	ldr r0, _080A331C
	ldrb r0, [r0]
	subs r0, 0x4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080A3312
	movs r0, 0x2
	movs r1, 0x1
	bl sub_80F979C
	movs r0, 0x3
	movs r1, 0x1
	bl sub_80F979C
_080A3312:
	ldr r1, _080A3320
	ldr r0, _080A3324
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A331C: .4byte gUnknown_03000701
_080A3320: .4byte gMain
_080A3324: .4byte 0x0000043c
_080A3328:
	ldr r1, _080A3378
	movs r0, 0x10
	strb r0, [r1]
	ldr r4, _080A337C
	ldr r5, _080A3380
	ldrb r1, [r5]
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	adds r0, r4, 0
	bl sub_80A39B8
	ldrb r1, [r5]
	adds r0, r4, 0
	bl sub_80A3AC0
	bl sub_80A3D08
	ldr r4, _080A3384
	ldr r0, [r4, 0x10]
	ldr r1, [r4, 0x14]
	bl sub_80A3C34
	ldr r0, [r4, 0x18]
	ldr r1, [r4, 0x1C]
	bl sub_80A3C34
	bl sub_80A3D40
	ldr r1, _080A3388
	movs r0, 0
	ldrsb r0, [r5, r0]
	lsls r0, 3
	adds r0, r4
	ldr r0, [r0]
	str r0, [r1]
	bl sub_80A362C
	b _080A3464
	.align 2, 0
_080A3378: .4byte gUnknown_0203855A
_080A337C: .4byte gBG2TilemapBuffer
_080A3380: .4byte gUnknown_02038559
_080A3384: .4byte gUnknown_083C1618
_080A3388: .4byte gUnknown_03005D24
_080A338C:
	ldr r0, _080A33D4
	movs r1, 0
	movs r2, 0x7
	bl sub_80A48E8
	ldr r1, _080A33D8
	ldr r4, _080A33DC
	movs r0, 0
	ldrsb r0, [r4, r0]
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	ldr r0, _080A33E0
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	bl sub_80A490C
	bl sub_80A736C
	ldr r1, _080A33E4
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r1]
	ldr r1, _080A33E8
	movs r0, 0
	strb r0, [r1]
	ldr r1, _080A33EC
	ldr r0, _080A33F0
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A33D4: .4byte 0x0000ffff
_080A33D8: .4byte gUnknown_03005D10
_080A33DC: .4byte gUnknown_02038559
_080A33E0: .4byte gUnknown_03005D24
_080A33E4: .4byte gUnknown_0203855B
_080A33E8: .4byte gUnknown_0203855C
_080A33EC: .4byte gMain
_080A33F0: .4byte 0x0000043c
_080A33F4:
	bl sub_80A7B10
	movs r0, 0
	bl sub_80A7C20
	bl sub_80A3740
	b _080A3464
_080A3404:
	ldr r3, _080A3444
	ldrh r2, [r3]
	movs r0, 0
	strh r0, [r3]
	ldr r4, _080A3448
	ldrh r0, [r4]
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	ldr r2, _080A344C
	ldrh r0, [r2]
	movs r1, 0x8
	orrs r0, r1
	strh r0, [r2]
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0x10
	movs r3, 0
	bl BeginNormalPaletteFade
	ldr r2, _080A3450
	ldrb r1, [r2, 0x8]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r2, 0x8]
	ldr r1, _080A3454
	ldr r0, _080A3458
	adds r1, r0
	b _080A346A
	.align 2, 0
_080A3444: .4byte 0x04000208
_080A3448: .4byte 0x04000200
_080A344C: .4byte REG_DISPSTAT
_080A3450: .4byte gPaletteFade
_080A3454: .4byte gMain
_080A3458: .4byte 0x0000043c
_080A345C:
	bl sub_8055870
	cmp r0, 0x1
	beq _080A34A8
_080A3464:
	ldr r1, _080A3474
	ldr r2, _080A3478
	adds r1, r2
_080A346A:
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080A34A8
	.align 2, 0
_080A3474: .4byte gMain
_080A3478: .4byte 0x0000043c
_080A347C:
	ldr r0, _080A34A0
	bl SetVBlankCallback
	ldr r0, _080A34A4
	bl SetMainCallback2
	bl sub_80A751C
	bl sub_80A7630
	bl sub_80A770C
	bl sub_80A7828
	bl sub_80A78B8
	movs r0, 0x1
	b _080A34AA
	.align 2, 0
_080A34A0: .4byte sub_80A3134
_080A34A4: .4byte sub_80A3118
_080A34A8:
	movs r0, 0
_080A34AA:
	add sp, 0x4
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A317C

	thumb_func_start sub_80A34B4
sub_80A34B4: @ 80A34B4
	push {lr}
_080A34B6:
	bl sub_80A317C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A34D2
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A34B6
	movs r0, 0
	b _080A34DE
_080A34D2:
	ldr r1, _080A34E4
	movs r0, 0
	strb r0, [r1]
	bl ResetTasks
	movs r0, 0x1
_080A34DE:
	pop {r1}
	bx r1
	.align 2, 0
_080A34E4: .4byte gUnknown_03000700
	thumb_func_end sub_80A34B4

	thumb_func_start sub_80A34E8
sub_80A34E8: @ 80A34E8
	push {lr}
	bl sub_80F9368
	ldr r1, _080A3514
	ldr r2, _080A3518
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0x2
	ldr r2, _080A351C
	adds r0, r2, 0
	strh r0, [r1]
	subs r1, 0xA
	movs r2, 0xBA
	lsls r2, 5
	adds r0, r2, 0
	strh r0, [r1]
	adds r1, 0x50
	movs r0, 0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080A3514: .4byte REG_BG2CNT
_080A3518: .4byte 0x00000c06
_080A351C: .4byte 0x00000405
	thumb_func_end sub_80A34E8

	thumb_func_start sub_80A3520
sub_80A3520: @ 80A3520
	push {lr}
	ldr r0, _080A353C
	ldr r1, _080A3540
	adds r0, r1
	ldrb r0, [r0]
	cmp r0, 0x4
	bls _080A3530
	b _080A3624
_080A3530:
	lsls r0, 2
	ldr r1, _080A3544
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A353C: .4byte 0x02000000
_080A3540: .4byte 0x0001ffff
_080A3544: .4byte _080A3548
	.align 2, 0
_080A3548:
	.4byte _080A355C
	.4byte _080A3570
	.4byte _080A3588
	.4byte _080A35C0
	.4byte _080A3604
_080A355C:
	ldr r0, _080A3568
	ldr r1, _080A356C
	bl LZDecompressVram
	b _080A35EA
	.align 2, 0
_080A3568: .4byte gBagScreen_Gfx
_080A356C: .4byte 0x06004000
_080A3570:
	ldr r0, _080A3580
	ldr r1, _080A3584
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	b _080A35EA
	.align 2, 0
_080A3580: .4byte gUnknown_08E77004
_080A3584: .4byte gBG2TilemapBuffer
_080A3588:
	ldr r0, _080A35A4
	ldrb r0, [r0, 0x8]
	cmp r0, 0
	beq _080A3598
	ldr r0, _080A35A8
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _080A35B0
_080A3598:
	ldr r0, _080A35AC
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	b _080A35EA
	.align 2, 0
_080A35A4: .4byte gSaveBlock2
_080A35A8: .4byte gUnknown_03000701
_080A35AC: .4byte gBagScreenMale_Pal
_080A35B0:
	ldr r0, _080A35BC
	movs r1, 0
	movs r2, 0x40
	bl LoadCompressedPalette
	b _080A35EA
	.align 2, 0
_080A35BC: .4byte gBagScreenFemale_Pal
_080A35C0:
	ldr r0, _080A35D8
	ldrb r0, [r0, 0x8]
	cmp r0, 0
	beq _080A35D0
	ldr r0, _080A35DC
	ldrb r0, [r0]
	cmp r0, 0x7
	bne _080A35E4
_080A35D0:
	ldr r0, _080A35E0
	bl LoadCompressedObjectPic
	b _080A35EA
	.align 2, 0
_080A35D8: .4byte gSaveBlock2
_080A35DC: .4byte gUnknown_03000701
_080A35E0: .4byte gUnknown_083C1CC8
_080A35E4:
	ldr r0, _080A35F8
	bl LoadCompressedObjectPic
_080A35EA:
	ldr r1, _080A35FC
	ldr r0, _080A3600
	adds r1, r0
	ldrb r0, [r1]
	adds r0, 0x1
	strb r0, [r1]
	b _080A3624
	.align 2, 0
_080A35F8: .4byte gUnknown_083C1CD0
_080A35FC: .4byte 0x02000000
_080A3600: .4byte 0x0001ffff
_080A3604:
	ldr r0, _080A3618
	bl LoadCompressedObjectPalette
	ldr r0, _080A361C
	ldr r1, _080A3620
	adds r0, r1
	movs r1, 0
	strb r1, [r0]
	movs r0, 0x1
	b _080A3626
	.align 2, 0
_080A3618: .4byte gUnknown_083C1CD8
_080A361C: .4byte 0x02000000
_080A3620: .4byte 0x0001ffff
_080A3624:
	movs r0, 0
_080A3626:
	pop {r1}
	bx r1
	thumb_func_end sub_80A3520

	thumb_func_start sub_80A362C
sub_80A362C: @ 80A362C
	push {r4-r6,lr}
	movs r4, 0
	ldr r6, _080A3648
	ldr r5, _080A364C
_080A3634:
	ldrb r0, [r6]
	cmp r0, 0x5
	bne _080A3650
	lsls r1, r4, 2
	adds r0, r1, r5
	ldrb r0, [r0, 0x2]
	subs r0, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	b _080A3656
	.align 2, 0
_080A3648: .4byte gUnknown_03000701
_080A364C: .4byte gUnknown_03005D10
_080A3650:
	lsls r1, r4, 2
	adds r0, r1, r5
	ldrb r3, [r0, 0x2]
_080A3656:
	adds r1, r5
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _080A366C
	ldrb r2, [r1, 0x3]
	adds r0, r2
	cmp r0, r3
	ble _080A3674
	subs r0, r3, r2
	strb r0, [r1, 0x1]
	b _080A3674
_080A366C:
	ldrb r0, [r1]
	cmp r0, r3
	bls _080A3674
	strb r3, [r1]
_080A3674:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _080A3634
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A362C

	thumb_func_start sub_80A3684
sub_80A3684: @ 80A3684
	push {r4,lr}
	movs r2, 0
	ldr r4, _080A36B0
	ldr r3, _080A36B4
	movs r1, 0
_080A368E:
	lsls r0, r2, 2
	adds r0, r3
	strb r1, [r0]
	strb r1, [r0, 0x1]
	strb r1, [r0, 0x2]
	strb r1, [r0, 0x3]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, 0x4
	bls _080A368E
	movs r0, 0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A36B0: .4byte gUnknown_02038559
_080A36B4: .4byte gUnknown_03005D10
	thumb_func_end sub_80A3684

	thumb_func_start sub_80A36B8
sub_80A36B8: @ 80A36B8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r6, r0, 0
	ldr r0, [sp, 0x18]
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	lsls r2, 24
	lsls r3, 24
	lsrs r3, 24
	mov r12, r3
	lsls r0, 24
	lsrs r0, 24
	lsrs r2, 24
	adds r0, r2, r0
	cmp r2, r0
	bgt _080A370A
	adds r7, r0, 0
_080A36DE:
	mov r1, r8
	mov r3, r12
	adds r0, r1, r3
	adds r4, r2, 0x1
	cmp r1, r0
	bgt _080A3702
	lsls r3, r2, 5
	movs r5, 0
	adds r2, r0, 0
_080A36F0:
	adds r0, r1, r3
	lsls r0, 1
	adds r0, r6
	strh r5, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, r2
	ble _080A36F0
_080A3702:
	lsls r0, r4, 16
	lsrs r2, r0, 16
	cmp r2, r7
	ble _080A36DE
_080A370A:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A36B8

	thumb_func_start sub_80A3714
sub_80A3714: @ 80A3714
	push {r4,r5,lr}
	movs r4, 0
	ldr r5, _080A373C
_080A371A:
	lsls r1, r4, 3
	adds r1, r5
	ldr r0, [r1]
	ldrb r1, [r1, 0x4]
	bl sub_80A9684
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0x4
	bls _080A371A
	bl sub_80A3684
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A373C: .4byte gUnknown_083C1618
	thumb_func_end sub_80A3714

	thumb_func_start sub_80A3740
sub_80A3740: @ 80A3740
	push {lr}
	sub sp, 0x4
	ldr r1, _080A376C
	mov r0, sp
	movs r2, 0x4
	bl memcpy
	mov r0, sp
	adds r0, 0x2
	movs r1, 0xD1
	movs r2, 0x2
	bl LoadPalette
	mov r0, sp
	movs r1, 0xD8
	movs r2, 0x2
	bl LoadPalette
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080A376C: .4byte gUnknown_083C1704
	thumb_func_end sub_80A3740

	thumb_func_start sub_80A3770
sub_80A3770: @ 80A3770
	push {lr}
	ldr r0, _080A379C
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A37B6
	ldr r3, _080A37A0
	ldr r2, _080A37A4
	movs r1, 0
	ldrsb r1, [r2, r1]
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 1
	ldr r1, _080A37A8
	adds r0, r1
	str r0, [r3]
	movs r0, 0
	ldrsb r0, [r2, r0]
	cmp r0, 0x3
	beq _080A37B0
	ldr r1, _080A37AC
	movs r0, 0x4
	b _080A37B4
	.align 2, 0
_080A379C: .4byte gUnknown_03000701
_080A37A0: .4byte gUnknown_03000704
_080A37A4: .4byte gUnknown_02038559
_080A37A8: .4byte gUnknown_083C1690
_080A37AC: .4byte gUnknown_02038564
_080A37B0:
	ldr r1, _080A37BC
	movs r0, 0x6
_080A37B4:
	strb r0, [r1]
_080A37B6:
	pop {r0}
	bx r0
	.align 2, 0
_080A37BC: .4byte gUnknown_02038564
	thumb_func_end sub_80A3770

	thumb_func_start sub_80A37C0
sub_80A37C0: @ 80A37C0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A37F0
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r0, _080A37F4
	str r0, [r1]
	movs r0, 0
	bl sub_80F98DC
	movs r0, 0x1
	bl sub_80F98DC
	movs r0, 0x2
	bl sub_80F98DC
	movs r0, 0x3
	bl sub_80F98DC
	pop {r0}
	bx r0
	.align 2, 0
_080A37F0: .4byte gTasks
_080A37F4: .4byte sub_80A50C8
	thumb_func_end sub_80A37C0

	thumb_func_start sub_80A37F8
sub_80A37F8: @ 80A37F8
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r6, _080A3854
	ldrb r5, [r6]
	cmp r5, 0xF
	bhi _080A3868
	adds r0, r5, 0x1
	strb r0, [r6]
	ldr r4, _080A3858
	ldrb r2, [r6]
	adds r0, r4, 0
	adds r1, r5, 0
	movs r3, 0x4F
	bl sub_80A396C
	ldr r0, _080A385C
	ldrb r1, [r0]
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	ldrb r2, [r6]
	lsrs r2, 1
	ldr r3, _080A3860
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r3
	movs r3, 0x12
	ldrsb r3, [r0, r3]
	adds r0, r4, 0
	bl sub_80A39E4
	ldr r4, _080A3864
	movs r0, 0x1
	strb r0, [r4]
	lsrs r1, r5, 1
	ldrb r2, [r6]
	lsrs r2, 1
	subs r2, 0x1
	adds r0, r7, 0
	bl sub_80A48E8
	movs r0, 0
	strb r0, [r4]
	b _080A3932
	.align 2, 0
_080A3854: .4byte gUnknown_0203855A
_080A3858: .4byte gBG2TilemapBuffer
_080A385C: .4byte gUnknown_02038559
_080A3860: .4byte gTasks
_080A3864: .4byte gUnknown_02038558
_080A3868:
	ldr r0, _080A38A0
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080A38B4
	ldr r1, _080A38A4
	ldr r0, _080A38A8
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	ldr r0, _080A38AC
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	ldr r4, _080A38B0
	ldrb r1, [r4]
	bl sub_80A49AC
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	b _080A38F2
	.align 2, 0
_080A38A0: .4byte gLinkOpen
_080A38A4: .4byte gUnknown_03005D10
_080A38A8: .4byte gUnknown_02038559
_080A38AC: .4byte gUnknown_03005D24
_080A38B0: .4byte gUnknown_02038562
_080A38B4:
	ldr r1, _080A3938
	ldrb r0, [r1]
	cmp r0, 0x2
	bhi _080A38F2
	ldr r5, _080A393C
	adds r4, r1, 0
_080A38C0:
	ldr r0, _080A3940
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r5
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	ldr r0, _080A3944
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	ldrb r1, [r4]
	bl sub_80A49AC
	ldrb r0, [r4]
	adds r0, 0x1
	strb r0, [r4]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bls _080A38C0
_080A38F2:
	ldr r0, _080A3938
	ldrb r0, [r0]
	cmp r0, 0x3
	bne _080A3932
	ldr r1, _080A3948
	movs r0, 0x10
	strb r0, [r1]
	ldr r1, _080A394C
	ldr r0, _080A3940
	ldrb r0, [r0]
	adds r0, 0x1
	strb r0, [r1]
	ldr r0, _080A3950
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A37C0
	adds r0, r7, 0
	bl DestroyTask
	bl sub_80A736C
	movs r0, 0x2
	movs r1, 0
	bl sub_80F979C
	movs r0, 0x3
	movs r1, 0
	bl sub_80F979C
_080A3932:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3938: .4byte gUnknown_02038562
_080A393C: .4byte gUnknown_03005D10
_080A3940: .4byte gUnknown_02038559
_080A3944: .4byte gUnknown_03005D24
_080A3948: .4byte gUnknown_0203855A
_080A394C: .4byte gUnknown_0203855B
_080A3950: .4byte sub_80A4F68
	thumb_func_end sub_80A37F8

	thumb_func_start sub_80A3954
sub_80A3954: @ 80A3954
	push {lr}
	adds r1, r0, 0
	ldr r0, _080A3968
	movs r2, 0x80
	lsls r2, 3
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080A3968: .4byte gUnknown_08E77004
	thumb_func_end sub_80A3954

	thumb_func_start sub_80A396C
sub_80A396C: @ 80A396C
	push {r4-r7,lr}
	lsls r1, 24
	lsrs r5, r1, 24
	adds r4, r5, 0
	lsls r2, 24
	lsrs r7, r2, 24
	lsls r3, 24
	lsrs r6, r3, 24
	adds r1, r4, 0x2
	lsls r1, 6
	adds r1, 0x1C
	adds r2, r0, r1
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r7, r4
	bls _080A39B2
_080A398E:
	movs r1, 0
	adds r3, r5, 0x1
	adds r4, r2, 0
	adds r4, 0x40
_080A3996:
	lsls r0, r1, 1
	adds r0, r2
	strh r6, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0xE
	bls _080A3996
	adds r2, r4, 0
	adds r1, r5, 0
	lsls r0, r3, 24
	lsrs r5, r0, 24
	cmp r7, r1
	bhi _080A398E
_080A39B2:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A396C

	thumb_func_start sub_80A39B8
sub_80A39B8: @ 80A39B8
	push {lr}
	sub sp, 0x10
	lsls r1, 25
	lsrs r1, 24
	ldr r3, _080A39E0
	movs r2, 0
	str r2, [sp]
	str r1, [sp, 0x4]
	movs r1, 0x8
	str r1, [sp, 0x8]
	movs r1, 0x2
	str r1, [sp, 0xC]
	movs r1, 0x4
	movs r2, 0xA
	bl sub_809D104
	add sp, 0x10
	pop {r0}
	bx r0
	.align 2, 0
_080A39E0: .4byte gUnknown_08E96EC8
	thumb_func_end sub_80A39B8

	thumb_func_start sub_80A39E4
sub_80A39E4: @ 80A39E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	mov r8, r0
	lsls r1, 24
	lsrs r1, 24
	adds r4, r1, 0
	lsls r2, 24
	lsrs r6, r2, 24
	adds r5, r6, 0
	lsls r2, r1, 1
	mov r9, r2
	lsls r3, 24
	asrs r3, 24
	movs r0, 0x1
	negs r0, r0
	cmp r3, r0
	bne _080A3A5C
	adds r0, r1, 0x1
	lsls r7, r0, 1
	cmp r1, 0x5
	bne _080A3A18
	movs r7, 0x2
_080A3A18:
	ldr r0, _080A3A58
	mov r10, r0
	movs r4, 0x8
	subs r4, r6
	lsls r4, 16
	lsrs r4, 16
	str r4, [sp]
	str r2, [sp, 0x4]
	str r6, [sp, 0x8]
	movs r0, 0x2
	mov r9, r0
	str r0, [sp, 0xC]
	mov r0, r8
	movs r1, 0x4
	movs r2, 0xA
	mov r3, r10
	bl sub_809D104
	adds r1, r6, 0x4
	movs r0, 0
	str r0, [sp]
	str r7, [sp, 0x4]
	str r4, [sp, 0x8]
	mov r0, r9
	str r0, [sp, 0xC]
	mov r0, r8
	movs r2, 0xA
	mov r3, r10
	bl sub_809D104
	b _080A3AAA
	.align 2, 0
_080A3A58: .4byte gUnknown_08E96EC8
_080A3A5C:
	cmp r3, 0x1
	bne _080A3AAA
	subs r0, r4, 0x1
	lsls r0, 17
	lsrs r7, r0, 16
	cmp r4, 0x1
	bne _080A3A6C
	movs r7, 0xA
_080A3A6C:
	ldr r6, _080A3ABC
	str r5, [sp]
	str r7, [sp, 0x4]
	movs r0, 0x8
	subs r0, r5
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x8]
	movs r4, 0x2
	str r4, [sp, 0xC]
	mov r0, r8
	movs r1, 0x4
	movs r2, 0xA
	adds r3, r6, 0
	bl sub_809D104
	movs r1, 0xC
	subs r1, r5
	lsls r1, 16
	lsrs r1, 16
	movs r0, 0
	str r0, [sp]
	mov r0, r9
	str r0, [sp, 0x4]
	str r5, [sp, 0x8]
	str r4, [sp, 0xC]
	mov r0, r8
	movs r2, 0xA
	adds r3, r6, 0
	bl sub_809D104
_080A3AAA:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3ABC: .4byte gUnknown_08E96EC8
	thumb_func_end sub_80A39E4

	thumb_func_start sub_80A3AC0
sub_80A3AC0: @ 80A3AC0
	push {r4-r6,lr}
	adds r3, r0, 0
	lsls r1, 24
	lsrs r4, r1, 24
	movs r2, 0
	ldr r1, _080A3AE4
	ldr r0, _080A3AE8
	adds r6, r0, 0
	subs r0, 0x1
	adds r5, r0, 0
_080A3AD4:
	cmp r2, r4
	bne _080A3AEC
	lsls r0, r2, 1
	adds r0, r3
	adds r0, r1
	strh r6, [r0]
	b _080A3AF4
	.align 2, 0
_080A3AE4: .4byte 0x0000024a
_080A3AE8: .4byte 0x0000107d
_080A3AEC:
	lsls r0, r2, 1
	adds r0, r3
	adds r0, r1
	strh r5, [r0]
_080A3AF4:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0x4
	bls _080A3AD4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3AC0

	thumb_func_start sub_80A3B04
sub_80A3B04: @ 80A3B04
	push {r4-r6,lr}
	adds r5, r0, 0
	ldr r4, _080A3BA4
	ldrb r0, [r4]
	lsls r1, 24
	asrs r6, r1, 24
	adds r0, r6, r0
	strb r0, [r4]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x4
	ble _080A3B20
	movs r0, 0
	strb r0, [r4]
_080A3B20:
	movs r0, 0
	ldrsb r0, [r4, r0]
	cmp r0, 0
	bge _080A3B2C
	movs r0, 0x4
	strb r0, [r4]
_080A3B2C:
	bl sub_80A76A0
	bl sub_80A7590
	ldr r2, _080A3BA8
	ldr r1, _080A3BAC
	movs r0, 0
	ldrsb r0, [r4, r0]
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldrb r0, [r4]
	bl sub_80A3D24
	ldr r0, _080A3BB0
	movs r4, 0
	strb r4, [r0]
	adds r0, r5, 0
	bl sub_80A3954
	adds r0, r5, 0
	movs r1, 0
	movs r2, 0x10
	movs r3, 0x3
	bl sub_80A396C
	adds r0, r5, 0
	movs r1, 0
	bl sub_80A39B8
	ldr r1, _080A3BB4
	movs r0, 0x6
	strb r0, [r1]
	ldr r0, _080A3BB8
	strb r4, [r0]
	ldr r4, _080A3BBC
	adds r0, r4, 0
	bl FindTaskIdByFunc
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	bne _080A3B90
	adds r0, r4, 0
	movs r1, 0x8
	bl CreateTask
	lsls r0, 24
	lsrs r2, r0, 24
_080A3B90:
	ldr r1, _080A3BC0
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r0, r1
	strh r6, [r0, 0x12]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A3BA4: .4byte gUnknown_02038559
_080A3BA8: .4byte gUnknown_03005D24
_080A3BAC: .4byte gUnknown_083C1618
_080A3BB0: .4byte gUnknown_0203855A
_080A3BB4: .4byte gUnknown_0203855B
_080A3BB8: .4byte gUnknown_02038562
_080A3BBC: .4byte sub_80A37F8
_080A3BC0: .4byte gTasks
	thumb_func_end sub_80A3B04

	thumb_func_start swap32
swap32: @ 80A3BC4
	ldr r3, [r0]
	ldr r2, [r1]
	str r2, [r0]
	str r3, [r1]
	bx lr
	thumb_func_end swap32

	thumb_func_start sub_80A3BD0
sub_80A3BD0: @ 80A3BD0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r7, r1, 0
	adds r6, r0, 0
	movs r3, 0
	b _080A3C1A
_080A3BE0:
	adds r0, r3, 0x1
	lsls r1, r0, 16
	lsrs r4, r1, 16
	lsls r1, r2, 24
	lsrs r1, 24
	mov r8, r0
	cmp r4, r1
	bcs _080A3C14
	lsls r0, r3, 2
	adds r5, r0, r6
	adds r2, r1, 0
_080A3BF6:
	ldrh r0, [r5, 0x2]
	cmp r0, 0
	bne _080A3C0A
	lsls r1, r4, 2
	adds r1, r6
	adds r0, r5, 0
	str r2, [sp]
	bl swap32
	ldr r2, [sp]
_080A3C0A:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, r2
	bcc _080A3BF6
_080A3C14:
	mov r1, r8
	lsls r0, r1, 16
	lsrs r3, r0, 16
_080A3C1A:
	adds r2, r7, 0
	lsls r0, r2, 24
	lsrs r0, 24
	subs r0, 0x1
	cmp r3, r0
	blt _080A3BE0
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3BD0

	thumb_func_start sub_80A3C34
sub_80A3C34: @ 80A3C34
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	adds r7, r1, 0
	adds r6, r0, 0
	adds r2, r7, 0
	lsls r0, r2, 24
	movs r3, 0
	cmp r0, 0
	beq _080A3C9C
_080A3C4A:
	adds r0, r3, 0x1
	lsls r1, r0, 16
	lsrs r4, r1, 16
	lsls r1, r2, 24
	lsrs r1, 24
	mov r8, r0
	cmp r4, r1
	bcs _080A3C8C
	lsls r0, r3, 2
	adds r5, r0, r6
	adds r2, r1, 0
_080A3C60:
	ldrh r0, [r5, 0x2]
	cmp r0, 0
	beq _080A3C82
	lsls r0, r4, 2
	adds r1, r0, r6
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	beq _080A3C82
	ldrh r0, [r5]
	ldrh r3, [r1]
	cmp r0, r3
	bls _080A3C82
	adds r0, r5, 0
	str r2, [sp]
	bl swap32
	ldr r2, [sp]
_080A3C82:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, r2
	bcc _080A3C60
_080A3C8C:
	mov r1, r8
	lsls r0, r1, 16
	lsrs r3, r0, 16
	adds r2, r7, 0
	lsls r0, r2, 24
	lsrs r0, 24
	cmp r3, r0
	bcc _080A3C4A
_080A3C9C:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3C34

	thumb_func_start sub_80A3CA8
sub_80A3CA8: @ 80A3CA8
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080A3D00
	lsls r0, r6, 2
	adds r3, r0, r1
	movs r0, 0
	strb r0, [r3, 0x2]
	movs r4, 0
	ldr r0, _080A3D04
	lsls r2, r6, 3
	adds r1, r2, r0
	mov r12, r0
	ldrb r1, [r1, 0x4]
	cmp r4, r1
	bcs _080A3CEC
	mov r7, r12
	adds r5, r3, 0
_080A3CCC:
	adds r3, r2, r7
	ldr r0, [r3]
	lsls r1, r4, 2
	adds r1, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	beq _080A3CE0
	ldrb r0, [r5, 0x2]
	adds r0, 0x1
	strb r0, [r5, 0x2]
_080A3CE0:
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	ldrb r3, [r3, 0x4]
	cmp r4, r3
	bcc _080A3CCC
_080A3CEC:
	lsls r0, r6, 3
	add r0, r12
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	bl sub_80A3BD0
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3D00: .4byte gUnknown_03005D10
_080A3D04: .4byte gUnknown_083C1618
	thumb_func_end sub_80A3CA8

	thumb_func_start sub_80A3D08
sub_80A3D08: @ 80A3D08
	push {r4,lr}
	movs r4, 0
_080A3D0C:
	adds r0, r4, 0
	bl sub_80A3CA8
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _080A3D0C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3D08

	thumb_func_start sub_80A3D24
sub_80A3D24: @ 80A3D24
	push {lr}
	lsls r0, 24
	ldr r1, _080A3D3C
	lsrs r0, 22
	adds r1, r0, r1
	ldrb r0, [r1, 0x2]
	cmp r0, 0x6
	bls _080A3D36
	movs r0, 0x7
_080A3D36:
	strb r0, [r1, 0x3]
	pop {r0}
	bx r0
	.align 2, 0
_080A3D3C: .4byte gUnknown_03005D10
	thumb_func_end sub_80A3D24

	thumb_func_start sub_80A3D40
sub_80A3D40: @ 80A3D40
	push {r4,lr}
	movs r4, 0
_080A3D44:
	adds r0, r4, 0
	bl sub_80A3D24
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x4
	bls _080A3D44
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3D40

	thumb_func_start sub_80A3D5C
sub_80A3D5C: @ 80A3D5C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A3DF4
	mov r9, r1
	ldr r2, _080A3DF8
	mov r8, r2
	movs r1, 0
	ldrsb r1, [r2, r1]
	lsls r1, 2
	add r1, r9
	ldrb r2, [r1, 0x1]
	ldrb r1, [r1]
	adds r2, r1
	ldr r7, _080A3DFC
	ldr r1, [r7]
	lsls r6, r2, 2
	adds r3, r6, r1
	ldr r2, _080A3E00
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldrh r0, [r3, 0x2]
	ldrh r1, [r1, 0xA]
	subs r0, r1
	strh r0, [r3, 0x2]
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	bne _080A3DE0
	ldr r0, _080A3E04
	ldr r1, _080A3E08
	adds r5, r0, r1
	ldrh r0, [r5]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080A3DB4
	bl sub_80A40D0
	strh r4, [r5]
_080A3DB4:
	ldr r0, [r7]
	adds r0, r6, r0
	strh r4, [r0]
	mov r2, r8
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	mov r3, r9
	adds r2, r0, r3
	ldrb r1, [r2, 0x1]
	adds r0, r1, 0x7
	ldrb r3, [r2, 0x2]
	cmp r0, r3
	bne _080A3DD8
	cmp r1, 0
	beq _080A3DD8
	subs r0, r1, 0x1
	strb r0, [r2, 0x1]
_080A3DD8:
	ldr r0, _080A3DF8
	ldrb r0, [r0]
	bl sub_80A3CA8
_080A3DE0:
	ldr r0, _080A3DF8
	ldrb r0, [r0]
	bl sub_80A3D24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3DF4: .4byte gUnknown_03005D10
_080A3DF8: .4byte gUnknown_02038559
_080A3DFC: .4byte gUnknown_03005D24
_080A3E00: .4byte gTasks
_080A3E04: .4byte gSaveBlock1
_080A3E08: .4byte 0x00000496
	thumb_func_end sub_80A3D5C

	thumb_func_start sub_80A3E0C
sub_80A3E0C: @ 80A3E0C
	push {lr}
	ldr r3, _080A3E60
	ldr r2, _080A3E64
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	ldr r0, _080A3E68
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A3E52
	strh r0, [r1]
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r2, r0, r3
	ldrb r1, [r2, 0x1]
	adds r0, r1, 0x7
	ldrb r3, [r2, 0x2]
	cmp r0, r3
	bne _080A3E4A
	cmp r1, 0
	beq _080A3E4A
	subs r0, r1, 0x1
	strb r0, [r2, 0x1]
_080A3E4A:
	ldr r0, _080A3E64
	ldrb r0, [r0]
	bl sub_80A3CA8
_080A3E52:
	ldr r0, _080A3E64
	ldrb r0, [r0]
	bl sub_80A3D24
	pop {r0}
	bx r0
	.align 2, 0
_080A3E60: .4byte gUnknown_03005D10
_080A3E64: .4byte gUnknown_02038559
_080A3E68: .4byte gUnknown_03005D24
	thumb_func_end sub_80A3E0C

	thumb_func_start nullsub_16
nullsub_16: @ 80A3E6C
	bx lr
	thumb_func_end nullsub_16

	thumb_func_start sub_80A3E70
sub_80A3E70: @ 80A3E70
	lsls r0, 24
	lsls r1, 24
	ldr r2, _080A3E8C
	ldr r2, [r2]
	lsrs r0, 22
	adds r0, r2
	ldr r3, [r0]
	lsrs r1, 22
	adds r1, r2
	ldr r2, [r1]
	str r2, [r0]
	str r3, [r1]
	bx lr
	.align 2, 0
_080A3E8C: .4byte gUnknown_03005D24
	thumb_func_end sub_80A3E70

	thumb_func_start sub_80A3E90
sub_80A3E90: @ 80A3E90
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	bl nullsub_16
	ldr r0, _080A3EE8
	lsls r5, r4, 2
	adds r5, r4
	lsls r5, 3
	adds r5, r0
	ldrb r0, [r5, 0x1C]
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _080A3EEC
	ldr r1, _080A3EF0
	movs r2, 0
	ldrsb r2, [r1, r2]
	lsls r2, 2
	adds r2, r3
	ldrb r1, [r2, 0x1]
	ldrb r2, [r2]
	adds r1, r2
	lsls r1, 24
	lsrs r1, 24
	bl sub_80A3E70
	movs r0, 0
	strh r0, [r5, 0x1C]
	bl sub_80A763C
	movs r0, 0
	bl sub_80A7528
	bl sub_80A736C
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3EE8: .4byte gTasks
_080A3EEC: .4byte gUnknown_03005D10
_080A3EF0: .4byte gUnknown_02038559
	thumb_func_end sub_80A3E90

	thumb_func_start sub_80A3EF4
sub_80A3EF4: @ 80A3EF4
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x5
	bl PlaySE
	bl nullsub_16
	ldr r0, _080A3F44
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldr r2, _080A3F48
	ldr r0, _080A3F4C
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r2
	ldrb r0, [r0, 0x1]
	mvns r0, r0
	ldrb r2, [r1, 0x1C]
	adds r0, r2
	lsls r0, 24
	lsrs r2, r0, 24
	movs r0, 0
	strh r0, [r1, 0x1C]
	cmp r2, 0x7
	bhi _080A3F38
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
_080A3F38:
	movs r0, 0
	bl sub_80A7528
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3F44: .4byte gTasks
_080A3F48: .4byte gUnknown_03005D10
_080A3F4C: .4byte gUnknown_02038559
	thumb_func_end sub_80A3EF4

	thumb_func_start sub_80A3F50
sub_80A3F50: @ 80A3F50
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A3F94
	lsls r3, r0, 2
	adds r3, r0
	lsls r3, 3
	adds r3, r1
	ldr r5, _080A3F98
	ldr r4, _080A3F9C
	movs r1, 0
	ldrsb r1, [r4, r1]
	lsls r1, 2
	adds r1, r5
	ldrb r2, [r1, 0x1]
	ldrb r1, [r1]
	adds r2, r1
	adds r2, 0x1
	strh r2, [r3, 0x1C]
	movs r1, 0
	ldrsb r1, [r4, r1]
	lsls r1, 2
	adds r1, r5
	ldrb r2, [r1]
	adds r1, r2, 0
	bl sub_80A48E8
	movs r0, 0x1
	bl sub_80A7528
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A3F94: .4byte gTasks
_080A3F98: .4byte gUnknown_03005D10
_080A3F9C: .4byte gUnknown_02038559
	thumb_func_end sub_80A3F50

	thumb_func_start sub_80A3FA0
sub_80A3FA0: @ 80A3FA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r7, r0, 0
	ldr r0, [sp, 0x18]
	ldr r4, [sp, 0x1C]
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 16
	lsrs r6, r4, 16
	lsrs r2, 24
	adds r0, r2, r0
	cmp r2, r0
	bge _080A3FFC
	mov r8, r5
	adds r4, r5, r3
	mov r12, r0
_080A3FCC:
	adds r0, r5, 0
	lsls r3, r2, 16
	cmp r8, r4
	bge _080A3FEE
	asrs r2, r3, 11
_080A3FD6:
	lsls r1, r0, 16
	asrs r1, 16
	adds r0, r1, r2
	lsls r0, 1
	adds r0, r7
	strh r6, [r0]
	adds r1, 0x1
	lsls r1, 16
	lsrs r0, r1, 16
	asrs r1, 16
	cmp r1, r4
	blt _080A3FD6
_080A3FEE:
	movs r1, 0x80
	lsls r1, 9
	adds r0, r3, r1
	lsrs r2, r0, 16
	asrs r0, 16
	cmp r0, r12
	blt _080A3FCC
_080A3FFC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A3FA0

	thumb_func_start sub_80A4008
sub_80A4008: @ 80A4008
	push {r4,lr}
	sub sp, 0x8
	ldr r4, [sp, 0x10]
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	lsrs r2, 24
	lsls r3, 24
	lsrs r3, 24
	lsls r4, 24
	lsrs r4, 24
	str r4, [sp]
	movs r4, 0x1
	str r4, [sp, 0x4]
	bl sub_80A3FA0
	add sp, 0x8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A4008

	thumb_func_start sub_80A4030
sub_80A4030: @ 80A4030
	ldr r1, _080A4058
	lsls r0, 7
	adds r1, r0, r1
	movs r0, 0x5A
	strh r0, [r1]
	movs r0, 0x5B
	strh r0, [r1, 0x2]
	movs r0, 0x5C
	strh r0, [r1, 0x4]
	adds r2, r1, 0
	adds r2, 0x40
	movs r0, 0x6A
	strh r0, [r2]
	adds r2, 0x2
	movs r0, 0x6B
	strh r0, [r2]
	adds r1, 0x44
	movs r0, 0x6C
	strh r0, [r1]
	bx lr
	.align 2, 0
_080A4058: .4byte gBG2TilemapBuffer + 0xB4
	thumb_func_end sub_80A4030

	thumb_func_start sub_80A405C
sub_80A405C: @ 80A405C
	push {r4,lr}
	lsls r0, 24
	lsrs r3, r0, 24
	ldr r2, _080A40A8
	movs r0, 0
	adds r4, r2, 0
	movs r1, 0x4F
_080A406A:
	strh r1, [r2]
	strh r1, [r2, 0x2]
	strh r1, [r2, 0x4]
	adds r2, 0x40
	adds r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xF
	bls _080A406A
	lsls r0, r3, 7
	adds r2, r0, r4
	movs r0, 0x5A
	strh r0, [r2]
	movs r0, 0x5B
	strh r0, [r2, 0x2]
	movs r0, 0x5C
	strh r0, [r2, 0x4]
	adds r1, r2, 0
	adds r1, 0x40
	movs r0, 0x6A
	strh r0, [r1]
	adds r1, 0x2
	movs r0, 0x6B
	strh r0, [r1]
	adds r1, 0x2
	movs r0, 0x6C
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A40A8: .4byte gBG2TilemapBuffer + 0xB4
	thumb_func_end sub_80A405C

	thumb_func_start sub_80A40AC
sub_80A40AC: @ 80A40AC
	lsls r0, 24
	ldr r1, _080A40CC
	lsrs r0, 17
	adds r1, r0, r1
	movs r2, 0x4F
	strh r2, [r1]
	strh r2, [r1, 0x2]
	strh r2, [r1, 0x4]
	adds r0, r1, 0
	adds r0, 0x40
	strh r2, [r0]
	adds r0, 0x2
	strh r2, [r0]
	adds r1, 0x44
	strh r2, [r1]
	bx lr
	.align 2, 0
_080A40CC: .4byte gBG2TilemapBuffer + 0xB4
	thumb_func_end sub_80A40AC

	thumb_func_start sub_80A40D0
sub_80A40D0: @ 80A40D0
	push {r4-r7,lr}
	movs r4, 0
	ldr r2, _080A4114
	ldr r3, _080A4118
	movs r0, 0
	ldrsb r0, [r3, r0]
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	adds r7, r2, 0
	adds r6, r3, 0
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	beq _080A4136
	ldr r5, _080A411C
_080A40EE:
	movs r0, 0
	ldrsb r0, [r6, r0]
	lsls r0, 2
	adds r3, r0, r7
	ldrb r2, [r3, 0x1]
	adds r1, r2, r4
	ldr r0, _080A4120
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1]
	ldrh r1, [r5]
	cmp r0, r1
	bne _080A4124
	adds r0, r4, 0
	bl sub_80A40AC
	b _080A4136
	.align 2, 0
_080A4114: .4byte gUnknown_03005D10
_080A4118: .4byte gUnknown_02038559
_080A411C: .4byte gSaveBlock1 + 0x496
_080A4120: .4byte gUnknown_03005D24
_080A4124:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x7
	bhi _080A4136
	adds r0, r2, r4
	ldrb r3, [r3, 0x2]
	cmp r0, r3
	bne _080A40EE
_080A4136:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A40D0

	thumb_func_start sub_80A413C
sub_80A413C: @ 80A413C
	push {lr}
	bl sub_80A40D0
	ldr r1, _080A415C
	ldr r0, _080A4160
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0]
	bl sub_80A405C
	pop {r0}
	bx r0
	.align 2, 0
_080A415C: .4byte gUnknown_03005D10
_080A4160: .4byte gUnknown_02038559
	thumb_func_end sub_80A413C

	thumb_func_start sub_80A4164
sub_80A4164: @ 80A4164
	push {r4,lr}
	lsls r1, 16
	lsrs r1, 16
	lsls r3, 24
	lsrs r3, 24
	movs r4, 0xB9
	strb r4, [r0]
	adds r0, 0x1
	movs r4, 0xFC
	strb r4, [r0]
	movs r4, 0x14
	strb r4, [r0, 0x1]
	movs r4, 0x6
	strb r4, [r0, 0x2]
	adds r0, 0x3
	bl ConvertIntToDecimalStringN
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A4164

	thumb_func_start sub_80A418C
sub_80A418C: @ 80A418C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	adds r4, r0, 0
	mov r9, r1
	adds r5, r2, 0
	adds r6, r3, 0
	ldr r3, [sp, 0x18]
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r3, 24
	lsrs r3, 24
	ldr r0, _080A41D0
	mov r8, r0
	adds r1, r4, 0
	mov r2, r9
	bl sub_80A4164
	mov r0, r8
	adds r1, r5, 0
	adds r2, r6, 0
	bl MenuPrint
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A41D0: .4byte gStringVar1
	thumb_func_end sub_80A418C

	thumb_func_start sub_80A41D4
sub_80A41D4: @ 80A41D4
	push {lr}
	bl sub_80A763C
	pop {r0}
	bx r0
	thumb_func_end sub_80A41D4

	thumb_func_start sub_80A41E0
sub_80A41E0: @ 80A41E0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	adds r7, r0, 0
	mov r9, r2
	adds r5, r3, 0
	ldr r4, [sp, 0x1C]
	lsls r1, 16
	lsrs r1, 16
	lsls r5, 16
	lsrs r5, 16
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0xFC
	mov r8, r0
	strb r0, [r7]
	movs r6, 0x13
	strb r6, [r7, 0x1]
	movs r0, 0x8
	strb r0, [r7, 0x2]
	adds r7, 0x3
	adds r0, r7, 0
	movs r2, 0x2
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
	mov r1, r8
	strb r1, [r0]
	strb r6, [r0, 0x1]
	movs r1, 0x18
	strb r1, [r0, 0x2]
	adds r7, r0, 0x3
	adds r4, 0x1
	lsls r0, r4, 1
	adds r0, r4
	lsls r0, 1
	movs r2, 0x78
	subs r2, r0
	lsls r2, 24
	lsrs r2, 24
	adds r0, r7, 0
	mov r1, r9
	movs r3, 0
	bl sub_8072C74
	movs r1, 0xB9
	strb r1, [r0]
	adds r7, r0, 0x1
	adds r0, r7, 0
	adds r1, r5, 0
	movs r2, 0x78
	movs r3, 0x1
	bl sub_8072C14
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A41E0

	thumb_func_start sub_80A425C
sub_80A425C: @ 80A425C
	push {r4,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r2, 24
	lsrs r2, 24
	ldr r3, _080A42A4
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r3
	movs r0, 0x1C
	ldrsh r1, [r1, r0]
	ldr r3, _080A42A8
	ldr r0, _080A42AC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r3
	ldrb r0, [r0, 0x1]
	subs r1, r0
	subs r1, 0x1
	cmp r1, r2
	bne _080A429C
	movs r0, 0xFC
	strb r0, [r4]
	movs r0, 0x1
	strb r0, [r4, 0x1]
	movs r0, 0x2
	strb r0, [r4, 0x2]
	adds r4, 0x3
_080A429C:
	adds r0, r4, 0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A42A4: .4byte gTasks
_080A42A8: .4byte gUnknown_03005D10
_080A42AC: .4byte gUnknown_02038559
	thumb_func_end sub_80A425C

	thumb_func_start sub_80A42B0
sub_80A42B0: @ 80A42B0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r7, r1, 0
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	ldr r0, _080A4344
	mov r8, r0
	ldr r1, _080A4348
	ldr r0, _080A434C
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	adds r1, r6
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	bgt _080A4370
	cmp r1, r0
	bne _080A4374
	ldr r0, _080A4350
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _080A4370
	lsls r0, r6, 25
	movs r1, 0x80
	lsls r1, 18
	adds r0, r1
	lsrs r5, r0, 24
	ldr r4, _080A4354
	ldr r1, _080A4358
	adds r0, r4, 0
	movs r2, 0x78
	movs r3, 0
	bl sub_8072C74
	adds r0, r4, 0
	movs r1, 0xE
	adds r2, r5, 0
	bl MenuPrint
	lsls r0, r5, 6
	ldr r1, _080A435C
	adds r0, r1
	movs r2, 0x4F
	strh r2, [r0]
	strh r2, [r0, 0x2]
	adds r1, r0, 0
	adds r1, 0x40
	strh r2, [r1]
	adds r0, 0x42
	strh r2, [r0]
	cmp r6, 0x7
	beq _080A4370
	cmp r7, 0x1
	bne _080A432E
	mov r1, r8
	ldrb r0, [r1, 0x2]
	cmp r0, 0
	bne _080A4332
_080A432E:
	cmp r7, 0x2
	bne _080A4360
_080A4332:
	adds r1, r5, 0x2
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0xE
	movs r2, 0x1D
	movs r3, 0xD
	bl MenuFillWindowRectWithBlankTile
	b _080A4370
	.align 2, 0
_080A4344: .4byte gUnknown_02038540
_080A4348: .4byte gUnknown_03005D10
_080A434C: .4byte gUnknown_02038559
_080A4350: .4byte gUnknown_03000701
_080A4354: .4byte gStringVar1
_080A4358: .4byte gOtherText_CloseBag
_080A435C: .4byte gBG2TilemapBuffer + 0x1C
_080A4360:
	adds r1, r5, 0x2
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0xE
	movs r2, 0x1D
	movs r3, 0x11
	bl MenuFillWindowRectWithBlankTile
_080A4370:
	movs r0, 0x1
	b _080A4376
_080A4374:
	movs r0, 0
_080A4376:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A42B0

	thumb_func_start sub_80A4380
sub_80A4380: @ 80A4380
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	str r2, [sp]
	mov r10, r3
	lsls r0, 16
	lsrs r0, 16
	mov r9, r0
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r0, _080A43A0
	mov r8, r0
	b _080A441A
	.align 2, 0
_080A43A0: .4byte gUnknown_03005D24
_080A43A4:
	ldr r1, _080A4440
	ldr r0, _080A4444
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x1]
	adds r4, r7, r4
	lsls r4, 24
	lsrs r4, 24
	lsls r5, r7, 25
	movs r1, 0x80
	lsls r1, 18
	adds r5, r1
	lsrs r5, 24
	ldr r6, _080A4448
	mov r1, r9
	lsls r0, r1, 24
	lsrs r0, 24
	adds r1, r6, 0
	adds r2, r7, 0
	bl sub_80A425C
	adds r6, r0, 0
	mov r1, r8
	ldr r0, [r1]
	lsls r4, 2
	adds r0, r4, r0
	ldrh r0, [r0]
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r6, 0
	movs r2, 0x66
	movs r3, 0
	bl sub_8072C74
	adds r6, r0, 0
	movs r0, 0xB9
	strb r0, [r6]
	adds r6, 0x1
	mov r1, r8
	ldr r0, [r1]
	adds r4, r0
	ldrh r1, [r4, 0x2]
	adds r0, r6, 0
	movs r2, 0x78
	movs r3, 0x1
	bl sub_8072C14
	ldr r0, _080A4448
	movs r1, 0xE
	adds r2, r5, 0
	bl MenuPrint
	adds r0, r7, 0x1
	lsls r0, 24
	lsrs r7, r0, 24
_080A441A:
	ldr r0, [sp]
	cmp r7, r0
	bgt _080A4430
	adds r0, r7, 0
	mov r1, r10
	bl sub_80A42B0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A43A4
_080A4430:
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4440: .4byte gUnknown_03005D10
_080A4444: .4byte gUnknown_02038559
_080A4448: .4byte gStringVar1
	thumb_func_end sub_80A4380

	thumb_func_start sub_80A444C
sub_80A444C: @ 80A444C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	str r2, [sp]
	str r3, [sp, 0x4]
	lsls r0, 16
	lsrs r0, 16
	mov r10, r0
	lsls r1, 24
	lsrs r6, r1, 24
	ldr r0, _080A446C
	mov r9, r0
	b _080A4520
	.align 2, 0
_080A446C: .4byte gSaveBlock1 + 0x496
_080A4470:
	ldr r1, _080A44E8
	ldr r0, _080A44EC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x1]
	adds r4, r6, r4
	lsls r4, 24
	lsrs r4, 24
	lsls r5, r6, 25
	movs r1, 0x80
	lsls r1, 18
	adds r5, r1
	lsrs r5, 24
	ldr r7, _080A44F0
	mov r2, r10
	lsls r0, r2, 24
	lsrs r0, 24
	adds r1, r7, 0
	adds r2, r6, 0
	bl sub_80A425C
	adds r7, r0, 0
	ldr r0, _080A44F4
	mov r8, r0
	ldr r0, [r0]
	lsls r4, 2
	adds r0, r4, r0
	ldrh r0, [r0]
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r7, 0
	movs r2, 0x60
	movs r3, 0
	bl sub_8072C74
	ldr r0, _080A44F0
	movs r1, 0xE
	adds r2, r5, 0
	bl MenuPrint
	ldr r0, _080A44F8
	ldrb r0, [r0]
	cmp r0, 0
	beq _080A44FC
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4, r0
	ldrh r0, [r0]
	mov r2, r9
	ldrh r2, [r2]
	cmp r0, r2
	bne _080A451A
	adds r0, r6, 0
	bl sub_80A4030
	b _080A451A
	.align 2, 0
_080A44E8: .4byte gUnknown_03005D10
_080A44EC: .4byte gUnknown_02038559
_080A44F0: .4byte gStringVar1
_080A44F4: .4byte gUnknown_03005D24
_080A44F8: .4byte gUnknown_02038558
_080A44FC:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r4, r0
	ldrh r0, [r0]
	mov r2, r9
	ldrh r2, [r2]
	cmp r0, r2
	bne _080A4514
	adds r0, r6, 0
	bl sub_80A405C
	b _080A451A
_080A4514:
	adds r0, r6, 0
	bl sub_80A40AC
_080A451A:
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_080A4520:
	ldr r0, [sp]
	cmp r6, r0
	bgt _080A4536
	adds r0, r6, 0
	ldr r1, [sp, 0x4]
	bl sub_80A42B0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A4470
_080A4536:
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A444C

	thumb_func_start sub_80A4548
sub_80A4548: @ 80A4548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x14
	str r2, [sp, 0x8]
	str r3, [sp, 0xC]
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x4]
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	ldr r0, _080A456C
	mov r9, r0
	b _080A46C2
	.align 2, 0
_080A456C: .4byte gBG2TilemapBuffer
_080A4570:
	ldr r1, _080A461C
	ldr r0, _080A4620
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x1]
	add r4, r8
	lsls r4, 24
	lsrs r4, 24
	mov r1, r8
	lsls r0, r1, 25
	movs r3, 0x80
	lsls r3, 18
	adds r0, r3
	lsrs r0, 24
	str r0, [sp, 0x10]
	lsls r0, 5
	adds r0, 0xE
	adds r5, r0, 0
	ldr r6, _080A4624
	ldr r1, [sp, 0x4]
	lsls r0, r1, 24
	lsrs r0, 24
	adds r1, r6, 0
	mov r2, r8
	bl sub_80A425C
	adds r6, r0, 0
	ldr r3, _080A4628
	mov r10, r3
	ldr r0, [r3]
	lsls r7, r4, 2
	adds r3, r7, r0
	ldrh r1, [r3]
	movs r0, 0xA9
	lsls r0, 1
	cmp r1, r0
	bhi _080A4634
	lsls r0, r5, 1
	add r0, r9
	movs r1, 0x59
	strh r1, [r0]
	adds r0, r5, 0x1
	lsls r0, 1
	add r0, r9
	movs r2, 0x4F
	strh r2, [r0]
	adds r0, r5, 0
	adds r0, 0x20
	lsls r0, 1
	add r0, r9
	movs r1, 0x69
	strh r1, [r0]
	adds r0, r5, 0
	adds r0, 0x21
	lsls r0, 1
	add r0, r9
	strh r2, [r0]
	ldrh r0, [r3]
	bl ItemIdToBattleMoveId
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xD
	adds r2, r0, 0
	muls r2, r1
	ldr r0, _080A462C
	adds r2, r0
	mov r1, r10
	ldr r0, [r1]
	adds r0, r7, r0
	ldr r3, _080A4630
	adds r1, r3, 0
	ldrh r3, [r0]
	adds r1, r3
	lsls r1, 16
	lsrs r1, 16
	ldrh r3, [r0, 0x2]
	movs r0, 0x2
	str r0, [sp]
	adds r0, r6, 0
	bl sub_80A41E0
	b _080A46AE
	.align 2, 0
_080A461C: .4byte gUnknown_03005D10
_080A4620: .4byte gUnknown_02038559
_080A4624: .4byte gStringVar1
_080A4628: .4byte gUnknown_03005D24
_080A462C: .4byte gMoveNames
_080A4630: .4byte 0xfffffee0
_080A4634:
	lsls r0, r5, 1
	add r0, r9
	ldr r1, _080A46EC
	strh r1, [r0]
	adds r0, r5, 0x1
	lsls r0, 1
	add r0, r9
	adds r1, 0x1
	strh r1, [r0]
	adds r0, r5, 0
	adds r0, 0x20
	lsls r0, 1
	add r0, r9
	adds r1, 0xF
	strh r1, [r0]
	adds r0, r5, 0
	adds r0, 0x21
	lsls r0, 1
	add r0, r9
	adds r1, 0x1
	strh r1, [r0]
	movs r0, 0xFC
	strb r0, [r6]
	movs r4, 0x13
	strb r4, [r6, 0x1]
	movs r0, 0x11
	strb r0, [r6, 0x2]
	adds r6, 0x3
	mov r1, r10
	ldr r0, [r1]
	adds r0, r7, r0
	ldrh r1, [r0]
	ldr r3, _080A46F0
	adds r1, r3
	adds r0, r6, 0
	bl ConvertIntToDecimalString
	adds r6, r0, 0
	movs r0, 0xFC
	strb r0, [r6]
	strb r4, [r6, 0x1]
	movs r0, 0x18
	strb r0, [r6, 0x2]
	adds r6, 0x3
	mov r1, r10
	ldr r0, [r1]
	adds r0, r7, r0
	ldrh r0, [r0]
	bl ItemIdToBattleMoveId
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0xD
	muls r1, r0
	ldr r0, _080A46F4
	adds r1, r0
	adds r0, r6, 0
	movs r2, 0x78
	movs r3, 0
	bl sub_8072C74
_080A46AE:
	ldr r0, _080A46F8
	movs r1, 0xE
	ldr r2, [sp, 0x10]
	bl MenuPrint
	mov r0, r8
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
_080A46C2:
	ldr r3, [sp, 0x8]
	cmp r8, r3
	bgt _080A46DA
	mov r0, r8
	ldr r1, [sp, 0xC]
	bl sub_80A42B0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A46DA
	b _080A4570
_080A46DA:
	add sp, 0x14
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A46EC: .4byte 0x0000105d
_080A46F0: .4byte 0xfffffeae
_080A46F4: .4byte gMoveNames
_080A46F8: .4byte gStringVar1
	thumb_func_end sub_80A4548

	thumb_func_start sub_80A46FC
sub_80A46FC: @ 80A46FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x10
	str r2, [sp, 0x8]
	str r3, [sp, 0xC]
	lsls r0, 16
	lsrs r0, 16
	str r0, [sp, 0x4]
	lsls r1, 24
	lsrs r6, r1, 24
	ldr r0, _080A4724
	mov r10, r0
	ldr r1, _080A4728
	mov r9, r1
	ldr r0, _080A472C
	mov r8, r0
	b _080A47B4
	.align 2, 0
_080A4724: .4byte gBG2TilemapBuffer
_080A4728: .4byte gStringVar2
_080A472C: .4byte gUnknown_03005D24
_080A4730:
	ldr r1, _080A47DC
	ldr r0, _080A47E0
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r4, [r0, 0x1]
	adds r4, r6, r4
	lsls r4, 24
	lsrs r4, 24
	lsls r5, r6, 25
	movs r1, 0x80
	lsls r1, 18
	adds r5, r1
	lsrs r5, 24
	lsls r0, r5, 5
	adds r0, 0xE
	lsls r1, r0, 1
	add r1, r10
	movs r2, 0x59
	strh r2, [r1]
	adds r0, 0x20
	lsls r0, 1
	add r0, r10
	movs r1, 0x69
	strh r1, [r0]
	ldr r7, _080A47E4
	ldr r1, [sp, 0x4]
	lsls r0, r1, 24
	lsrs r0, 24
	adds r1, r7, 0
	adds r2, r6, 0
	bl sub_80A425C
	adds r7, r0, 0
	mov r1, r8
	ldr r0, [r1]
	lsls r4, 2
	adds r0, r4, r0
	ldrh r0, [r0]
	mov r1, r9
	bl itemid_copy_name
	mov r1, r8
	ldr r0, [r1]
	adds r4, r0
	ldrh r1, [r4]
	subs r1, 0x84
	lsls r1, 16
	lsrs r1, 16
	ldrh r3, [r4, 0x2]
	movs r0, 0x3
	str r0, [sp]
	adds r0, r7, 0
	mov r2, r9
	bl sub_80A41E0
	ldr r0, _080A47E4
	movs r1, 0xE
	adds r2, r5, 0
	bl MenuPrint
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
_080A47B4:
	ldr r0, [sp, 0x8]
	cmp r6, r0
	bgt _080A47CA
	adds r0, r6, 0
	ldr r1, [sp, 0xC]
	bl sub_80A42B0
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A4730
_080A47CA:
	add sp, 0x10
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A47DC: .4byte gUnknown_03005D10
_080A47E0: .4byte gUnknown_02038559
_080A47E4: .4byte gStringVar1
	thumb_func_end sub_80A46FC

	thumb_func_start sub_80A47E8
sub_80A47E8: @ 80A47E8
	push {r4,r5,lr}
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 16
	lsrs r2, r0, 16
	ldr r0, _080A4808
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x4
	bhi _080A4852
	lsls r0, 2
	ldr r1, _080A480C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A4808: .4byte gUnknown_02038559
_080A480C: .4byte _080A4810
	.align 2, 0
_080A4810:
	.4byte _080A4824
	.4byte _080A4824
	.4byte _080A483C
	.4byte _080A4848
	.4byte _080A4830
_080A4824:
	adds r0, r2, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_80A4380
	b _080A4852
_080A4830:
	adds r0, r2, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_80A444C
	b _080A4852
_080A483C:
	adds r0, r2, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_80A4548
	b _080A4852
_080A4848:
	adds r0, r2, 0
	adds r1, r4, 0
	adds r2, r5, 0
	bl sub_80A46FC
_080A4852:
	ldr r1, _080A4870
	ldr r0, _080A4874
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r0, [r0, 0x1]
	cmp r0, 0
	beq _080A4878
	movs r0, 0
	movs r1, 0
	bl sub_80F979C
	b _080A4880
	.align 2, 0
_080A4870: .4byte gUnknown_03005D10
_080A4874: .4byte gUnknown_02038559
_080A4878:
	movs r0, 0
	movs r1, 0x1
	bl sub_80F979C
_080A4880:
	ldr r0, _080A48A4
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _080A48B0
	ldr r1, _080A48A8
	ldr r0, _080A48AC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	adds r1, 0x8
	ldrb r0, [r0, 0x2]
	adds r0, 0x1
	cmp r1, r0
	blt _080A48C6
	b _080A48D8
	.align 2, 0
_080A48A4: .4byte gUnknown_03000701
_080A48A8: .4byte gUnknown_03005D10
_080A48AC: .4byte gUnknown_02038559
_080A48B0:
	ldr r2, _080A48D0
	ldr r0, _080A48D4
	movs r1, 0
	ldrsb r1, [r0, r1]
	lsls r1, 2
	adds r1, r2
	ldrb r0, [r1, 0x1]
	adds r0, 0x8
	ldrb r1, [r1, 0x2]
	cmp r0, r1
	bge _080A48D8
_080A48C6:
	movs r0, 0x1
	movs r1, 0
	bl sub_80F979C
	b _080A48E0
	.align 2, 0
_080A48D0: .4byte gUnknown_03005D10
_080A48D4: .4byte gUnknown_02038559
_080A48D8:
	movs r0, 0x1
	movs r1, 0x1
	bl sub_80F979C
_080A48E0:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A47E8

	thumb_func_start sub_80A48E8
sub_80A48E8: @ 80A48E8
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	movs r3, 0
	bl sub_80A47E8
	pop {r0}
	bx r0
	thumb_func_end sub_80A48E8

	thumb_func_start sub_80A48F8
sub_80A48F8: @ 80A48F8
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0
	movs r2, 0x5
	movs r3, 0x2
	bl sub_80A47E8
	pop {r0}
	bx r0
	thumb_func_end sub_80A48F8

	thumb_func_start sub_80A490C
sub_80A490C: @ 80A490C
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 16
	lsrs r3, r0, 16
	ldr r1, _080A4960
	ldr r0, _080A4964
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r2, [r0]
	adds r1, r2
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	bne _080A4974
	ldr r0, _080A4968
	movs r4, 0x1
	str r4, [sp]
	movs r1, 0x4
	movs r2, 0x68
	movs r3, 0x68
	bl sub_8072A18
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080A496C
	ldr r0, _080A4970
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	str r4, [sp]
	movs r1, 0x4
	movs r2, 0x78
	movs r3, 0x68
	bl sub_8072A18
	adds r0, r5, r0
	b _080A4988
	.align 2, 0
_080A4960: .4byte gUnknown_03005D10
_080A4964: .4byte gUnknown_02038559
_080A4968: .4byte gOtherText_ReturnTo
_080A496C: .4byte gUnknown_0840E740
_080A4970: .4byte gUnknown_03000701
_080A4974:
	adds r0, r3, 0
	bl itemid_get_description
	movs r1, 0x1
	str r1, [sp]
	movs r1, 0x4
	movs r2, 0x68
	movs r3, 0x68
	bl sub_8072A18
_080A4988:
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x2
	bhi _080A49A4
	lsls r1, r5, 25
	movs r0, 0xD0
	lsls r0, 20
	adds r1, r0
	lsrs r1, 24
	movs r0, 0
	movs r2, 0xD
	movs r3, 0x14
	bl MenuZeroFillWindowRect
_080A49A4:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A490C

	thumb_func_start sub_80A49AC
sub_80A49AC: @ 80A49AC
	push {r4,r5,lr}
	sub sp, 0x64
	adds r4, r1, 0
	lsls r0, 16
	lsrs r5, r0, 16
	ldr r1, _080A49E8
	ldr r0, _080A49EC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r2, [r0]
	adds r1, r2
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	bne _080A4A18
	cmp r4, 0
	bne _080A49F4
	movs r0, 0
	movs r1, 0xD
	movs r2, 0xD
	movs r3, 0x14
	bl MenuZeroFillWindowRect
	ldr r0, _080A49F0
	movs r1, 0x4
	movs r2, 0x68
	b _080A4A08
	.align 2, 0
_080A49E8: .4byte gUnknown_03005D10
_080A49EC: .4byte gUnknown_02038559
_080A49F0: .4byte gOtherText_ReturnTo
_080A49F4:
	cmp r4, 0x1
	bne _080A4A4C
	ldr r1, _080A4A10
	ldr r0, _080A4A14
	ldrb r0, [r0]
	lsls r0, 2
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x4
	movs r2, 0x78
_080A4A08:
	movs r3, 0
	bl sub_80729D8
	b _080A4A4C
	.align 2, 0
_080A4A10: .4byte gUnknown_0840E740
_080A4A14: .4byte gUnknown_03000701
_080A4A18:
	cmp r4, 0
	bne _080A4A28
	movs r0, 0
	movs r1, 0xD
	movs r2, 0xD
	movs r3, 0x14
	bl MenuZeroFillWindowRect
_080A4A28:
	lsls r1, r5, 16
	asrs r1, 16
	mov r0, sp
	adds r2, r4, 0
	bl sub_80A99A8
	cmp r0, 0
	beq _080A4A4C
	lsls r2, r4, 20
	movs r0, 0xD0
	lsls r0, 15
	adds r2, r0
	lsrs r2, 16
	mov r0, sp
	movs r1, 0x4
	movs r3, 0
	bl sub_80729D8
_080A4A4C:
	add sp, 0x64
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A49AC

	thumb_func_start sub_80A4A54
sub_80A4A54: @ 80A4A54
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r2, 0x1
	adds r2, r1, 0
	adds r1, r5, 0
_080A4A5E:
	ldrb r3, [r2]
	adds r0, r3, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080A4A8A
	subs r4, 0x1
	cmp r4, 0
	bne _080A4A78
	movs r0, 0xFF
	strb r0, [r1]
	movs r0, 0x1
	b _080A4A92
_080A4A78:
	lsls r0, r3, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080A4A84
	movs r0, 0
	b _080A4A92
_080A4A84:
	adds r1, r5, 0
	adds r2, 0x1
	b _080A4A5E
_080A4A8A:
	strb r3, [r1]
	adds r2, 0x1
	adds r1, 0x1
	b _080A4A5E
_080A4A92:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A4A54

	thumb_func_start sub_80A4A98
sub_80A4A98: @ 80A4A98
	push {r4,r5,lr}
	sub sp, 0x64
	adds r5, r0, 0
	adds r4, r1, 0
	cmp r4, 0
	bne _080A4AB0
	movs r0, 0
	movs r1, 0xD
	movs r2, 0xD
	movs r3, 0x14
	bl MenuZeroFillWindowRect
_080A4AB0:
	mov r0, sp
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_80A4A54
	cmp r0, 0
	beq _080A4AD2
	lsls r2, r4, 20
	movs r0, 0xD0
	lsls r0, 15
	adds r2, r0
	lsrs r2, 16
	mov r0, sp
	movs r1, 0x4
	movs r3, 0
	bl sub_80729D8
_080A4AD2:
	add sp, 0x64
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A4A98

	thumb_func_start sub_80A4ADC
sub_80A4ADC: @ 80A4ADC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A4B0C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	movs r2, 0x1C
	ldrsh r0, [r1, r2]
	cmp r0, 0
	bne _080A4AFA
	movs r0, 0
	bl sub_80A7528
_080A4AFA:
	movs r0, 0x5
	bl PlaySE
	ldr r1, _080A4B10
	movs r0, 0x1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080A4B0C: .4byte gTasks
_080A4B10: .4byte gUnknown_0203855C
	thumb_func_end sub_80A4ADC

	thumb_func_start sub_80A4B14
sub_80A4B14: @ 80A4B14
	push {r4,lr}
	adds r4, r1, 0
	lsls r0, 24
	lsls r4, 24
	lsrs r4, 24
	ldr r2, _080A4B50
	ldr r1, _080A4B54
	ldrb r1, [r1]
	lsls r1, 24
	asrs r1, 24
	lsls r1, 2
	adds r1, r2
	lsrs r0, 24
	ldrb r2, [r1, 0x1]
	adds r0, r2
	strb r0, [r1, 0x1]
	movs r0, 0
	bl MoveMenuCursor
	bl sub_80A73C0
	bl sub_80A763C
	adds r0, r4, 0
	bl sub_80A4ADC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4B50: .4byte gUnknown_03005D10
_080A4B54: .4byte gUnknown_02038559
	thumb_func_end sub_80A4B14

	thumb_func_start sub_80A4B58
sub_80A4B58: @ 80A4B58
	push {r4,lr}
	adds r4, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r0, 24
	asrs r0, 24
	bl MoveMenuCursor
	ldr r2, _080A4B88
	ldr r1, _080A4B8C
	ldrb r1, [r1]
	lsls r1, 24
	asrs r1, 24
	lsls r1, 2
	adds r1, r2
	strb r0, [r1]
	bl sub_80A73C0
	adds r0, r4, 0
	bl sub_80A4ADC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4B88: .4byte gUnknown_03005D10
_080A4B8C: .4byte gUnknown_02038559
	thumb_func_end sub_80A4B58

	thumb_func_start sub_80A4B90
sub_80A4B90: @ 80A4B90
	push {r4,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0x6
	bl TestPlayerAvatarFlags
	lsls r0, 24
	cmp r0, 0
	beq _080A4BBC
	ldr r0, _080A4BB4
	cmp r4, r0
	beq _080A4BAE
	adds r0, 0xD
	cmp r4, r0
	bne _080A4BBC
_080A4BAE:
	ldr r0, _080A4BB8
	b _080A4BE6
	.align 2, 0
_080A4BB4: .4byte 0x00000103
_080A4BB8: .4byte gOtherText_Walk
_080A4BBC:
	adds r0, r4, 0
	bl itemid_is_mail
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A4BE4
	ldr r1, _080A4BDC
	ldr r0, _080A4BE0
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0]
	b _080A4BE6
	.align 2, 0
_080A4BDC: .4byte gUnknown_083C1640
_080A4BE0: .4byte gUnknown_03000704
_080A4BE4:
	ldr r0, _080A4BEC
_080A4BE6:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A4BEC: .4byte gOtherText_Check
	thumb_func_end sub_80A4B90

	thumb_func_start sub_80A4BF0
sub_80A4BF0: @ 80A4BF0
	push {r4-r7,lr}
	sub sp, 0x8
	adds r5, r0, 0
	ldr r7, _080A4C38
	ldrb r4, [r7]
	cmp r4, 0x4
	beq _080A4C00
	b _080A4CF8
_080A4C00:
	movs r0, 0
	movs r1, 0x7
	movs r2, 0xD
	movs r3, 0xC
	bl MenuDrawTextWindow
	str r4, [sp]
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0x8
	movs r3, 0xC
	bl sub_80A4008
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A4C40
	ldr r0, _080A4C3C
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _080A4C40
	movs r0, 0x1
	movs r1, 0
	bl sub_80A7834
	b _080A4CA0
	.align 2, 0
_080A4C38: .4byte gUnknown_02038564
_080A4C3C: .4byte gUnknown_03000701
_080A4C40:
	movs r6, 0
	ldr r0, _080A4C5C
	ldrb r0, [r0]
	cmp r6, r0
	bcs _080A4CA0
	ldr r4, _080A4C60
_080A4C4C:
	cmp r6, 0
	bne _080A4C68
	ldr r0, _080A4C64
	ldrh r0, [r0]
	bl sub_80A4B90
	adds r3, r0, 0
	b _080A4C76
	.align 2, 0
_080A4C5C: .4byte gUnknown_02038564
_080A4C60: .4byte gUnknown_083C1640
_080A4C64: .4byte word_203855E
_080A4C68:
	ldr r0, _080A4CC4
	ldr r0, [r0]
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r4
	ldr r3, [r0]
_080A4C76:
	lsrs r0, r6, 1
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 1
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	movs r2, 0x1
	ands r2, r6
	lsls r2, 1
	adds r2, 0x8
	adds r0, r3, 0
	bl MenuPrint
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _080A4CC8
	ldrb r0, [r0]
	cmp r6, r0
	bcc _080A4C4C
_080A4CA0:
	ldr r0, _080A4CCC
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _080A4CD4
	ldr r0, _080A4CC8
	ldrb r3, [r0]
	ldr r0, _080A4CD0
	ldrb r0, [r0]
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x8
	bl InitMenu
	b _080A4CEA
	.align 2, 0
_080A4CC4: .4byte gUnknown_03000704
_080A4CC8: .4byte gUnknown_02038564
_080A4CCC: .4byte gUnknown_03000701
_080A4CD0: .4byte gUnknown_03000700
_080A4CD4:
	ldr r0, _080A4CF4
	ldrb r3, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x8
	bl InitMenu
_080A4CEA:
	movs r0, 0x2F
	bl sub_8072DCC
	b _080A4D8A
	.align 2, 0
_080A4CF4: .4byte gUnknown_02038564
_080A4CF8:
	movs r0, 0
	movs r1, 0x5
	movs r2, 0xD
	movs r3, 0xC
	bl MenuDrawTextWindow
	movs r0, 0x6
	str r0, [sp]
	adds r0, r5, 0
	movs r1, 0x1
	movs r2, 0x6
	movs r3, 0xC
	bl sub_80A4008
	movs r6, 0
	ldrb r7, [r7]
	cmp r6, r7
	bcs _080A4D6E
	ldr r7, _080A4D98
_080A4D1E:
	ldr r0, _080A4D9C
	ldr r0, [r0]
	adds r0, r6
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r7
	ldr r5, [r0]
	adds r0, r6, 0
	movs r1, 0x3
	bl __udivsi3
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 1
	adds r4, r0
	lsls r4, 1
	adds r4, 0x1
	lsls r4, 24
	lsrs r4, 24
	adds r0, r6, 0
	movs r1, 0x3
	bl __umodsi3
	adds r2, r0, 0
	lsls r2, 25
	movs r0, 0xC0
	lsls r0, 19
	adds r2, r0
	lsrs r2, 24
	adds r0, r5, 0
	adds r1, r4, 0
	bl MenuPrint
	adds r0, r6, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r0, _080A4DA0
	ldrb r0, [r0]
	cmp r6, r0
	bcc _080A4D1E
_080A4D6E:
	ldr r0, _080A4DA0
	ldrb r3, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x1
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x6
	bl InitMenu
	movs r0, 0x2F
	bl sub_8072DCC
_080A4D8A:
	movs r0, 0x2
	bl sub_80A7528
	add sp, 0x8
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4D98: .4byte gUnknown_083C1640
_080A4D9C: .4byte gUnknown_03000704
_080A4DA0: .4byte gUnknown_02038564
	thumb_func_end sub_80A4BF0

	thumb_func_start sub_80A4DA4
sub_80A4DA4: @ 80A4DA4
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	bl sub_80A73FC
	movs r0, 0x6
	str r0, [sp]
	adds r0, r4, 0
	movs r1, 0
	movs r2, 0x6
	movs r3, 0xD
	bl sub_80A36B8
	movs r0, 0
	movs r1, 0x5
	movs r2, 0xD
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	bl sub_80A7590
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A4DA4

	thumb_func_start sub_80A4DD8
sub_80A4DD8: @ 80A4DD8
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	sub sp, 0x4
	adds r4, r1, 0
	adds r1, r2, 0
	adds r6, r3, 0
	ldr r5, [sp, 0x20]
	ldr r2, [sp, 0x24]
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 24
	lsrs r4, 24
	lsls r1, 24
	lsrs r1, 24
	lsls r6, 24
	lsrs r6, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r2, 24
	lsrs r2, 24
	mov r10, r2
	ldr r3, _080A4E84
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r2, r3
	movs r0, 0x1
	strh r0, [r2, 0xA]
	adds r0, r4, 0x2
	mov r9, r0
	strh r0, [r2, 0xC]
	adds r0, r1, 0x1
	mov r8, r0
	strh r0, [r2, 0xE]
	adds r2, r4, r6
	lsls r2, 24
	lsrs r2, 24
	adds r3, r1, r5
	lsls r3, 24
	lsrs r3, 24
	adds r0, r4, 0
	bl MenuDrawTextWindow
	ldr r0, _080A4E88
	adds r4, 0x1
	lsls r4, 24
	lsrs r4, 24
	mov r1, r8
	lsls r1, 24
	lsrs r1, 24
	mov r8, r1
	subs r6, 0x1
	lsls r6, 24
	lsrs r6, 24
	subs r5, 0x1
	lsls r5, 24
	lsrs r5, 24
	str r5, [sp]
	adds r1, r4, 0
	mov r2, r8
	adds r3, r6, 0
	bl sub_80A4008
	mov r2, r9
	lsls r2, 24
	lsrs r2, 24
	mov r9, r2
	mov r0, r10
	str r0, [sp]
	movs r0, 0x1
	movs r1, 0x1
	mov r3, r8
	bl sub_80A418C
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4E84: .4byte gTasks
_080A4E88: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A4DD8

	thumb_func_start sub_80A4E8C
sub_80A4E8C: @ 80A4E8C
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r6, 24
	lsrs r6, 24
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	movs r1, 0x1
	bl sub_80F979C
	movs r0, 0x1
	movs r1, 0x1
	bl sub_80F979C
	movs r0, 0x2
	movs r1, 0x1
	bl sub_80F979C
	movs r0, 0x3
	movs r1, 0x1
	bl sub_80F979C
	movs r0, 0
	bl sub_80F996C
	movs r0, 0x1
	bl sub_80F996C
	movs r0, 0x2
	bl sub_80F996C
	movs r0, 0x3
	bl sub_80F996C
	ldr r5, _080A4F04
	lsls r4, 24
	asrs r4, 24
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80A3B04
	ldr r0, _080A4F08
	ldrb r1, [r0]
	adds r0, r5, 0
	bl sub_80A3AC0
	bl sub_80A3770
	bl sub_80A7C64
	adds r0, r6, 0
	bl sub_80A7C20
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A4F04: .4byte gBG2TilemapBuffer
_080A4F08: .4byte gUnknown_02038559
	thumb_func_end sub_80A4E8C

	thumb_func_start sub_80A4F0C
sub_80A4F0C: @ 80A4F0C
	push {r4,lr}
	ldr r0, _080A4F38
	ldrb r0, [r0]
	subs r0, 0x4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A4F60
	ldr r4, _080A4F3C
	ldrh r0, [r4, 0x2E]
	cmp r0, 0x10
	beq _080A4F30
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _080A4F40
_080A4F30:
	movs r0, 0x1
	movs r1, 0x2
	b _080A4F58
	.align 2, 0
_080A4F38: .4byte gUnknown_03000701
_080A4F3C: .4byte gMain
_080A4F40:
	ldrh r0, [r4, 0x2E]
	cmp r0, 0x20
	beq _080A4F52
	bl sub_80F9284
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A4F60
_080A4F52:
	movs r0, 0x1
	negs r0, r0
	movs r1, 0x1
_080A4F58:
	bl sub_80A4E8C
	movs r0, 0x1
	b _080A4F62
_080A4F60:
	movs r0, 0
_080A4F62:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A4F0C

	thumb_func_start sub_80A4F68
sub_80A4F68: @ 80A4F68
	push {lr}
	bl sub_80A4F0C
	pop {r0}
	bx r0
	thumb_func_end sub_80A4F68

	thumb_func_start sub_80A4F74
sub_80A4F74: @ 80A4F74
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r2, r4, 0
	movs r5, 0
	ldr r0, _080A4FAC
	ldrh r0, [r0, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _080A4FE8
	ldr r1, _080A4FB0
	ldr r0, _080A4FB4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, 0
	beq _080A4FB8
	movs r0, 0x1
	negs r0, r0
	adds r1, r4, 0
	bl sub_80A4B58
	b _080A4FC8
	.align 2, 0
_080A4FAC: .4byte gMain
_080A4FB0: .4byte gUnknown_03005D10
_080A4FB4: .4byte gUnknown_02038559
_080A4FB8:
	ldrb r0, [r1, 0x1]
	cmp r0, 0
	beq _080A4FC8
	movs r0, 0x1
	negs r0, r0
	adds r1, r4, 0
	bl sub_80A4B14
_080A4FC8:
	ldr r0, _080A4FE0
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080A50AE
	ldr r1, _080A4FE4
	ldrh r0, [r1, 0x32]
	cmp r0, 0x5
	bne _080A50AE
	movs r0, 0xB
	strh r0, [r1, 0x32]
	b _080A50AE
	.align 2, 0
_080A4FE0: .4byte gLinkOpen
_080A4FE4: .4byte gMain
_080A4FE8:
	cmp r1, 0x80
	bne _080A5088
	ldr r0, _080A5020
	ldrb r0, [r0]
	cmp r0, 0x5
	beq _080A502C
	ldr r1, _080A5024
	ldr r0, _080A5028
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r2, r0, r1
	ldrb r0, [r2]
	ldrb r1, [r2, 0x3]
	cmp r0, r1
	bne _080A504E
	ldrb r0, [r2, 0x1]
	ldrb r1, [r2]
	adds r0, r1
	ldrb r2, [r2, 0x2]
	cmp r0, r2
	beq _080A5068
	movs r0, 0x1
	adds r1, r4, 0
	bl sub_80A4B14
	b _080A5068
	.align 2, 0
_080A5020: .4byte gUnknown_03000701
_080A5024: .4byte gUnknown_03005D10
_080A5028: .4byte gUnknown_02038559
_080A502C:
	ldr r1, _080A5058
	ldr r0, _080A505C
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r2, r0, r1
	ldrb r1, [r2, 0x1]
	ldrb r3, [r2]
	adds r1, r3
	ldrb r0, [r2, 0x2]
	subs r0, 0x1
	cmp r1, r0
	beq _080A5068
	ldrb r2, [r2, 0x3]
	cmp r3, r2
	beq _080A5060
_080A504E:
	movs r0, 0x1
	adds r1, r4, 0
	bl sub_80A4B58
	b _080A5068
	.align 2, 0
_080A5058: .4byte gUnknown_03005D10
_080A505C: .4byte gUnknown_02038559
_080A5060:
	movs r0, 0x1
	adds r1, r4, 0
	bl sub_80A4B14
_080A5068:
	movs r5, 0x1
	ldr r0, _080A5080
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080A50C0
	ldr r1, _080A5084
	ldrh r0, [r1, 0x32]
	cmp r0, 0x5
	bne _080A50C0
	movs r0, 0xB
	strh r0, [r1, 0x32]
	b _080A50C0
	.align 2, 0
_080A5080: .4byte gLinkOpen
_080A5084: .4byte gMain
_080A5088:
	ldr r0, _080A50B4
	lsls r1, r2, 2
	adds r1, r2
	lsls r1, 3
	adds r4, r1, r0
	movs r1, 0x1C
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080A50BC
	bl sub_80A4F0C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A50BC
	bl sub_80A73F0
	ldr r0, _080A50B8
	str r0, [r4]
_080A50AE:
	movs r5, 0x1
	b _080A50C0
	.align 2, 0
_080A50B4: .4byte gTasks
_080A50B8: .4byte sub_80A4F68
_080A50BC:
	bl sub_80A73C0
_080A50C0:
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_80A4F74

	thumb_func_start sub_80A50C8
sub_80A50C8: @ 80A50C8
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, _080A5148
	adds r5, r0, r1
	ldr r0, _080A514C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	beq _080A50E6
	b _080A52BC
_080A50E6:
	adds r0, r4, 0
	bl sub_80A4F74
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A50F6
	b _080A526A
_080A50F6:
	ldr r2, _080A5150
	ldrh r1, [r2, 0x2E]
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _080A5190
	ldr r3, _080A5154
	ldrb r0, [r3]
	subs r0, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _080A5190
	ldr r0, _080A5158
	ldrb r0, [r0]
	cmp r0, 0x1
	bhi _080A5190
	movs r1, 0x14
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _080A5160
	ldr r1, _080A515C
	movs r0, 0
	ldrsb r0, [r3, r0]
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r2, [r0]
	adds r1, r2
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	bne _080A5138
	b _080A526A
_080A5138:
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_80A3F50
	b _080A526A
	.align 2, 0
_080A5148: .4byte gUnknown_03004B28
_080A514C: .4byte gPaletteFade
_080A5150: .4byte gMain
_080A5154: .4byte gUnknown_02038559
_080A5158: .4byte gUnknown_03000701
_080A515C: .4byte gUnknown_03005D10
_080A5160:
	ldr r1, _080A5184
	movs r0, 0
	ldrsb r0, [r3, r0]
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r2, [r0]
	adds r1, r2
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	beq _080A5188
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_80A3E90
	b _080A526A
	.align 2, 0
_080A5184: .4byte gUnknown_03005D10
_080A5188:
	adds r0, r4, 0
	bl sub_80A3EF4
	b _080A526A
_080A5190:
	ldrh r2, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r2
	cmp r0, 0
	beq _080A5272
	ldr r7, _080A51D4
	ldr r6, _080A51D8
	movs r0, 0
	ldrsb r0, [r6, r0]
	lsls r0, 2
	adds r0, r7
	ldrb r1, [r0, 0x1]
	ldrb r2, [r0]
	adds r1, r2
	ldrb r0, [r0, 0x2]
	cmp r1, r0
	bne _080A51F0
	movs r0, 0x14
	ldrsh r1, [r5, r0]
	cmp r1, 0
	bne _080A51E8
	ldr r0, _080A51DC
	strh r1, [r0]
	ldr r1, _080A51E0
	ldr r0, _080A51E4
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	b _080A526A
	.align 2, 0
_080A51D4: .4byte gUnknown_03005D10
_080A51D8: .4byte gUnknown_02038559
_080A51DC: .4byte word_203855E
_080A51E0: .4byte gUnknown_083C16BC
_080A51E4: .4byte gUnknown_03000701
_080A51E8:
	adds r0, r4, 0
	bl sub_80A3EF4
	b _080A526A
_080A51F0:
	movs r1, 0x14
	ldrsh r0, [r5, r1]
	cmp r0, 0
	bne _080A5264
	movs r0, 0x5
	bl PlaySE
	ldr r2, _080A5250
	movs r1, 0
	ldrsb r1, [r6, r1]
	lsls r1, 2
	adds r1, r7
	ldrb r0, [r1]
	ldrb r1, [r1, 0x1]
	adds r0, r1
	strb r0, [r2]
	ldr r3, _080A5254
	ldrb r0, [r2]
	ldr r1, _080A5258
	ldr r1, [r1]
	lsls r0, 2
	adds r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, _080A525C
	ldr r0, _080A5260
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	movs r0, 0
	bl sub_80F98A4
	movs r0, 0x1
	bl sub_80F98A4
	movs r0, 0x2
	bl sub_80F98A4
	movs r0, 0x3
	bl sub_80F98A4
	bl sub_80A797C
	b _080A526A
	.align 2, 0
_080A5250: .4byte gUnknown_02038560
_080A5254: .4byte word_203855E
_080A5258: .4byte gUnknown_03005D24
_080A525C: .4byte gUnknown_083C16BC
_080A5260: .4byte gUnknown_03000701
_080A5264:
	adds r0, r4, 0
	bl sub_80A3E90
_080A526A:
	adds r0, r4, 0
	bl sub_808B5B4
	b _080A52BC
_080A5272:
	movs r0, 0x2
	ands r0, r2
	cmp r0, 0
	beq _080A52BC
	movs r0, 0x14
	ldrsh r1, [r5, r0]
	cmp r1, 0
	bne _080A52B0
	ldr r2, _080A52A4
	ldrb r0, [r2]
	cmp r0, 0x5
	beq _080A52B6
	ldr r0, _080A52A8
	strh r1, [r0]
	ldr r1, _080A52AC
	ldrb r0, [r2]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	b _080A52B6
	.align 2, 0
_080A52A4: .4byte gUnknown_03000701
_080A52A8: .4byte word_203855E
_080A52AC: .4byte gUnknown_083C16BC
_080A52B0:
	adds r0, r4, 0
	bl sub_80A3EF4
_080A52B6:
	adds r0, r4, 0
	bl sub_808B5B4
_080A52BC:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A50C8

	thumb_func_start sub_80A52C4
sub_80A52C4: @ 80A52C4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 16
	lsrs r3, r1, 16
	adds r4, r3, 0
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _080A52F4
	adds r1, r0
	ldr r0, _080A52F8
	ldrh r0, [r0, 0x30]
	movs r2, 0xF0
	ands r2, r0
	cmp r2, 0x40
	bne _080A52FC
	movs r2, 0x2
	ldrsh r0, [r1, r2]
	cmp r0, r3
	beq _080A533E
	ldrh r0, [r1, 0x2]
	adds r0, 0x1
	b _080A5340
	.align 2, 0
_080A52F4: .4byte gUnknown_03004B28
_080A52F8: .4byte gMain
_080A52FC:
	cmp r2, 0x80
	bne _080A5312
	ldrh r2, [r1, 0x2]
	movs r4, 0x2
	ldrsh r0, [r1, r4]
	cmp r0, 0x1
	beq _080A530E
	subs r0, r2, 0x1
	b _080A5340
_080A530E:
	strh r3, [r1, 0x2]
	b _080A5342
_080A5312:
	cmp r2, 0x10
	bne _080A532A
	movs r2, 0x2
	ldrsh r0, [r1, r2]
	adds r0, 0xA
	cmp r0, r3
	bge _080A5326
	ldrh r0, [r1, 0x2]
	adds r0, 0xA
	b _080A5340
_080A5326:
	strh r4, [r1, 0x2]
	b _080A5342
_080A532A:
	cmp r2, 0x20
	bne _080A5346
	ldrh r2, [r1, 0x2]
	movs r3, 0x2
	ldrsh r0, [r1, r3]
	cmp r0, 0xA
	ble _080A533E
	adds r0, r2, 0
	subs r0, 0xA
	b _080A5340
_080A533E:
	movs r0, 0x1
_080A5340:
	strh r0, [r1, 0x2]
_080A5342:
	movs r0, 0x1
	b _080A5348
_080A5346:
	movs r0, 0
_080A5348:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A52C4

	thumb_func_start sub_80A5350
sub_80A5350: @ 80A5350
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r2, _080A539C
	adds r4, r1, r2
	ldr r1, _080A53A0
	ldrb r1, [r1]
	ldr r2, _080A53A4
	ldr r2, [r2]
	lsls r1, 2
	adds r1, r2
	ldrh r1, [r1, 0x2]
	bl sub_80A52C4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A53C0
	ldr r0, _080A53A8
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x3
	bne _080A53AC
	ldrh r0, [r4, 0x2]
	ldrb r2, [r4, 0x4]
	ldrb r3, [r4, 0x6]
	movs r1, 0x3
	str r1, [sp]
	movs r1, 0x1
	bl sub_80A418C
	b _080A53BC
	.align 2, 0
_080A539C: .4byte gUnknown_03004B28
_080A53A0: .4byte gUnknown_02038560
_080A53A4: .4byte gUnknown_03005D24
_080A53A8: .4byte gUnknown_02038559
_080A53AC:
	ldrh r0, [r4, 0x2]
	ldrb r2, [r4, 0x4]
	ldrb r3, [r4, 0x6]
	movs r1, 0x2
	str r1, [sp]
	movs r1, 0x1
	bl sub_80A418C
_080A53BC:
	movs r0, 0x1
	b _080A53C2
_080A53C0:
	movs r0, 0
_080A53C2:
	add sp, 0x4
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_80A5350

	thumb_func_start sub_80A53CC
sub_80A53CC: @ 80A53CC
	push {lr}
	bl sub_80A34B4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A53EA
	bl sub_80A3770
	ldr r0, _080A53F0
	movs r1, 0
	bl CreateTask
	ldr r1, _080A53F4
	strb r0, [r1]
_080A53EA:
	pop {r0}
	bx r0
	.align 2, 0
_080A53F0: .4byte sub_80A50C8
_080A53F4: .4byte gUnknown_02038563
	thumb_func_end sub_80A53CC

	thumb_func_start sub_80A53F8
sub_80A53F8: @ 80A53F8
	push {lr}
	ldr r0, _080A540C
	movs r1, 0
	strb r1, [r0]
	ldr r0, _080A5410
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A540C: .4byte gUnknown_03000701
_080A5410: .4byte sub_80A53CC
	thumb_func_end sub_80A53F8

	thumb_func_start sub_80A5414
sub_80A5414: @ 80A5414
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r5, 0
	bl rfu_lacks_rfufunc
	cmp r0, 0
	bne _080A5426
	b _080A5552
_080A5426:
	ldr r2, _080A5460
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _080A546C
	ldr r4, _080A5464
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A5440
	b _080A5552
_080A5440:
	ldrb r1, [r4]
	ldr r0, _080A5468
	ldr r0, [r0]
	adds r1, r0
	subs r1, 0x1
	ldrb r0, [r1]
	cmp r0, 0x8
	bne _080A5452
	b _080A5552
_080A5452:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _080A54EE
	.align 2, 0
_080A5460: .4byte gMain
_080A5464: .4byte gUnknown_03000700
_080A5468: .4byte gUnknown_03000704
_080A546C:
	cmp r1, 0x80
	bne _080A549C
	ldr r4, _080A5494
	ldrb r1, [r4]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A5552
	ldrb r1, [r4]
	ldr r0, _080A5498
	ldr r0, [r0]
	adds r1, r0
	ldrb r0, [r1, 0x1]
	cmp r0, 0x8
	beq _080A5552
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	b _080A54EE
	.align 2, 0
_080A5494: .4byte gUnknown_03000700
_080A5498: .4byte gUnknown_03000704
_080A549C:
	cmp r1, 0x20
	bne _080A54CC
	ldr r4, _080A54C4
	ldrb r0, [r4]
	cmp r0, 0x1
	bls _080A5552
	adds r1, r0, 0
	ldr r0, _080A54C8
	ldr r0, [r0]
	adds r1, r0
	subs r1, 0x2
	ldrb r0, [r1]
	cmp r0, 0x8
	beq _080A5552
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x2
	negs r0, r0
	b _080A54EE
	.align 2, 0
_080A54C4: .4byte gUnknown_03000700
_080A54C8: .4byte gUnknown_03000704
_080A54CC:
	cmp r1, 0x10
	bne _080A5500
	ldr r4, _080A54F8
	ldrb r0, [r4]
	cmp r0, 0x1
	bhi _080A5552
	adds r1, r0, 0
	ldr r0, _080A54FC
	ldr r0, [r0]
	adds r1, r0
	ldrb r0, [r1, 0x2]
	cmp r0, 0x8
	beq _080A5552
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x2
_080A54EE:
	bl MoveMenuCursor3
	strb r0, [r4]
	b _080A5552
	.align 2, 0
_080A54F8: .4byte gUnknown_03000700
_080A54FC: .4byte gUnknown_03000704
_080A5500:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A5590
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A5552
	ldr r1, _080A5570
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0x1C]
	ldr r1, _080A5574
	ldr r0, _080A5578
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
	ldr r0, _080A557C
	bl sub_80A4DA4
	ldr r1, _080A5580
	ldr r0, _080A5584
	ldr r0, [r0]
	ldrb r0, [r0, 0x3]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r5, [r0]
	adds r0, r4, 0
	bl _call_via_r5
_080A5552:
	cmp r5, 0
	bne _080A55FA
	ldr r0, _080A5588
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _080A55E0
	ldr r0, _080A558C
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A55D4
	movs r0, 0xC
	bl sub_8072DDC
	b _080A55FA
	.align 2, 0
_080A5570: .4byte gTasks
_080A5574: .4byte gUnknown_03005D10
_080A5578: .4byte gUnknown_02038559
_080A557C: .4byte gBG1TilemapBuffer
_080A5580: .4byte gUnknown_083C1640
_080A5584: .4byte gUnknown_03000704
_080A5588: .4byte gUnknown_03000701
_080A558C: .4byte gUnknown_03000700
_080A5590:
	ldr r1, _080A55C0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0x1C]
	ldr r0, _080A55C4
	bl sub_80A4DA4
	ldr r1, _080A55C8
	ldr r0, _080A55CC
	ldrb r2, [r0]
	ldr r0, _080A55D0
	ldr r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r5, [r0]
	adds r0, r4, 0
	bl _call_via_r5
	b _080A5552
	.align 2, 0
_080A55C0: .4byte gTasks
_080A55C4: .4byte gBG1TilemapBuffer
_080A55C8: .4byte gUnknown_083C1640
_080A55CC: .4byte gUnknown_03000700
_080A55D0: .4byte gUnknown_03000704
_080A55D4:
	cmp r0, 0x1
	bls _080A55E8
	movs r0, 0x30
	bl sub_8072DCC
	b _080A55FA
_080A55E0:
	ldr r0, _080A55F0
	ldrb r0, [r0]
	cmp r0, 0x1
	bhi _080A55F4
_080A55E8:
	movs r0, 0x2F
	bl sub_8072DCC
	b _080A55FA
	.align 2, 0
_080A55F0: .4byte gUnknown_03000700
_080A55F4:
	movs r0, 0x30
	bl sub_8072DCC
_080A55FA:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5414

	thumb_func_start sub_80A5600
sub_80A5600: @ 80A5600
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	movs r5, 0
	ldr r2, _080A563C
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _080A5648
	ldr r4, _080A5640
	ldrb r0, [r4]
	cmp r0, 0
	bne _080A561E
	b _080A5736
_080A561E:
	adds r1, r0, 0
	ldr r0, _080A5644
	ldr r0, [r0]
	adds r1, r0
	subs r1, 0x1
	ldrb r0, [r1]
	cmp r0, 0x8
	bne _080A5630
	b _080A5736
_080A5630:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _080A56D2
	.align 2, 0
_080A563C: .4byte gMain
_080A5640: .4byte gUnknown_03000700
_080A5644: .4byte gUnknown_03000704
_080A5648:
	cmp r1, 0x80
	bne _080A5680
	ldr r4, _080A5674
	ldrb r1, [r4]
	ldr r0, _080A5678
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	beq _080A5736
	cmp r1, 0x2
	beq _080A5736
	ldr r0, _080A567C
	ldr r0, [r0]
	adds r0, r1, r0
	ldrb r0, [r0, 0x1]
	cmp r0, 0x8
	beq _080A5736
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	b _080A56D2
	.align 2, 0
_080A5674: .4byte gUnknown_03000700
_080A5678: .4byte gUnknown_02038564
_080A567C: .4byte gUnknown_03000704
_080A5680:
	cmp r1, 0x20
	bne _080A56B0
	ldr r4, _080A56A8
	ldrb r0, [r4]
	cmp r0, 0x2
	bls _080A5736
	adds r1, r0, 0
	ldr r0, _080A56AC
	ldr r0, [r0]
	adds r1, r0
	subs r1, 0x3
	ldrb r0, [r1]
	cmp r0, 0x8
	beq _080A5736
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x3
	negs r0, r0
	b _080A56D2
	.align 2, 0
_080A56A8: .4byte gUnknown_03000700
_080A56AC: .4byte gUnknown_03000704
_080A56B0:
	cmp r1, 0x10
	bne _080A56E4
	ldr r4, _080A56DC
	ldrb r0, [r4]
	cmp r0, 0x2
	bhi _080A5736
	adds r1, r0, 0
	ldr r0, _080A56E0
	ldr r0, [r0]
	adds r1, r0
	ldrb r0, [r1, 0x3]
	cmp r0, 0x8
	beq _080A5736
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x3
_080A56D2:
	bl MoveMenuCursor3
	strb r0, [r4]
	b _080A5736
	.align 2, 0
_080A56DC: .4byte gUnknown_03000700
_080A56E0: .4byte gUnknown_03000704
_080A56E4:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A5768
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A5736
	ldr r1, _080A574C
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0x1C]
	ldr r1, _080A5750
	ldr r0, _080A5754
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
	ldr r0, _080A5758
	bl sub_80A4DA4
	ldr r1, _080A575C
	ldr r0, _080A5760
	ldr r0, [r0]
	ldrb r0, [r0, 0x5]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r5, [r0]
	adds r0, r4, 0
	bl _call_via_r5
_080A5736:
	cmp r5, 0
	bne _080A57BE
	ldr r0, _080A5764
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A57AC
	movs r0, 0xC
	bl sub_8072DDC
	b _080A57BE
	.align 2, 0
_080A574C: .4byte gTasks
_080A5750: .4byte gUnknown_03005D10
_080A5754: .4byte gUnknown_02038559
_080A5758: .4byte gBG1TilemapBuffer
_080A575C: .4byte gUnknown_083C1640
_080A5760: .4byte gUnknown_03000704
_080A5764: .4byte gUnknown_03000700
_080A5768:
	ldr r1, _080A5798
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r5, [r0, 0x1C]
	ldr r0, _080A579C
	bl sub_80A4DA4
	ldr r1, _080A57A0
	ldr r0, _080A57A4
	ldrb r2, [r0]
	ldr r0, _080A57A8
	ldr r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r5, [r0]
	adds r0, r4, 0
	bl _call_via_r5
	b _080A5736
	.align 2, 0
_080A5798: .4byte gTasks
_080A579C: .4byte gBG1TilemapBuffer
_080A57A0: .4byte gUnknown_083C1640
_080A57A4: .4byte gUnknown_03000700
_080A57A8: .4byte gUnknown_03000704
_080A57AC:
	cmp r0, 0x2
	bhi _080A57B8
	movs r0, 0x2F
	bl sub_8072DCC
	b _080A57BE
_080A57B8:
	movs r0, 0x30
	bl sub_8072DCC
_080A57BE:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5600

	thumb_func_start sub_80A57C4
sub_80A57C4: @ 80A57C4
	push {r4-r6,lr}
	sub sp, 0x8
	ldr r5, _080A57EC
	ldr r0, _080A57F0
	movs r1, 0
	ldrsb r1, [r0, r1]
	lsls r1, 1
	ldr r4, _080A57F4
	adds r1, r4
	str r1, [r5]
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x4
	bne _080A57FC
	ldr r1, _080A57F8
	movs r0, 0x1
	strb r0, [r1]
	movs r5, 0x9
	b _080A582C
	.align 2, 0
_080A57EC: .4byte gUnknown_03000704
_080A57F0: .4byte gUnknown_02038559
_080A57F4: .4byte gUnknown_083C16AE
_080A57F8: .4byte gUnknown_02038564
_080A57FC:
	ldr r0, _080A581C
	ldrh r0, [r0]
	bl sub_80F92F4
	lsls r0, 24
	cmp r0, 0
	bne _080A5824
	adds r0, r4, 0
	adds r0, 0x8
	str r0, [r5]
	ldr r1, _080A5820
	movs r0, 0x1
	strb r0, [r1]
	movs r5, 0x9
	b _080A582C
	.align 2, 0
_080A581C: .4byte word_203855E
_080A5820: .4byte gUnknown_02038564
_080A5824:
	ldr r1, _080A5880
	movs r0, 0x2
	strb r0, [r1]
	movs r5, 0x7
_080A582C:
	adds r6, r1, 0
	ldr r0, _080A5884
	adds r4, r5, 0x1
	ldrb r1, [r6]
	lsls r1, 25
	lsrs r1, 24
	str r1, [sp]
	movs r1, 0x7
	adds r2, r4, 0
	movs r3, 0x6
	bl sub_80A4008
	ldrb r3, [r6]
	lsls r3, 1
	adds r3, 0x1
	adds r3, r5, r3
	lsls r3, 24
	lsrs r3, 24
	movs r0, 0x6
	adds r1, r5, 0
	movs r2, 0xD
	bl MenuDrawTextWindow
	movs r0, 0
	adds r1, r5, 0
	bl sub_80A7834
	ldrb r3, [r6]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x6
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x7
	adds r2, r4, 0
	bl InitMenu
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A5880: .4byte gUnknown_02038564
_080A5884: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A57C4

	thumb_func_start sub_80A5888
sub_80A5888: @ 80A5888
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	bl rfu_lacks_rfufunc
	cmp r0, 0
	beq _080A5988
	ldr r2, _080A58B8
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _080A58C0
	ldr r4, _080A58BC
	ldrb r0, [r4]
	cmp r0, 0
	beq _080A5988
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _080A58E2
	.align 2, 0
_080A58B8: .4byte gMain
_080A58BC: .4byte gUnknown_03000700
_080A58C0:
	movs r0, 0x80
	ands r0, r1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0
	beq _080A58F4
	ldr r4, _080A58EC
	ldrb r1, [r4]
	ldr r0, _080A58F0
	ldrb r0, [r0]
	subs r0, 0x1
	cmp r1, r0
	beq _080A5988
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_080A58E2:
	bl MoveMenuCursor
	strb r0, [r4]
	b _080A5988
	.align 2, 0
_080A58EC: .4byte gUnknown_03000700
_080A58F0: .4byte gUnknown_02038564
_080A58F4:
	ldrh r1, [r2, 0x2E]
	movs r2, 0x1
	ands r2, r1
	cmp r2, 0
	beq _080A5964
	ldr r1, _080A5948
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	strh r3, [r0, 0x1C]
	ldr r1, _080A594C
	ldr r0, _080A5950
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
	ldr r0, _080A5954
	bl sub_80A4DA4
	ldr r1, _080A5958
	ldr r0, _080A595C
	ldrb r2, [r0]
	ldr r0, _080A5960
	ldr r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	b _080A5988
	.align 2, 0
_080A5948: .4byte gTasks
_080A594C: .4byte gUnknown_03005D10
_080A5950: .4byte gUnknown_02038559
_080A5954: .4byte gBG1TilemapBuffer
_080A5958: .4byte gUnknown_083C1640
_080A595C: .4byte gUnknown_03000700
_080A5960: .4byte gUnknown_03000704
_080A5964:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A5988
	ldr r1, _080A5990
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r2, [r0, 0x1C]
	ldr r0, _080A5994
	bl sub_80A4DA4
	ldr r0, _080A5998
	ldr r1, [r0, 0x14]
	adds r0, r5, 0
	bl _call_via_r1
_080A5988:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5990: .4byte gTasks
_080A5994: .4byte gBG1TilemapBuffer
_080A5998: .4byte gUnknown_083C1640
	thumb_func_end sub_80A5888

	thumb_func_start sub_80A599C
sub_80A599C: @ 80A599C
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A59C4
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A59C8
	lsrs r2, r3, 16
	movs r4, 0
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	ldr r1, _080A59CC
	strb r4, [r1]
	bl sub_80A5AE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A59C4: .4byte gTasks
_080A59C8: .4byte sub_805469C
_080A59CC: .4byte gUnknown_03005CE0
	thumb_func_end sub_80A599C

	thumb_func_start sub_80A59D0
sub_80A59D0: @ 80A59D0
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080A5A3C
	movs r0, 0
	strb r0, [r1]
	ldr r7, _080A5A40
	ldrb r0, [r7]
	cmp r0, 0x5
	bne _080A59E8
	movs r0, 0x1
	strb r0, [r1]
_080A59E8:
	ldr r1, _080A5A44
	lsls r4, r5, 2
	adds r0, r4, r5
	lsls r0, 3
	adds r6, r0, r1
	ldr r3, _080A5A48
	ldr r2, _080A5A4C
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	adds r1, 0x1
	strh r1, [r6, 0x1C]
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r2, [r0]
	adds r0, r5, 0
	adds r1, r2, 0
	bl sub_80A48E8
	bl sub_80A73FC
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5A54
	ldrb r0, [r7]
	cmp r0, 0x5
	beq _080A5A54
	bl sub_80A57C4
	ldr r0, _080A5A50
	str r0, [r6]
	b _080A5A9C
	.align 2, 0
_080A5A3C: .4byte gUnknown_03000700
_080A5A40: .4byte gUnknown_03000701
_080A5A44: .4byte gTasks
_080A5A48: .4byte gUnknown_03005D10
_080A5A4C: .4byte gUnknown_02038559
_080A5A50: .4byte sub_80A5888
_080A5A54:
	ldr r0, _080A5A7C
	bl sub_80A4BF0
	ldr r0, _080A5A80
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x3
	bne _080A5A6E
	ldr r0, _080A5A84
	ldrb r0, [r0]
	cmp r0, 0x5
	bne _080A5A90
_080A5A6E:
	ldr r0, _080A5A88
	adds r1, r4, r5
	lsls r1, 3
	adds r1, r0
	ldr r0, _080A5A8C
	b _080A5A9A
	.align 2, 0
_080A5A7C: .4byte gBG1TilemapBuffer
_080A5A80: .4byte gUnknown_02038559
_080A5A84: .4byte gUnknown_03000701
_080A5A88: .4byte gTasks
_080A5A8C: .4byte sub_80A5414
_080A5A90:
	ldr r0, _080A5AA4
	adds r1, r4, r5
	lsls r1, 3
	adds r1, r0
	ldr r0, _080A5AA8
_080A5A9A:
	str r0, [r1]
_080A5A9C:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A5AA4: .4byte gTasks
_080A5AA8: .4byte sub_80A5600
	thumb_func_end sub_80A59D0

	thumb_func_start sub_80A5AAC
sub_80A5AAC: @ 80A5AAC
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r1, _080A5ADC
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A5AE0
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5ADC: .4byte gTasks
_080A5AE0: .4byte sub_80A5B00
	thumb_func_end sub_80A5AAC

	thumb_func_start sub_80A5AE4
sub_80A5AE4: @ 80A5AE4
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_80A5AAC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5AE4

	thumb_func_start sub_80A5B00
sub_80A5B00: @ 80A5B00
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	ldr r1, _080A5B38
	adds r2, r0, r1
	ldr r0, _080A5B3C
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080A5B32
	ldrh r0, [r2, 0x10]
	lsls r0, 16
	ldrh r1, [r2, 0x12]
	orrs r0, r1
	bl SetMainCallback2
	bl gpu_pal_allocator_reset__manage_upper_four
	adds r0, r4, 0
	bl DestroyTask
_080A5B32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5B38: .4byte gUnknown_03004B28
_080A5B3C: .4byte gPaletteFade
	thumb_func_end sub_80A5B00

	thumb_func_start sub_80A5B40
sub_80A5B40: @ 80A5B40
	push {lr}
_080A5B42:
	bl sub_80A317C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5B68
	bl ResetTasks
	ldr r0, _080A5B60
	movs r1, 0
	bl CreateTask
	ldr r1, _080A5B64
	strb r0, [r1]
	b _080A5B74
	.align 2, 0
_080A5B60: .4byte sub_80A50C8
_080A5B64: .4byte gUnknown_02038563
_080A5B68:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5B42
_080A5B74:
	pop {r0}
	bx r0
	thumb_func_end sub_80A5B40

	thumb_func_start sub_80A5B78
sub_80A5B78: @ 80A5B78
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r5, _080A5BB0
	ldrh r0, [r5]
	bl itemid_get_overworld_function
	cmp r0, 0
	beq _080A5BF2
	movs r0, 0x5
	bl PlaySE
	bl CalculatePlayerPartyCount
	lsls r0, 24
	cmp r0, 0
	bne _080A5BB4
	ldrh r0, [r5]
	bl itemid_get_type
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5BB4
	adds r0, r4, 0
	bl sub_80A5BF8
	b _080A5BF2
	.align 2, 0
_080A5BB0: .4byte word_203855E
_080A5BB4:
	ldr r1, _080A5BE0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0xC]
	ldr r0, _080A5BE4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x3
	beq _080A5BEC
	ldr r0, _080A5BE8
	ldrh r0, [r0]
	bl itemid_get_overworld_function
	adds r1, r0, 0
	adds r0, r4, 0
	bl _call_via_r1
	b _080A5BF2
	.align 2, 0
_080A5BE0: .4byte gTasks
_080A5BE4: .4byte gUnknown_02038559
_080A5BE8: .4byte word_203855E
_080A5BEC:
	adds r0, r4, 0
	bl sub_80C9C7C
_080A5BF2:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5B78

	thumb_func_start sub_80A5BF8
sub_80A5BF8: @ 80A5BF8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_80A73FC
	bl sub_80A7590
	ldr r1, _080A5C1C
	ldr r2, _080A5C20
	adds r0, r4, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5C1C: .4byte gOtherText_NoPokemon
_080A5C20: .4byte sub_80A5C48
	thumb_func_end sub_80A5BF8

	thumb_func_start sub_80A5C24
sub_80A5C24: @ 80A5C24
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5C24

	thumb_func_start sub_80A5C48
sub_80A5C48: @ 80A5C48
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080A5C90
	movs r1, 0x1F
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x1F
	bl sub_80A36B8
	movs r0, 0x7
	movs r1, 0x7
	movs r2, 0xD
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r1, _080A5C94
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A5C98
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5C90: .4byte gBG1TilemapBuffer
_080A5C94: .4byte gTasks
_080A5C98: .4byte sub_80A5C24
	thumb_func_end sub_80A5C48

	thumb_func_start sub_80A5C9C
sub_80A5C9C: @ 80A5C9C
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	movs r1, 0xD
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	adds r0, r4, 0
	bl DestroyTask
	bl sub_8064E2C
	bl ScriptContext2_Disable
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5C9C

	thumb_func_start sub_80A5CC4
sub_80A5CC4: @ 80A5CC4
	push {lr}
	bl pal_fill_black
	ldr r0, _080A5CD8
	movs r1, 0x8
	bl CreateTask
	pop {r0}
	bx r0
	.align 2, 0
_080A5CD8: .4byte Task_CallItemUseOnFieldCallback
	thumb_func_end sub_80A5CC4

	thumb_func_start Task_CallItemUseOnFieldCallback
Task_CallItemUseOnFieldCallback: @ 80A5CDC
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl sub_807D770
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5CF8
	ldr r0, _080A5D00
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
_080A5CF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5D00: .4byte gUnknown_03005D00
	thumb_func_end Task_CallItemUseOnFieldCallback

	thumb_func_start sub_80A5D04
sub_80A5D04: @ 80A5D04
	push {lr}
_080A5D06:
	bl sub_80A317C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5D28
	ldr r0, _080A5D20
	movs r1, 0
	bl CreateTask
	ldr r1, _080A5D24
	strb r0, [r1]
	b _080A5D34
	.align 2, 0
_080A5D20: .4byte sub_80A50C8
_080A5D24: .4byte gUnknown_02038563
_080A5D28:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A5D06
_080A5D34:
	pop {r0}
	bx r0
	thumb_func_end sub_80A5D04

	thumb_func_start sub_80A5D38
sub_80A5D38: @ 80A5D38
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080A5D70
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0xA]
	ldr r0, _080A5D74
	bl sub_80A4DA4
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5D70: .4byte gTasks
_080A5D74: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A5D38

	thumb_func_start sub_80A5D78
sub_80A5D78: @ 80A5D78
	push {lr}
	sub sp, 0x4
	ldr r0, _080A5D9C
	movs r1, 0x4
	str r1, [sp]
	movs r1, 0x8
	movs r2, 0x8
	movs r3, 0x5
	bl sub_80A4008
	movs r0, 0x7
	movs r1, 0x7
	movs r2, 0x1
	bl DisplayYesNoMenu
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080A5D9C: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A5D78

	thumb_func_start sub_80A5DA0
sub_80A5DA0: @ 80A5DA0
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	ldr r1, _080A5DC4
	bl itemid_copy_name
	cmp r4, 0x63
	bls _080A5DCC
	ldr r0, _080A5DC8
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	b _080A5DD8
	.align 2, 0
_080A5DC4: .4byte gStringVar1
_080A5DC8: .4byte gStringVar2
_080A5DCC:
	ldr r0, _080A5DF0
	adds r1, r4, 0
	movs r2, 0
	movs r3, 0x2
	bl ConvertIntToDecimalStringN
_080A5DD8:
	ldr r0, _080A5DF4
	bl sub_80A4DA4
	movs r0, 0x5
	bl sub_80A7528
	bl sub_80A5D78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5DF0: .4byte gStringVar2
_080A5DF4: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A5DA0

	thumb_func_start sub_80A5DF8
sub_80A5DF8: @ 80A5DF8
	push {lr}
	ldr r0, _080A5E18
	bl sub_80A4DA4
	movs r0, 0x7
	movs r1, 0x6
	movs r2, 0xB
	movs r3, 0xD
	bl MenuZeroFillWindowRect
	movs r0, 0x4
	bl sub_80A7528
	pop {r0}
	bx r0
	.align 2, 0
_080A5E18: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A5DF8

	thumb_func_start sub_80A5E1C
sub_80A5E1C: @ 80A5E1C
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A5E58
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A5E36
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A5E50
_080A5E36:
	ldr r0, _080A5E5C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	movs r0, 0
	strh r0, [r1, 0x1C]
	adds r0, r4, 0
	bl sub_80A41D4
	adds r0, r4, 0
	bl sub_80A5D38
_080A5E50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5E58: .4byte gMain
_080A5E5C: .4byte gTasks
	thumb_func_end sub_80A5E1C

	thumb_func_start sub_80A5E60
sub_80A5E60: @ 80A5E60
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_80A5DF8
	adds r0, r4, 0
	bl sub_80A3D5C
	ldr r1, _080A5E88
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A5E8C
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5E88: .4byte gTasks
_080A5E8C: .4byte sub_80A5E1C
	thumb_func_end sub_80A5E60

	thumb_func_start sub_80A5E90
sub_80A5E90: @ 80A5E90
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	bl sub_80A5D38
	pop {r0}
	bx r0
	thumb_func_end sub_80A5E90

	thumb_func_start sub_80A5EA0
sub_80A5EA0: @ 80A5EA0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	adds r0, r4, 0
	bl sub_80A5350
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A5F0C
	ldr r0, _080A5EE8
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A5EF8
	movs r0, 0x5
	bl PlaySE
	ldr r0, _080A5EEC
	ldrh r0, [r0]
	ldr r2, _080A5EF0
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r2
	ldrh r1, [r1, 0xA]
	bl sub_80A5DA0
	ldr r1, _080A5EF4
	adds r0, r4, 0
	bl sub_80F914C
	b _080A5F0C
	.align 2, 0
_080A5EE8: .4byte gMain
_080A5EEC: .4byte word_203855E
_080A5EF0: .4byte gTasks
_080A5EF4: .4byte gUnknown_083C16F4
_080A5EF8:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A5F0C
	movs r0, 0x5
	bl PlaySE
	adds r0, r5, 0
	bl sub_80A5D38
_080A5F0C:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5EA0

	thumb_func_start sub_80A5F14
sub_80A5F14: @ 80A5F14
	push {r4,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	movs r0, 0x5
	bl PlaySE
	ldr r1, _080A5F58
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A5F5C
	str r1, [r0]
	movs r0, 0x3
	bl sub_80A7528
	ldr r0, _080A5F60
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x3
	bne _080A5F64
	movs r0, 0x3
	str r0, [sp]
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0x6
	movs r2, 0x9
	movs r3, 0x7
	bl sub_80A4DD8
	b _080A5F78
	.align 2, 0
_080A5F58: .4byte gTasks
_080A5F5C: .4byte sub_80A5EA0
_080A5F60: .4byte gUnknown_02038559
_080A5F64:
	movs r0, 0x3
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0x7
	movs r2, 0x9
	movs r3, 0x6
	bl sub_80A4DD8
_080A5F78:
	add sp, 0x8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5F14

	thumb_func_start sub_80A5F80
sub_80A5F80: @ 80A5F80
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5F80

	thumb_func_start sub_80A5FAC
sub_80A5FAC: @ 80A5FAC
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	movs r0, 0x5
	bl PlaySE
	ldr r0, _080A5FD0
	ldr r1, _080A5FD4
	adds r4, r0, r1
	ldr r5, _080A5FD8
	ldrh r0, [r4]
	ldrh r1, [r5]
	cmp r0, r1
	bne _080A5FDC
	bl sub_80A40D0
	movs r0, 0
	b _080A5FE2
	.align 2, 0
_080A5FD0: .4byte gSaveBlock1
_080A5FD4: .4byte 0x00000496
_080A5FD8: .4byte word_203855E
_080A5FDC:
	bl sub_80A413C
	ldrh r0, [r5]
_080A5FE2:
	strh r0, [r4]
	movs r0, 0
	bl sub_80A7528
	adds r0, r6, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r6, 0
	bl sub_80A37C0
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A5FAC

	thumb_func_start sub_80A6000
sub_80A6000: @ 80A6000
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6000

	thumb_func_start sub_80A6024
sub_80A6024: @ 80A6024
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A606C
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A6062
	ldr r0, _080A6070
	movs r1, 0x1F
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x1F
	bl sub_80A36B8
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r1, _080A6074
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A6078
	str r1, [r0]
_080A6062:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A606C: .4byte gMain
_080A6070: .4byte gBG1TilemapBuffer
_080A6074: .4byte gTasks
_080A6078: .4byte sub_80A6000
	thumb_func_end sub_80A6024

	thumb_func_start DisplayCannotDismountBikeMessage
DisplayCannotDismountBikeMessage: @ 80A607C
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_80A73FC
	ldr r0, _080A60B4
	ldrh r0, [r0]
	ldr r1, _080A60B8
	bl itemid_copy_name
	ldr r5, _080A60BC
	ldr r1, _080A60C0
	adds r0, r5, 0
	bl StringExpandPlaceholders
	bl sub_80A7590
	ldr r2, _080A60C4
	adds r0, r4, 0
	adds r1, r5, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A60B4: .4byte word_203855E
_080A60B8: .4byte gStringVar1
_080A60BC: .4byte gStringVar4
_080A60C0: .4byte gOtherText_CantBeHeld
_080A60C4: .4byte sub_80A6024
	thumb_func_end DisplayCannotDismountBikeMessage

	thumb_func_start ItemMenu_Give
ItemMenu_Give: @ 80A60C8
	push {r4-r6,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	adds r6, r4, 0
	movs r0, 0x5
	bl PlaySE
	ldr r5, _080A60FC
	ldrh r0, [r5]
	bl sub_80F931C
	lsls r0, 24
	cmp r0, 0
	bne _080A6108
	bl sub_80A73FC
	bl sub_80A7590
	ldr r1, _080A6100
	ldr r2, _080A6104
	adds r0, r4, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	b _080A616E
	.align 2, 0
_080A60FC: .4byte word_203855E
_080A6100: .4byte gOtherText_CantWriteMail
_080A6104: .4byte sub_80A6024
_080A6108:
	ldrh r0, [r5]
	bl itemid_is_unique
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0
	bne _080A6168
	bl CalculatePlayerPartyCount
	lsls r0, 24
	cmp r0, 0
	bne _080A6128
	adds r0, r4, 0
	bl sub_80A5BF8
	b _080A616E
_080A6128:
	ldr r1, _080A6158
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r2, _080A615C
	lsrs r1, r2, 16
	strh r1, [r0, 0x18]
	strh r2, [r0, 0x1A]
	ldr r1, _080A6160
	str r1, [r0]
	ldr r1, _080A6164
	movs r0, 0x1
	strb r0, [r1]
	movs r0, 0x1
	negs r0, r0
	str r5, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	b _080A616E
	.align 2, 0
_080A6158: .4byte gTasks
_080A615C: .4byte sub_808B020
_080A6160: .4byte sub_80A5B00
_080A6164: .4byte gUnknown_02038561
_080A6168:
	adds r0, r6, 0
	bl DisplayCannotDismountBikeMessage
_080A616E:
	add sp, 0x4
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end ItemMenu_Give

	thumb_func_start sub_80A6178
sub_80A6178: @ 80A6178
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80A5AE4
	ldr r1, _080A61A0
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r2, _080A61A4
	lsrs r1, r2, 16
	strh r1, [r0, 0x18]
	strh r2, [r0, 0x1A]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A61A0: .4byte gTasks
_080A61A4: .4byte sub_814625C
	thumb_func_end sub_80A6178

	thumb_func_start sub_80A61A8
sub_80A61A8: @ 80A61A8
	push {lr}
	bl sub_80A34B4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A61C2
	ldr r0, _080A61C8
	movs r1, 0
	bl CreateTask
	ldr r1, _080A61CC
	strb r0, [r1]
_080A61C2:
	pop {r0}
	bx r0
	.align 2, 0
_080A61C8: .4byte sub_80A50C8
_080A61CC: .4byte gUnknown_02038563
	thumb_func_end sub_80A61A8

	thumb_func_start sub_80A61D0
sub_80A61D0: @ 80A61D0
	push {lr}
	ldr r0, _080A61E4
	movs r1, 0x2
	strb r1, [r0]
	ldr r0, _080A61E8
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A61E4: .4byte gUnknown_03000701
_080A61E8: .4byte sub_80A61A8
	thumb_func_end sub_80A61D0

	thumb_func_start sub_80A61EC
sub_80A61EC: @ 80A61EC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A620C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A6210
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AE4
	pop {r0}
	bx r0
	.align 2, 0
_080A620C: .4byte gTasks
_080A6210: .4byte sub_808A3F8
	thumb_func_end sub_80A61EC

	thumb_func_start sub_80A6214
sub_80A6214: @ 80A6214
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _080A6244
	ldrb r0, [r0]
	adds r0, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r4, _080A6248
	ldrh r0, [r4]
	bl sub_80F931C
	lsls r0, 24
	cmp r0, 0
	bne _080A6254
	bl sub_80A73FC
	bl sub_80A7590
	ldr r1, _080A624C
	ldr r2, _080A6250
	adds r0, r5, 0
	b _080A6280
	.align 2, 0
_080A6244: .4byte gUnknown_02038559
_080A6248: .4byte word_203855E
_080A624C: .4byte gOtherText_CantWriteMail
_080A6250: .4byte sub_80A6024
_080A6254:
	ldrh r0, [r4]
	bl sub_80F92F4
	lsls r0, 24
	cmp r0, 0
	bne _080A6298
	bl sub_80A73FC
	ldrh r0, [r4]
	ldr r1, _080A6288
	bl itemid_copy_name
	ldr r4, _080A628C
	ldr r1, _080A6290
	adds r0, r4, 0
	bl StringExpandPlaceholders
	bl sub_80A7590
	ldr r2, _080A6294
	adds r0, r5, 0
	adds r1, r4, 0
_080A6280:
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	b _080A62D2
	.align 2, 0
_080A6288: .4byte gStringVar1
_080A628C: .4byte gStringVar4
_080A6290: .4byte gOtherText_CantBeHeldHere
_080A6294: .4byte sub_80A6024
_080A6298:
	cmp r6, 0x5
	beq _080A62CC
	ldrh r0, [r4]
	bl itemid_is_unique
	lsls r0, 24
	cmp r0, 0
	bne _080A62CC
	ldr r1, _080A62C4
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	ldr r2, _080A62C8
	lsrs r1, r2, 16
	strh r1, [r0, 0x18]
	strh r2, [r0, 0x1A]
	adds r0, r5, 0
	bl sub_80A5AAC
	b _080A62D2
	.align 2, 0
_080A62C4: .4byte gTasks
_080A62C8: .4byte sub_808A3F8
_080A62CC:
	adds r0, r5, 0
	bl DisplayCannotDismountBikeMessage
_080A62D2:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6214

	thumb_func_start sub_80A62D8
sub_80A62D8: @ 80A62D8
	push {lr}
	bl sub_80A34B4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A62F2
	ldr r0, _080A62F8
	movs r1, 0
	bl CreateTask
	ldr r1, _080A62FC
	strb r0, [r1]
_080A62F2:
	pop {r0}
	bx r0
	.align 2, 0
_080A62F8: .4byte sub_80A50C8
_080A62FC: .4byte gUnknown_02038563
	thumb_func_end sub_80A62D8

	thumb_func_start sub_80A6300
sub_80A6300: @ 80A6300
	push {lr}
	ldr r0, _080A6314
	movs r1, 0x3
	strb r1, [r0]
	ldr r0, _080A6318
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A6314: .4byte gUnknown_03000701
_080A6318: .4byte sub_80A62D8
	thumb_func_end sub_80A6300

	thumb_func_start sub_80A631C
sub_80A631C: @ 80A631C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A6344
	ldr r1, _080A6348
	str r1, [r2]
	ldr r2, _080A634C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A6350
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AE4
	pop {r0}
	bx r0
	.align 2, 0
_080A6344: .4byte gUnknown_0300485C
_080A6348: .4byte sub_80B3050
_080A634C: .4byte gTasks
_080A6350: .4byte c2_exit_to_overworld_2_switch
	thumb_func_end sub_80A631C

	thumb_func_start sub_80A6354
sub_80A6354: @ 80A6354
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	bl sub_80A7590
	ldr r0, _080A63C4
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 3
	adds r2, r0
	ldr r4, _080A63C8
	ldr r3, _080A63CC
	movs r0, 0
	ldrsb r0, [r3, r0]
	lsls r0, 2
	adds r0, r4
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	adds r1, 0x1
	strh r1, [r2, 0x1C]
	movs r0, 0
	ldrsb r0, [r3, r0]
	lsls r0, 2
	adds r0, r4
	ldrb r2, [r0]
	adds r0, r5, 0
	adds r1, r2, 0
	bl sub_80A48E8
	bl sub_80A73FC
	ldr r4, _080A63D0
	ldrh r0, [r4]
	ldr r1, _080A63D4
	bl itemid_copy_name
	ldrh r0, [r4]
	bl itemid_get_market_price
	lsls r0, 16
	cmp r0, 0
	bne _080A63E4
	ldr r4, _080A63D8
	ldr r1, _080A63DC
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r2, _080A63E0
	adds r0, r5, 0
	adds r1, r4, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	b _080A63FA
	.align 2, 0
_080A63C4: .4byte gTasks
_080A63C8: .4byte gUnknown_03005D10
_080A63CC: .4byte gUnknown_02038559
_080A63D0: .4byte word_203855E
_080A63D4: .4byte gStringVar2
_080A63D8: .4byte gStringVar4
_080A63DC: .4byte gOtherText_CantBuyThat
_080A63E0: .4byte sub_80A6444
_080A63E4:
	ldr r4, _080A6400
	ldr r1, _080A6404
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r2, _080A6408
	adds r0, r5, 0
	adds r1, r4, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
_080A63FA:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A6400: .4byte gStringVar4
_080A6404: .4byte gOtherText_HowManyToSell
_080A6408: .4byte sub_80A648C
	thumb_func_end sub_80A6354

	thumb_func_start sub_80A640C
sub_80A640C: @ 80A640C
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080A6440
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x1C]
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6440: .4byte gTasks
	thumb_func_end sub_80A640C

	thumb_func_start sub_80A6444
sub_80A6444: @ 80A6444
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080A6480
	movs r1, 0x1F
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x1F
	bl sub_80A36B8
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r1, _080A6484
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A6488
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6480: .4byte gBG1TilemapBuffer
_080A6484: .4byte gTasks
_080A6488: .4byte sub_80A640C
	thumb_func_end sub_80A6444

	thumb_func_start sub_80A648C
sub_80A648C: @ 80A648C
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A64E8
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	adds r4, r1
	ldr r0, _080A64EC
	str r0, [r4]
	ldr r0, _080A64F0
	movs r5, 0x2
	str r5, [sp]
	movs r1, 0x1
	movs r2, 0xB
	movs r3, 0xC
	bl sub_80A4008
	movs r0, 0
	movs r1, 0xA
	movs r2, 0xD
	movs r3, 0xD
	bl MenuDrawTextWindow
	movs r0, 0x1
	strh r0, [r4, 0xA]
	strh r0, [r4, 0xC]
	movs r0, 0xB
	strh r0, [r4, 0xE]
	ldr r0, _080A64F4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0x3
	bne _080A64F8
	movs r0, 0x3
	str r0, [sp]
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0xB
	bl sub_80A418C
	b _080A6506
	.align 2, 0
_080A64E8: .4byte gTasks
_080A64EC: .4byte Task_BuyHowManyDialogueHandleInput
_080A64F0: .4byte gBG1TilemapBuffer
_080A64F4: .4byte gUnknown_02038559
_080A64F8:
	str r5, [sp]
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0xB
	bl sub_80A418C
_080A6506:
	ldr r0, _080A651C
	ldrh r0, [r0]
	movs r1, 0x1
	bl BuyMenuDisplayMessage
	bl sub_80A683C
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A651C: .4byte word_203855E
	thumb_func_end sub_80A648C

	thumb_func_start sub_80A6520
sub_80A6520: @ 80A6520
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A6544
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A653E
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl BuyMenuPrintItemQuantityAndPrice
_080A653E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6544: .4byte gMain
	thumb_func_end sub_80A6520

	thumb_func_start sub_80A6548
sub_80A6548: @ 80A6548
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_80A48F8
	ldr r1, _080A656C
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A6570
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A656C: .4byte gTasks
_080A6570: .4byte sub_80A6520
	thumb_func_end sub_80A6548

	thumb_func_start sub_80A6574
sub_80A6574: @ 80A6574
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	movs r0, 0x5F
	bl PlaySE
	ldr r0, _080A65A0
	ldrh r0, [r0]
	ldr r1, _080A65A4
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r1
	ldrb r1, [r4, 0xA]
	bl sub_80A6870
	ldr r0, _080A65A8
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A65A0: .4byte word_203855E
_080A65A4: .4byte gTasks
_080A65A8: .4byte sub_80A6548
	thumb_func_end sub_80A6574

	thumb_func_start sub_80A65AC
sub_80A65AC: @ 80A65AC
	push {r4,r5,lr}
	sub sp, 0x4
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	movs r0, 0x7
	movs r1, 0x6
	movs r2, 0xD
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	ldr r0, _080A6600
	movs r1, 0x6
	str r1, [sp]
	movs r1, 0x7
	movs r2, 0x6
	movs r3, 0x6
	bl sub_80A36B8
	ldr r0, _080A6604
	ldrh r0, [r0]
	ldr r1, _080A6608
	bl itemid_copy_name
	ldr r4, _080A660C
	ldr r1, _080A6610
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r2, _080A6614
	adds r0, r5, 0
	adds r1, r4, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	adds r0, r5, 0
	bl sub_80A3D5C
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A6600: .4byte gBG1TilemapBuffer
_080A6604: .4byte word_203855E
_080A6608: .4byte gStringVar2
_080A660C: .4byte gStringVar4
_080A6610: .4byte gOtherText_SoldItem
_080A6614: .4byte sub_80A6574
	thumb_func_end sub_80A65AC

	thumb_func_start sub_80A6618
sub_80A6618: @ 80A6618
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x7
	movs r1, 0x6
	movs r2, 0xD
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	ldr r0, _080A664C
	movs r1, 0x6
	str r1, [sp]
	movs r1, 0x7
	movs r2, 0x6
	movs r3, 0x6
	bl sub_80A36B8
	adds r0, r4, 0
	bl BuyMenuPrintItemQuantityAndPrice
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A664C: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A6618

	thumb_func_start sub_80A6650
sub_80A6650: @ 80A6650
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_80A5D78
	ldr r1, _080A666C
	adds r0, r4, 0
	bl sub_80F914C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A666C: .4byte gUnknown_083C16FC
	thumb_func_end sub_80A6650

	thumb_func_start Task_BuyHowManyDialogueHandleInput
Task_BuyHowManyDialogueHandleInput: @ 80A6670
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	adds r4, r5, 0
	adds r0, r5, 0
	bl sub_80A5350
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A66B4
	movs r0, 0x6
	movs r1, 0xB
	movs r2, 0xC
	movs r3, 0xB
	bl MenuZeroFillWindowRect
	ldr r0, _080A66AC
	ldrh r0, [r0]
	ldr r2, _080A66B0
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r2
	ldrh r1, [r1, 0xA]
	bl BuyMenuDisplayMessage
	b _080A6758
	.align 2, 0
_080A66AC: .4byte word_203855E
_080A66B0: .4byte gTasks
_080A66B4:
	ldr r0, _080A6724
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A6744
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	movs r1, 0xA
	movs r2, 0xD
	movs r3, 0xD
	bl MenuZeroFillWindowRect
	ldr r0, _080A6728
	movs r1, 0x3
	str r1, [sp]
	movs r1, 0
	movs r2, 0xA
	movs r3, 0xD
	bl sub_80A36B8
	ldr r4, _080A672C
	ldr r0, _080A6730
	ldrh r0, [r0]
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	ldr r2, _080A6734
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r2
	movs r2, 0xA
	ldrsh r1, [r1, r2]
	muls r1, r0
	adds r0, r4, 0
	movs r2, 0
	movs r3, 0x6
	bl ConvertIntToDecimalStringN
	ldr r4, _080A6738
	ldr r1, _080A673C
	adds r0, r4, 0
	bl StringExpandPlaceholders
	ldr r2, _080A6740
	adds r0, r5, 0
	adds r1, r4, 0
	movs r3, 0x1
	bl DisplayCannotUseItemMessage
	b _080A6758
	.align 2, 0
_080A6724: .4byte gMain
_080A6728: .4byte gBG1TilemapBuffer
_080A672C: .4byte gStringVar1
_080A6730: .4byte word_203855E
_080A6734: .4byte gTasks
_080A6738: .4byte gStringVar4
_080A673C: .4byte gOtherText_CanPay
_080A6740: .4byte sub_80A6650
_080A6744:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A6758
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl BuyMenuPrintItemQuantityAndPrice
_080A6758:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end Task_BuyHowManyDialogueHandleInput

	thumb_func_start sub_80A6760
sub_80A6760: @ 80A6760
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080A6794
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x1C]
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6794: .4byte gTasks
	thumb_func_end sub_80A6760

	thumb_func_start BuyMenuPrintItemQuantityAndPrice
BuyMenuPrintItemQuantityAndPrice: @ 80A6798
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080A67E8
	movs r1, 0x1F
	str r1, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x1F
	bl sub_80A36B8
	movs r0, 0
	movs r1, 0
	bl RemoveMoneyLabelObject
	movs r0, 0
	movs r1, 0x4
	movs r2, 0xD
	movs r3, 0xD
	bl MenuZeroFillWindowRect
	movs r0, 0
	movs r1, 0xE
	movs r2, 0x1D
	movs r3, 0x13
	bl MenuZeroFillWindowRect
	ldr r1, _080A67EC
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A67F0
	str r1, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A67E8: .4byte gBG1TilemapBuffer
_080A67EC: .4byte gTasks
_080A67F0: .4byte sub_80A6760
	thumb_func_end BuyMenuPrintItemQuantityAndPrice

	thumb_func_start BuyMenuDisplayMessage
BuyMenuDisplayMessage: @ 80A67F4
	push {r4-r6,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	adds r0, r4, 0
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	muls r0, r5
	movs r1, 0x6
	movs r2, 0x6
	movs r3, 0xB
	bl sub_80B7A94
	ldr r6, _080A6838
	adds r0, r4, 0
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	adds r1, r0, 0
	muls r1, r5
	adds r0, r6, 0
	movs r2, 0
	movs r3, 0x6
	bl ConvertIntToDecimalStringN
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6838: .4byte gStringVar1
	thumb_func_end BuyMenuDisplayMessage

	thumb_func_start sub_80A683C
sub_80A683C: @ 80A683C
	push {lr}
	sub sp, 0x4
	ldr r0, _080A6868
	movs r1, 0x92
	lsls r1, 3
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0
	movs r2, 0
	bl sub_80B7C14
	ldr r0, _080A686C
	movs r1, 0x2
	str r1, [sp]
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0xC
	bl sub_80A4008
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080A6868: .4byte gSaveBlock1
_080A686C: .4byte gBG1TilemapBuffer
	thumb_func_end sub_80A683C

	thumb_func_start sub_80A6870
sub_80A6870: @ 80A6870
	push {r4,r5,lr}
	adds r4, r1, 0
	lsls r0, 16
	lsrs r0, 16
	lsls r4, 24
	lsrs r4, 24
	ldr r5, _080A68A0
	bl itemid_get_market_price
	lsls r0, 16
	lsrs r0, 17
	adds r1, r0, 0
	muls r1, r4
	adds r0, r5, 0
	bl sub_80B79B8
	ldr r0, [r5]
	movs r1, 0
	movs r2, 0
	bl sub_80B7BEC
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A68A0: .4byte gSaveBlock1 + 0x490
	thumb_func_end sub_80A6870

	thumb_func_start sub_80A68A4
sub_80A68A4: @ 80A68A4
	push {lr}
	bl sub_80A34B4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A68BE
	ldr r0, _080A68C4
	movs r1, 0
	bl CreateTask
	ldr r1, _080A68C8
	strb r0, [r1]
_080A68BE:
	pop {r0}
	bx r0
	.align 2, 0
_080A68C4: .4byte sub_80A50C8
_080A68C8: .4byte gUnknown_02038563
	thumb_func_end sub_80A68A4

	thumb_func_start sub_80A68CC
sub_80A68CC: @ 80A68CC
	push {lr}
	ldr r1, _080A68E4
	movs r0, 0x3
	strb r0, [r1]
	ldr r1, _080A68E8
	movs r0, 0x4
	strb r0, [r1]
	ldr r0, _080A68EC
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A68E4: .4byte gUnknown_02038559
_080A68E8: .4byte gUnknown_03000701
_080A68EC: .4byte sub_80A68A4
	thumb_func_end sub_80A68CC

	thumb_func_start sub_80A68F0
sub_80A68F0: @ 80A68F0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A6910
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A6914
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AE4
	pop {r0}
	bx r0
	.align 2, 0
_080A6910: .4byte gTasks
_080A6914: .4byte sub_80546B8
	thumb_func_end sub_80A68F0

	thumb_func_start sub_80A6918
sub_80A6918: @ 80A6918
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A6938
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A693C
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AAC
	pop {r0}
	bx r0
	.align 2, 0
_080A6938: .4byte gTasks
_080A693C: .4byte sub_80546B8
	thumb_func_end sub_80A6918

	thumb_func_start sub_80A6940
sub_80A6940: @ 80A6940
	push {lr}
_080A6942:
	bl sub_80A317C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6968
	ldr r0, _080A6960
	movs r1, 0
	bl CreateTask
	ldr r1, _080A6964
	strb r0, [r1]
	bl sub_80A699C
	b _080A6974
	.align 2, 0
_080A6960: .4byte sub_80A50C8
_080A6964: .4byte gUnknown_02038563
_080A6968:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6942
_080A6974:
	pop {r0}
	bx r0
	thumb_func_end sub_80A6940

	thumb_func_start sub_80A6978
sub_80A6978: @ 80A6978
	push {lr}
	ldr r1, _080A6990
	movs r0, 0x3
	strb r0, [r1]
	ldr r1, _080A6994
	movs r0, 0x5
	strb r0, [r1]
	ldr r0, _080A6998
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A6990: .4byte gUnknown_02038559
_080A6994: .4byte gUnknown_03000701
_080A6998: .4byte sub_80A6940
	thumb_func_end sub_80A6978

	thumb_func_start sub_80A699C
sub_80A699C: @ 80A699C
	ldr r1, _080A69AC
	ldr r0, _080A69B0
	str r0, [r1]
	ldr r1, _080A69B4
	movs r0, 0x4
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A69AC: .4byte gUnknown_03000704
_080A69B0: .4byte gUnknown_083C16B8
_080A69B4: .4byte gUnknown_02038564
	thumb_func_end sub_80A699C

	thumb_func_start sub_80A69B8
sub_80A69B8: @ 80A69B8
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A69D8
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A69DC
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AE4
	pop {r0}
	bx r0
	.align 2, 0
_080A69D8: .4byte gTasks
_080A69DC: .4byte sub_804E990
	thumb_func_end sub_80A69B8

	thumb_func_start sub_80A69E0
sub_80A69E0: @ 80A69E0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A6A00
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A6A04
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AAC
	pop {r0}
	bx r0
	.align 2, 0
_080A6A00: .4byte gTasks
_080A6A04: .4byte sub_804E990
	thumb_func_end sub_80A69E0

	thumb_func_start sub_80A6A08
sub_80A6A08: @ 80A6A08
	push {lr}
	bl sub_80A34B4
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6A22
	ldr r0, _080A6A28
	movs r1, 0
	bl CreateTask
	ldr r1, _080A6A2C
	strb r0, [r1]
_080A6A22:
	pop {r0}
	bx r0
	.align 2, 0
_080A6A28: .4byte sub_80A50C8
_080A6A2C: .4byte gUnknown_02038563
	thumb_func_end sub_80A6A08

	thumb_func_start sub_80A6A30
sub_80A6A30: @ 80A6A30
	push {lr}
	ldr r0, _080A6A44
	movs r1, 0x6
	strb r1, [r0]
	ldr r0, _080A6A48
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A6A44: .4byte gUnknown_03000701
_080A6A48: .4byte sub_80A6A08
	thumb_func_end sub_80A6A30

	thumb_func_start sub_80A6A4C
sub_80A6A4C: @ 80A6A4C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A6A74
	ldr r1, _080A6A78
	str r1, [r2]
	ldr r2, _080A6A7C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r3, _080A6A80
	lsrs r2, r3, 16
	strh r2, [r1, 0x18]
	strh r3, [r1, 0x1A]
	bl sub_80A5AE4
	pop {r0}
	bx r0
	.align 2, 0
_080A6A74: .4byte gUnknown_0300485C
_080A6A78: .4byte sub_813A0F8
_080A6A7C: .4byte gTasks
_080A6A80: .4byte c2_exit_to_overworld_2_switch
	thumb_func_end sub_80A6A4C

	thumb_func_start sub_80A6A84
sub_80A6A84: @ 80A6A84
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	ldr r6, _080A6AE8
	adds r0, r4, r6
	mov r8, r0
	ldr r0, _080A6AEC
	bl sub_80A4DA4
	ldr r0, _080A6AF0
	ldrh r0, [r0]
	ldr r1, _080A6AF4
	bl itemid_copy_name
	ldr r0, _080A6AF8
	mov r2, r8
	movs r3, 0x2
	ldrsh r1, [r2, r3]
	movs r2, 0
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	movs r0, 0x7
	movs r1, 0x6
	movs r2, 0xB
	movs r3, 0xD
	bl MenuZeroFillWindowRect
	movs r0, 0x7
	bl sub_80A7528
	adds r0, r5, 0
	bl sub_80A3D5C
	subs r6, 0x8
	adds r4, r6
	ldr r0, _080A6AFC
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6AE8: .4byte gUnknown_03004B28
_080A6AEC: .4byte gBG1TilemapBuffer
_080A6AF0: .4byte word_203855E
_080A6AF4: .4byte gStringVar1
_080A6AF8: .4byte gStringVar2
_080A6AFC: .4byte sub_80A5E1C
	thumb_func_end sub_80A6A84

	thumb_func_start sub_80A6B00
sub_80A6B00: @ 80A6B00
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A6B54
	ldrh r1, [r0, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A6B1A
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A6B4C
_080A6B1A:
	ldr r1, _080A6B58
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x1C]
	ldr r1, _080A6B5C
	ldr r0, _080A6B60
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_80A5D38
_080A6B4C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6B54: .4byte gMain
_080A6B58: .4byte gTasks
_080A6B5C: .4byte gUnknown_03005D10
_080A6B60: .4byte gUnknown_02038559
	thumb_func_end sub_80A6B00

	thumb_func_start sub_80A6B64
sub_80A6B64: @ 80A6B64
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r0, r4, 2
	adds r0, r4
	lsls r5, r0, 3
	ldr r6, _080A6B9C
	adds r7, r5, r6
	ldr r0, _080A6BA0
	mov r8, r0
	ldrh r0, [r0]
	bl itemid_is_unique
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _080A6BA8
	adds r0, r6, 0
	subs r0, 0x8
	adds r0, r5, r0
	ldr r1, _080A6BA4
	str r1, [r0]
	movs r0, 0x9
	bl sub_80A7528
	b _080A6BD2
	.align 2, 0
_080A6B9C: .4byte gUnknown_03004B28
_080A6BA0: .4byte word_203855E
_080A6BA4: .4byte sub_80A6B00
_080A6BA8:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r7, 0x2]
	bl sub_80A9760
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6BC2
	adds r0, r4, 0
	bl sub_80A6A84
	b _080A6BD2
_080A6BC2:
	adds r0, r6, 0
	subs r0, 0x8
	adds r0, r5, r0
	ldr r1, _080A6BDC
	str r1, [r0]
	movs r0, 0x8
	bl sub_80A7528
_080A6BD2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6BDC: .4byte sub_80A6B00
	thumb_func_end sub_80A6B64

	thumb_func_start sub_80A6BE0
sub_80A6BE0: @ 80A6BE0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	adds r0, r4, 0
	bl sub_80A5350
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A6C58
	ldr r0, _080A6C18
	ldrh r1, [r0, 0x2E]
	movs r2, 0x1
	ands r2, r1
	cmp r2, 0
	beq _080A6C20
	movs r0, 0x5
	bl PlaySE
	ldr r0, _080A6C1C
	bl sub_80A4DA4
	adds r0, r4, 0
	bl sub_80A6B64
	b _080A6C58
	.align 2, 0
_080A6C18: .4byte gMain
_080A6C1C: .4byte gBG1TilemapBuffer
_080A6C20:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A6C58
	ldr r1, _080A6C60
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r2, [r0, 0x1C]
	ldr r1, _080A6C64
	ldr r0, _080A6C68
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r5, 0
	adds r1, r2, 0
	bl sub_80A48E8
	movs r0, 0x5
	bl PlaySE
	adds r0, r5, 0
	bl sub_80A5D38
_080A6C58:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A6C60: .4byte gTasks
_080A6C64: .4byte gUnknown_03005D10
_080A6C68: .4byte gUnknown_02038559
	thumb_func_end sub_80A6BE0

	thumb_func_start sub_80A6C6C
sub_80A6C6C: @ 80A6C6C
	push {r4-r6,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080A6CE4
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r5, r0, r1
	ldr r2, _080A6CE8
	ldr r6, _080A6CEC
	movs r0, 0
	ldrsb r0, [r6, r0]
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	adds r1, 0x1
	strh r1, [r5, 0x1C]
	movs r0, 0
	ldrsb r0, [r6, r0]
	lsls r0, 2
	adds r0, r2
	ldrb r2, [r0]
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
	bl sub_80A73FC
	movs r0, 0x5
	bl PlaySE
	bl sub_80A7590
	movs r0, 0
	ldrsb r0, [r6, r0]
	cmp r0, 0x4
	beq _080A6D0A
	ldr r0, _080A6CF0
	str r0, [r5]
	movs r0, 0x6
	bl sub_80A7528
	movs r0, 0
	ldrsb r0, [r6, r0]
	cmp r0, 0x3
	bne _080A6CF4
	movs r0, 0x3
	str r0, [sp]
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0x6
	movs r2, 0x9
	movs r3, 0x7
	bl sub_80A4DD8
	b _080A6D14
	.align 2, 0
_080A6CE4: .4byte gTasks
_080A6CE8: .4byte gUnknown_03005D10
_080A6CEC: .4byte gUnknown_02038559
_080A6CF0: .4byte sub_80A6BE0
_080A6CF4:
	movs r0, 0x3
	str r0, [sp]
	movs r0, 0x2
	str r0, [sp, 0x4]
	adds r0, r4, 0
	movs r1, 0x7
	movs r2, 0x9
	movs r3, 0x6
	bl sub_80A4DD8
	b _080A6D14
_080A6D0A:
	movs r0, 0x1
	strh r0, [r5, 0xA]
	adds r0, r4, 0
	bl sub_80A6B64
_080A6D14:
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A6C6C

	thumb_func_start sub_80A6D1C
sub_80A6D1C: @ 80A6D1C
	push {r4,r5,lr}
	bl HideMapNamePopUpWindow
	ldr r0, _080A6D70
	ldr r1, _080A6D74
	adds r4, r0, r1
	ldrh r0, [r4]
	cmp r0, 0
	beq _080A6D84
	movs r1, 0x1
	bl sub_80A92D4
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x1
	bne _080A6D80
	bl ScriptContext2_Enable
	bl player_bitmagic
	bl sub_80594C0
	bl sub_80597F4
	ldr r1, _080A6D78
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4]
	bl itemid_get_overworld_function
	movs r1, 0x8
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A6D7C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r5, [r1, 0xC]
	b _080A6D8A
	.align 2, 0
_080A6D70: .4byte gSaveBlock1
_080A6D74: .4byte 0x00000496
_080A6D78: .4byte word_203855E
_080A6D7C: .4byte gTasks
_080A6D80:
	movs r0, 0
	strh r0, [r4]
_080A6D84:
	ldr r0, _080A6D94
	bl ScriptContext1_SetupScript
_080A6D8A:
	movs r0, 0x1
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A6D94: .4byte Event_NoRegisteredItem
	thumb_func_end sub_80A6D1C

	thumb_func_start sub_80A6D98
sub_80A6D98: @ 80A6D98
	push {lr}
_080A6D9A:
	bl sub_80A317C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6DBC
	ldr r0, _080A6DB4
	movs r1, 0
	bl CreateTask
	ldr r1, _080A6DB8
	strb r0, [r1]
	b _080A6DC8
	.align 2, 0
_080A6DB4: .4byte sub_80A50C8
_080A6DB8: .4byte gUnknown_02038563
_080A6DBC:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A6D9A
_080A6DC8:
	pop {r0}
	bx r0
	thumb_func_end sub_80A6D98

	thumb_func_start sub_80A6DCC
sub_80A6DCC: @ 80A6DCC
	push {lr}
	ldr r1, _080A6DE4
	movs r0, 0
	strb r0, [r1]
	ldr r1, _080A6DE8
	movs r0, 0x1
	strb r0, [r1]
	ldr r0, _080A6DEC
	bl SetMainCallback2
	pop {r0}
	bx r0
	.align 2, 0
_080A6DE4: .4byte gUnknown_03000700
_080A6DE8: .4byte gUnknown_03000701
_080A6DEC: .4byte sub_80A6D98
	thumb_func_end sub_80A6DCC

	thumb_func_start sub_80A6DF0
sub_80A6DF0: @ 80A6DF0
	push {r4-r6,lr}
	sub sp, 0x8
	adds r5, r0, 0
	ldr r4, _080A6E4C
	ldrb r0, [r4]
	subs r0, 0x1
	lsls r0, 25
	lsrs r6, r0, 24
	movs r1, 0x9
	subs r1, r6
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x7
	movs r2, 0xD
	movs r3, 0xC
	bl MenuDrawTextWindow
	movs r2, 0xA
	subs r2, r6
	lsls r2, 24
	lsrs r2, 24
	adds r0, r6, 0x2
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp]
	adds r0, r5, 0
	movs r1, 0x8
	movs r3, 0x5
	bl sub_80A4008
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _080A6E58
	ldr r1, _080A6E50
	ldr r0, _080A6E54
	ldr r0, [r0]
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r1
	ldr r0, [r0]
	movs r1, 0x8
	movs r2, 0xA
	bl MenuPrint
	b _080A6E80
	.align 2, 0
_080A6E4C: .4byte gUnknown_02038564
_080A6E50: .4byte gUnknown_083C1640
_080A6E54: .4byte gUnknown_03000704
_080A6E58:
	ldr r5, _080A6EAC
	ldr r4, _080A6EB0
	ldr r0, [r4]
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r5
	ldr r0, [r0]
	movs r1, 0x8
	movs r2, 0x8
	bl MenuPrint
	ldr r0, [r4]
	ldrb r0, [r0, 0x1]
	lsls r0, 3
	adds r0, r5
	ldr r0, [r0]
	movs r1, 0x8
	movs r2, 0xA
	bl MenuPrint
_080A6E80:
	movs r2, 0xA
	subs r2, r6
	lsls r2, 24
	lsrs r2, 24
	ldr r0, _080A6EB4
	ldrb r3, [r0]
	movs r0, 0
	str r0, [sp]
	movs r0, 0x5
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x8
	bl InitMenu
	movs r0, 0x2
	bl sub_80A7528
	add sp, 0x8
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6EAC: .4byte gUnknown_083C1640
_080A6EB0: .4byte gUnknown_03000704
_080A6EB4: .4byte gUnknown_02038564
	thumb_func_end sub_80A6DF0

	thumb_func_start sub_80A6EB8
sub_80A6EB8: @ 80A6EB8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	adds r5, r4, 0
	ldr r2, _080A6EE0
	ldrh r0, [r2, 0x30]
	movs r1, 0xF0
	ands r1, r0
	cmp r1, 0x40
	bne _080A6EE8
	ldr r4, _080A6EE4
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _080A6FC0
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	b _080A6F02
	.align 2, 0
_080A6EE0: .4byte gMain
_080A6EE4: .4byte gUnknown_03000700
_080A6EE8:
	cmp r1, 0x80
	bne _080A6F14
	ldr r4, _080A6F0C
	ldrb r0, [r4]
	adds r0, 0x1
	ldr r1, _080A6F10
	ldrb r1, [r1]
	cmp r0, r1
	bge _080A6FC0
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
_080A6F02:
	bl MoveMenuCursor
	strb r0, [r4]
	b _080A6FC0
	.align 2, 0
_080A6F0C: .4byte gUnknown_03000700
_080A6F10: .4byte gUnknown_02038564
_080A6F14:
	ldrh r1, [r2, 0x2E]
	movs r2, 0x1
	ands r2, r1
	cmp r2, 0
	beq _080A6F84
	ldr r1, _080A6F68
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x1C]
	ldr r1, _080A6F6C
	ldr r0, _080A6F70
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r4, 0
	adds r1, r2, 0
	bl sub_80A48E8
	ldr r0, _080A6F74
	bl sub_80A4DA4
	ldr r1, _080A6F78
	ldr r0, _080A6F7C
	ldrb r2, [r0]
	ldr r0, _080A6F80
	ldr r0, [r0]
	adds r0, r2
	ldrb r0, [r0]
	lsls r0, 3
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r4, 0
	bl _call_via_r1
	b _080A6FC0
	.align 2, 0
_080A6F68: .4byte gTasks
_080A6F6C: .4byte gUnknown_03005D10
_080A6F70: .4byte gUnknown_02038559
_080A6F74: .4byte gBG1TilemapBuffer
_080A6F78: .4byte gUnknown_083C1640
_080A6F7C: .4byte gUnknown_03000700
_080A6F80: .4byte gUnknown_03000704
_080A6F84:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080A6FC0
	ldr r1, _080A6FC8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r2, [r0, 0x1C]
	ldr r1, _080A6FCC
	ldr r0, _080A6FD0
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r2, [r0]
	adds r0, r5, 0
	adds r1, r2, 0
	bl sub_80A48E8
	ldr r0, _080A6FD4
	bl sub_80A4DA4
	ldr r0, _080A6FD8
	ldr r1, [r0, 0x2C]
	adds r0, r5, 0
	bl _call_via_r1
_080A6FC0:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A6FC8: .4byte gTasks
_080A6FCC: .4byte gUnknown_03005D10
_080A6FD0: .4byte gUnknown_02038559
_080A6FD4: .4byte gBG1TilemapBuffer
_080A6FD8: .4byte gUnknown_083C1640
	thumb_func_end sub_80A6EB8

	thumb_func_start sub_80A6FDC
sub_80A6FDC: @ 80A6FDC
	push {lr}
	ldr r0, _080A6FF8
	ldrh r0, [r0]
	bl itemid_get_usage
	lsls r0, 24
	cmp r0, 0
	beq _080A7008
	ldr r1, _080A6FFC
	ldr r0, _080A7000
	str r0, [r1]
	ldr r1, _080A7004
	movs r0, 0x2
	b _080A7012
	.align 2, 0
_080A6FF8: .4byte word_203855E
_080A6FFC: .4byte gUnknown_03000704
_080A7000: .4byte gUnknown_083C1708
_080A7004: .4byte gUnknown_02038564
_080A7008:
	ldr r1, _080A7018
	ldr r0, _080A701C
	str r0, [r1]
	ldr r1, _080A7020
	movs r0, 0x1
_080A7012:
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080A7018: .4byte gUnknown_03000704
_080A701C: .4byte gUnknown_083C170A
_080A7020: .4byte gUnknown_02038564
	thumb_func_end sub_80A6FDC

	thumb_func_start sub_80A7024
sub_80A7024: @ 80A7024
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r1, _080A707C
	movs r0, 0
	strb r0, [r1]
	bl sub_80A6FDC
	ldr r0, _080A7080
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	ldr r3, _080A7084
	ldr r2, _080A7088
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	adds r1, 0x1
	strh r1, [r4, 0x1C]
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r2, [r0]
	adds r0, r5, 0
	adds r1, r2, 0
	bl sub_80A48E8
	bl sub_80A73FC
	ldr r0, _080A708C
	bl sub_80A6DF0
	ldr r0, _080A7090
	str r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A707C: .4byte gUnknown_03000700
_080A7080: .4byte gTasks
_080A7084: .4byte gUnknown_03005D10
_080A7088: .4byte gUnknown_02038559
_080A708C: .4byte gBG1TilemapBuffer
_080A7090: .4byte sub_80A6EB8
	thumb_func_end sub_80A7024

	thumb_func_start sub_80A7094
sub_80A7094: @ 80A7094
	push {lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A70CC
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	ldr r2, _080A70D0
	lsrs r0, r2, 16
	movs r3, 0
	strh r0, [r1, 0x18]
	strh r2, [r1, 0x1A]
	ldr r0, _080A70D4
	str r0, [r1]
	movs r0, 0x1
	negs r0, r0
	str r3, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080A70CC: .4byte gTasks
_080A70D0: .4byte sub_802E424
_080A70D4: .4byte sub_80A5B00
	thumb_func_end sub_80A7094

	thumb_func_start sub_80A70D8
sub_80A70D8: @ 80A70D8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl sub_80A7094
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A70D8

	thumb_func_start ItemMenu_UseInBattle
ItemMenu_UseInBattle: @ 80A70F4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _080A7120
	ldrh r0, [r4]
	bl itemid_get_battle_function
	cmp r0, 0
	beq _080A711A
	movs r0, 0x5
	bl PlaySE
	ldrh r0, [r4]
	bl itemid_get_battle_function
	adds r1, r0, 0
	adds r0, r5, 0
	bl _call_via_r1
_080A711A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7120: .4byte word_203855E
	thumb_func_end ItemMenu_UseInBattle

	thumb_func_start sub_80A7124
sub_80A7124: @ 80A7124
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0x5
	bl PlaySE
	movs r0, 0
	bl sub_80A7528
	adds r0, r4, 0
	bl sub_80A41D4
	bl sub_80A736C
	adds r0, r4, 0
	bl sub_80A37C0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7124

	thumb_func_start sub_80A7150
sub_80A7150: @ 80A7150
	push {r4,r5,lr}
	ldr r4, _080A7158
	ldr r5, _080A715C
	b _080A716C
	.align 2, 0
_080A7158: .4byte gUnknown_02038563
_080A715C: .4byte gTasks
_080A7160:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _080A7190
_080A716C:
	bl sub_80A317C
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080A7160
	ldr r0, _080A7198
	movs r1, 0
	bl CreateTask
	strb r0, [r4]
	ldrb r1, [r4]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r5
	movs r1, 0
	strh r1, [r0, 0x26]
_080A7190:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7198: .4byte sub_80A7230
	thumb_func_end sub_80A7150

	thumb_func_start PrepareBagForWallyTutorial
PrepareBagForWallyTutorial: @ 80A719C
	push {r4,r5,lr}
	ldr r0, _080A7214
	movs r1, 0
	strb r1, [r0]
	ldr r0, _080A7218
	strb r1, [r0]
	movs r1, 0
	ldr r4, _080A721C
	ldr r5, _080A7220
	ldr r3, _080A7224
	movs r2, 0
_080A71B2:
	lsls r0, r1, 2
	adds r0, r3
	strb r2, [r0]
	strb r2, [r0, 0x1]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x4
	bls _080A71B2
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0x50
	bl memcpy
	movs r1, 0x80
	lsls r1, 5
	adds r0, r4, r1
	adds r4, r5, 0
	adds r4, 0xA0
	adds r1, r4, 0
	movs r2, 0x40
	bl memcpy
	adds r0, r5, 0
	movs r1, 0x14
	bl sub_80A9684
	adds r0, r4, 0
	movs r1, 0x10
	bl sub_80A9684
	movs r0, 0xD
	movs r1, 0x1
	bl sub_80A9424
	movs r0, 0x4
	movs r1, 0x1
	bl sub_80A9424
	ldr r1, _080A7228
	movs r0, 0x7
	strb r0, [r1]
	ldr r0, _080A722C
	bl SetMainCallback2
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7214: .4byte gUnknown_03000700
_080A7218: .4byte gUnknown_02038559
_080A721C: .4byte 0x0201e000
_080A7220: .4byte gSaveBlock1 + 0x560
_080A7224: .4byte gUnknown_03005D10
_080A7228: .4byte gUnknown_03000701
_080A722C: .4byte sub_80A7150
	thumb_func_end PrepareBagForWallyTutorial

	thumb_func_start sub_80A7230
sub_80A7230: @ 80A7230
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r6, r0, 3
	ldr r0, _080A725C
	mov r8, r0
	adds r7, r6, r0
	movs r0, 0x1E
	ldrsh r1, [r7, r0]
	cmp r1, 0xCC
	beq _080A727A
	cmp r1, 0xCC
	bgt _080A7260
	cmp r1, 0x66
	beq _080A726A
	b _080A7358
	.align 2, 0
_080A725C: .4byte gUnknown_03004B28
_080A7260:
	movs r0, 0x99
	lsls r0, 1
	cmp r1, r0
	beq _080A72F4
	b _080A7358
_080A726A:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	movs r1, 0x2
	bl sub_80A4E8C
	b _080A7358
_080A727A:
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x2
	bl sub_80F98A4
	movs r0, 0x3
	bl sub_80F98A4
	ldr r1, _080A72D8
	movs r0, 0x4
	strh r0, [r1]
	ldr r1, _080A72DC
	ldr r0, _080A72E0
	str r0, [r1]
	ldr r1, _080A72E4
	movs r0, 0x2
	strb r0, [r1]
	mov r0, r8
	adds r4, r0, r6
	ldr r3, _080A72E8
	ldr r2, _080A72EC
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	adds r1, 0x1
	strh r1, [r4, 0x14]
	movs r0, 0
	ldrsb r0, [r2, r0]
	lsls r0, 2
	adds r0, r3
	ldrb r2, [r0]
	adds r0, r5, 0
	adds r1, r2, 0
	bl sub_80A48E8
	bl sub_80A73FC
	ldr r0, _080A72F0
	bl sub_80A6DF0
	b _080A7358
	.align 2, 0
_080A72D8: .4byte word_203855E
_080A72DC: .4byte gUnknown_03000704
_080A72E0: .4byte gUnknown_083C1708
_080A72E4: .4byte gUnknown_02038564
_080A72E8: .4byte gUnknown_03005D10
_080A72EC: .4byte gUnknown_02038559
_080A72F0: .4byte gBG1TilemapBuffer
_080A72F4:
	movs r0, 0x5
	bl PlaySE
	ldr r0, _080A7344
	bl sub_80A4DA4
	ldr r4, _080A7348
	ldr r5, _080A734C
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0x50
	bl memcpy
	adds r4, 0xA0
	movs r0, 0x80
	lsls r0, 5
	adds r5, r0
	adds r0, r4, 0
	adds r1, r5, 0
	movs r2, 0x40
	bl memcpy
	ldr r1, _080A7350
	lsrs r0, r1, 16
	strh r0, [r7, 0x10]
	strh r1, [r7, 0x12]
	mov r0, r8
	subs r0, 0x8
	adds r0, r6, r0
	ldr r1, _080A7354
	str r1, [r0]
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	b _080A735E
	.align 2, 0
_080A7344: .4byte gBG1TilemapBuffer
_080A7348: .4byte gSaveBlock1 + 0x560
_080A734C: .4byte 0x0201e000
_080A7350: .4byte sub_802E424
_080A7354: .4byte sub_80A5B00
_080A7358:
	ldrh r0, [r7, 0x1E]
	adds r0, 0x1
	strh r0, [r7, 0x1E]
_080A735E:
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7230

	thumb_func_start sub_80A736C
sub_80A736C: @ 80A736C
	push {lr}
	sub sp, 0x8
	ldr r1, _080A73B0
	ldr r0, _080A73B4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r3, [r0, 0x3]
	adds r3, 0x1
	lsls r3, 24
	lsrs r3, 24
	ldrb r0, [r0]
	str r0, [sp]
	movs r0, 0
	str r0, [sp, 0x4]
	movs r1, 0xE
	movs r2, 0x2
	bl InitMenu
	ldr r1, _080A73B8
	ldr r3, _080A73BC
	movs r0, 0xF
	str r0, [sp]
	movs r0, 0x10
	movs r2, 0xC
	bl sub_814AC58
	bl sub_80A73C0
	add sp, 0x8
	pop {r0}
	bx r0
	.align 2, 0
_080A73B0: .4byte gUnknown_03005D10
_080A73B4: .4byte gUnknown_02038559
_080A73B8: .4byte 0x0000ffff
_080A73BC: .4byte 0x00002d9f
	thumb_func_end sub_80A736C

	thumb_func_start sub_80A73C0
sub_80A73C0: @ 80A73C0
	push {lr}
	ldr r1, _080A73E8
	ldr r0, _080A73EC
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0]
	lsls r1, 28
	movs r0, 0x80
	lsls r0, 21
	adds r1, r0
	lsrs r1, 24
	movs r0, 0x70
	bl sub_814AD7C
	pop {r0}
	bx r0
	.align 2, 0
_080A73E8: .4byte gUnknown_03005D10
_080A73EC: .4byte gUnknown_02038559
	thumb_func_end sub_80A73C0

	thumb_func_start sub_80A73F0
sub_80A73F0: @ 80A73F0
	push {lr}
	bl sub_814ADC8
	pop {r0}
	bx r0
	thumb_func_end sub_80A73F0

	thumb_func_start sub_80A73FC
sub_80A73FC: @ 80A73FC
	push {lr}
	bl sub_8072DEC
	bl sub_814AD44
	pop {r0}
	bx r0
	thumb_func_end sub_80A73FC

	thumb_func_start sub_80A740C
sub_80A740C: @ 80A740C
	push {lr}
	bl sub_80A75E4
	bl sub_80A7768
	bl sub_80A7420
	pop {r0}
	bx r0
	thumb_func_end sub_80A740C

	thumb_func_start sub_80A7420
sub_80A7420: @ 80A7420
	push {r4,lr}
	ldr r4, _080A7438
	ldrb r0, [r4]
	cmp r0, 0x2
	beq _080A743C
	cmp r0, 0x3
	beq _080A7430
	b _080A7512
_080A7430:
	movs r0, 0x2
	strb r0, [r4]
	b _080A7512
	.align 2, 0
_080A7438: .4byte gUnknown_0203853C
_080A743C:
	ldrb r0, [r4, 0x2]
	cmp r0, 0x9
	bhi _080A74FC
	lsls r0, 2
	ldr r1, _080A744C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A744C: .4byte _080A7450
	.align 2, 0
_080A7450:
	.4byte _080A7478
	.4byte _080A74AC
	.4byte _080A74B4
	.4byte _080A74BC
	.4byte _080A74C4
	.4byte _080A74CC
	.4byte _080A74D4
	.4byte _080A74DC
	.4byte _080A74E4
	.4byte _080A74F4
_080A7478:
	ldr r1, _080A74A0
	ldr r0, _080A74A4
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	lsls r0, 2
	adds r0, r1
	ldrb r1, [r0, 0x1]
	ldrb r0, [r0]
	adds r1, r0
	ldr r0, _080A74A8
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	movs r2, 0
	ldrsh r0, [r1, r2]
	ldrb r1, [r4, 0x1]
	bl sub_80A49AC
	b _080A74FC
	.align 2, 0
_080A74A0: .4byte gUnknown_03005D10
_080A74A4: .4byte gUnknown_02038559
_080A74A8: .4byte gUnknown_03005D24
_080A74AC:
	ldr r0, _080A74B0
	b _080A74E6
	.align 2, 0
_080A74B0: .4byte gOtherText_SwitchWhichItem
_080A74B4:
	ldr r0, _080A74B8
	b _080A74E6
	.align 2, 0
_080A74B8: .4byte gOtherText_WhatWillYouDo2
_080A74BC:
	ldr r0, _080A74C0
	b _080A74E6
	.align 2, 0
_080A74C0: .4byte gOtherText_HowManyToToss
_080A74C4:
	ldr r0, _080A74C8
	b _080A74E6
	.align 2, 0
_080A74C8: .4byte gOtherText_ThrewAwayItem
_080A74CC:
	ldr r0, _080A74D0
	b _080A74E6
	.align 2, 0
_080A74D0: .4byte gOtherText_OkayToThrowAwayPrompt
_080A74D4:
	ldr r0, _080A74D8
	b _080A74E6
	.align 2, 0
_080A74D8: .4byte gOtherText_HowManyToDeposit
_080A74DC:
	ldr r0, _080A74E0
	b _080A74E6
	.align 2, 0
_080A74E0: .4byte gOtherText_DepositedItems
_080A74E4:
	ldr r0, _080A74F0
_080A74E6:
	ldrb r1, [r4, 0x1]
	bl sub_80A4A98
	b _080A74FC
	.align 2, 0
_080A74F0: .4byte gOtherText_NoRoomForItems
_080A74F4:
	ldr r0, _080A7518
	ldrb r1, [r4, 0x1]
	bl sub_80A4A98
_080A74FC:
	ldrb r0, [r4, 0x1]
	adds r0, 0x1
	strb r0, [r4, 0x1]
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bne _080A7512
	movs r0, 0
	strb r0, [r4]
	bl sub_80A7918
_080A7512:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7518: .4byte gOtherText_CantStoreSomeoneItem
	thumb_func_end sub_80A7420

	thumb_func_start sub_80A751C
sub_80A751C: @ 80A751C
	ldr r1, _080A7524
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A7524: .4byte gUnknown_0203853C
	thumb_func_end sub_80A751C

	thumb_func_start sub_80A7528
sub_80A7528: @ 80A7528
	push {r4,lr}
	ldr r4, _080A7544
	movs r1, 0
	strb r1, [r4, 0x1]
	strb r0, [r4, 0x2]
	bl sub_80A78F4
	cmp r0, 0x1
	beq _080A755E
	cmp r0, 0x1
	bgt _080A7548
	cmp r0, 0
	beq _080A754E
	b _080A7566
	.align 2, 0
_080A7544: .4byte gUnknown_0203853C
_080A7548:
	cmp r0, 0x2
	beq _080A7562
	b _080A7566
_080A754E:
	movs r0, 0x2
	strb r0, [r4]
_080A7552:
	bl sub_80A7420
	ldrb r0, [r4]
	cmp r0, 0
	bne _080A7552
	b _080A7566
_080A755E:
	movs r0, 0x3
	b _080A7564
_080A7562:
	movs r0, 0x1
_080A7564:
	strb r0, [r4]
_080A7566:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7528

	thumb_func_start sub_80A756C
sub_80A756C: @ 80A756C
	push {r4,lr}
	ldr r4, _080A758C
	ldrb r0, [r4]
	subs r0, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080A7580
	bl sub_80A7918
_080A7580:
	movs r0, 0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A758C: .4byte gUnknown_0203853C
	thumb_func_end sub_80A756C

	thumb_func_start sub_80A7590
sub_80A7590: @ 80A7590
	push {lr}
	movs r0, 0
	movs r1, 0xD
	movs r2, 0xD
	movs r3, 0x14
	bl MenuZeroFillWindowRect
	bl sub_80A756C
	pop {r0}
	bx r0
	thumb_func_end sub_80A7590

	thumb_func_start sub_80A75A8
sub_80A75A8: @ 80A75A8
	push {lr}
	ldr r1, _080A75C0
	ldrb r0, [r1]
	subs r0, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080A75BC
	movs r0, 0x1
	strb r0, [r1]
_080A75BC:
	pop {r0}
	bx r0
	.align 2, 0
_080A75C0: .4byte gUnknown_0203853C
	thumb_func_end sub_80A75A8

	thumb_func_start sub_80A75C4
sub_80A75C4: @ 80A75C4
	push {lr}
	ldr r1, _080A75D8
	ldrb r0, [r1]
	cmp r0, 0
	beq _080A75DC
	cmp r0, 0x1
	bne _080A75E0
	movs r0, 0x3
	strb r0, [r1]
	b _080A75E0
	.align 2, 0
_080A75D8: .4byte gUnknown_0203853C
_080A75DC:
	bl sub_80A7918
_080A75E0:
	pop {r0}
	bx r0
	thumb_func_end sub_80A75C4

	thumb_func_start sub_80A75E4
sub_80A75E4: @ 80A75E4
	push {r4,r5,lr}
	ldr r4, _080A7628
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _080A7622
	bl sub_80A7988
	adds r5, r0, 0
	cmp r5, 0
	bne _080A7622
	ldr r0, _080A762C
	ldrb r0, [r0]
	ldrb r2, [r4, 0x1]
	adds r1, r2, 0
	movs r3, 0x1
	bl sub_80A47E8
	ldrb r0, [r4, 0x1]
	adds r0, 0x1
	strb r0, [r4, 0x1]
	ldrb r0, [r4, 0x2]
	movs r1, 0x7
	cmp r0, 0
	beq _080A7616
	movs r1, 0x5
_080A7616:
	ldrb r0, [r4, 0x1]
	cmp r1, r0
	bge _080A7622
	strb r5, [r4]
	bl sub_80A78E8
_080A7622:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7628: .4byte gUnknown_02038540
_080A762C: .4byte gUnknown_02038563
	thumb_func_end sub_80A75E4

	thumb_func_start sub_80A7630
sub_80A7630: @ 80A7630
	ldr r1, _080A7638
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A7638: .4byte gUnknown_02038540
	thumb_func_end sub_80A7630

	thumb_func_start sub_80A763C
sub_80A763C: @ 80A763C
	push {r4,lr}
	ldr r4, _080A7650
	bl sub_80A78C4
	adds r1, r0, 0
	cmp r1, 0
	beq _080A7654
	cmp r1, 0x1
	beq _080A7668
	b _080A7670
	.align 2, 0
_080A7650: .4byte gUnknown_02038540
_080A7654:
	ldr r0, _080A7664
	ldrb r0, [r0]
	movs r1, 0
	movs r2, 0x7
	bl sub_80A48E8
	b _080A7670
	.align 2, 0
_080A7664: .4byte gUnknown_02038563
_080A7668:
	movs r0, 0
	strb r1, [r4]
	strb r0, [r4, 0x1]
	strb r0, [r4, 0x2]
_080A7670:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A763C

	thumb_func_start sub_80A7678
sub_80A7678: @ 80A7678
	push {r4,lr}
	ldr r4, _080A7690
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _080A7686
	bl sub_80A78E8
_080A7686:
	movs r0, 0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7690: .4byte gUnknown_02038540
	thumb_func_end sub_80A7678

	thumb_func_start sub_80A7694
sub_80A7694: @ 80A7694
	ldr r1, _080A769C
	movs r0, 0x1
	strb r0, [r1, 0x2]
	bx lr
	.align 2, 0
_080A769C: .4byte gUnknown_02038540
	thumb_func_end sub_80A7694

	thumb_func_start sub_80A76A0
sub_80A76A0: @ 80A76A0
	push {lr}
	movs r0, 0xE
	movs r1, 0x2
	movs r2, 0x1D
	movs r3, 0x12
	bl MenuZeroFillWindowRect
	bl sub_80A7678
	pop {r0}
	bx r0
	thumb_func_end sub_80A76A0

	thumb_func_start sub_80A76B8
sub_80A76B8: @ 80A76B8
	push {lr}
	ldr r0, _080A76CC
	movs r1, 0
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A76C6
	movs r1, 0x1
_080A76C6:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A76CC: .4byte gUnknown_02038540
	thumb_func_end sub_80A76B8

	thumb_func_start sub_80A76D0
sub_80A76D0: @ 80A76D0
	push {lr}
	ldr r0, _080A76E4
	movs r1, 0
	ldrb r0, [r0, 0x1]
	cmp r0, 0x5
	bls _080A76DE
	movs r1, 0x1
_080A76DE:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A76E4: .4byte gUnknown_02038540
	thumb_func_end sub_80A76D0

	thumb_func_start sub_80A76E8
sub_80A76E8: @ 80A76E8
	push {r4,lr}
	ldr r4, _080A7708
	ldrb r0, [r4]
	cmp r0, 0x1
	bne _080A7702
	ldrb r0, [r4, 0x1]
	ldr r1, [r4, 0x4]
	ldr r2, [r4, 0x8]
	ldrh r3, [r4, 0x2]
	bl DisplayItemMessageOnField
	movs r0, 0
	strb r0, [r4]
_080A7702:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7708: .4byte gUnknown_02038544
	thumb_func_end sub_80A76E8

	thumb_func_start sub_80A770C
sub_80A770C: @ 80A770C
	ldr r1, _080A7714
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A7714: .4byte gUnknown_02038544
	thumb_func_end sub_80A770C

	thumb_func_start DisplayCannotUseItemMessage
DisplayCannotUseItemMessage: @ 80A7718
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r5, r0, 0
	adds r7, r1, 0
	mov r8, r2
	adds r6, r3, 0
	ldr r4, _080A7738
	bl sub_80A7924
	cmp r0, 0
	beq _080A773C
	cmp r0, 0x2
	beq _080A774E
	b _080A775C
	.align 2, 0
_080A7738: .4byte gUnknown_02038544
_080A773C:
	lsls r0, r5, 24
	lsrs r0, 24
	lsls r3, r6, 16
	lsrs r3, 16
	adds r1, r7, 0
	mov r2, r8
	bl DisplayItemMessageOnField
	b _080A775C
_080A774E:
	movs r0, 0x1
	strb r0, [r4]
	strb r5, [r4, 0x1]
	str r7, [r4, 0x4]
	mov r0, r8
	str r0, [r4, 0x8]
	strh r6, [r4, 0x2]
_080A775C:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end DisplayCannotUseItemMessage

	thumb_func_start sub_80A7768
sub_80A7768: @ 80A7768
	push {r4,lr}
	ldr r4, _080A77A8
	ldrb r0, [r4]
	cmp r0, 0x2
	bne _080A7814
	ldrb r1, [r4, 0x1]
	cmp r1, 0
	beq _080A780E
	ldrb r0, [r4, 0x2]
	cmp r0, 0x1
	beq _080A77B4
	ldr r2, _080A77AC
	ldr r0, _080A77B0
	ldr r0, [r0]
	adds r0, r1, r0
	subs r0, 0x1
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r2
	ldr r0, [r0]
	subs r1, 0x1
	lsls r1, 1
	adds r1, 0x1
	ldrb r2, [r4, 0x3]
	adds r2, r1
	lsls r2, 24
	lsrs r2, 24
	movs r1, 0x7
	bl MenuPrint
	b _080A77FC
	.align 2, 0
_080A77A8: .4byte gUnknown_02038550
_080A77AC: .4byte gUnknown_083C1640
_080A77B0: .4byte gUnknown_03000704
_080A77B4:
	cmp r1, 0x1
	bne _080A77C8
	ldr r0, _080A77C4
	ldrh r0, [r0]
	bl sub_80A4B90
	adds r3, r0, 0
	b _080A77DC
	.align 2, 0
_080A77C4: .4byte word_203855E
_080A77C8:
	ldr r2, _080A781C
	ldrb r0, [r4, 0x1]
	ldr r1, _080A7820
	ldr r1, [r1]
	adds r0, r1
	subs r0, 0x1
	ldrb r0, [r0]
	lsls r0, 3
	adds r0, r2
	ldr r3, [r0]
_080A77DC:
	ldrb r2, [r4, 0x1]
	subs r2, 0x1
	asrs r0, r2, 1
	lsls r1, r0, 1
	adds r1, r0
	lsls r1, 1
	adds r1, 0x1
	lsls r1, 24
	lsrs r1, 24
	movs r0, 0x1
	ands r2, r0
	lsls r2, 1
	adds r2, 0x8
	adds r0, r3, 0
	bl MenuPrint
_080A77FC:
	ldr r1, _080A7824
	ldrb r0, [r4, 0x1]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080A780E
	movs r0, 0
	strb r0, [r4]
	bl sub_80A7970
_080A780E:
	ldrb r0, [r4, 0x1]
	adds r0, 0x1
	strb r0, [r4, 0x1]
_080A7814:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A781C: .4byte gUnknown_083C1640
_080A7820: .4byte gUnknown_03000704
_080A7824: .4byte gUnknown_02038564
	thumb_func_end sub_80A7768

	thumb_func_start sub_80A7828
sub_80A7828: @ 80A7828
	ldr r1, _080A7830
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A7830: .4byte gUnknown_02038550
	thumb_func_end sub_80A7828

	thumb_func_start sub_80A7834
sub_80A7834: @ 80A7834
	push {r4-r6,lr}
	adds r5, r0, 0
	adds r6, r1, 0
	ldr r4, _080A784C
	bl sub_80A7958
	cmp r0, 0x1
	beq _080A7850
	cmp r0, 0x2
	beq _080A7856
	b _080A7862
	.align 2, 0
_080A784C: .4byte gUnknown_02038550
_080A7850:
	movs r1, 0
	movs r0, 0x2
	b _080A785A
_080A7856:
	movs r1, 0
	movs r0, 0x1
_080A785A:
	strb r0, [r4]
	strb r1, [r4, 0x1]
	strb r5, [r4, 0x2]
	strb r6, [r4, 0x3]
_080A7862:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7834

	thumb_func_start sub_80A7868
sub_80A7868: @ 80A7868
	push {lr}
	ldr r1, _080A787C
	ldrb r0, [r1]
	cmp r0, 0x2
	bne _080A7876
	movs r0, 0x1
	strb r0, [r1]
_080A7876:
	pop {r0}
	bx r0
	.align 2, 0
_080A787C: .4byte gUnknown_02038550
	thumb_func_end sub_80A7868

	thumb_func_start sub_80A7880
sub_80A7880: @ 80A7880
	push {lr}
	ldr r1, _080A7894
	ldrb r0, [r1]
	cmp r0, 0
	beq _080A7898
	cmp r0, 0x1
	bne _080A789C
	movs r0, 0x2
	strb r0, [r1]
	b _080A789C
	.align 2, 0
_080A7894: .4byte gUnknown_02038550
_080A7898:
	bl sub_80A7970
_080A789C:
	pop {r0}
	bx r0
	thumb_func_end sub_80A7880

	thumb_func_start rfu_lacks_rfufunc
rfu_lacks_rfufunc: @ 80A78A0
	push {lr}
	ldr r0, _080A78B4
	movs r1, 0
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A78AE
	movs r1, 0x1
_080A78AE:
	adds r0, r1, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A78B4: .4byte gUnknown_02038550
	thumb_func_end rfu_lacks_rfufunc

	thumb_func_start sub_80A78B8
sub_80A78B8: @ 80A78B8
	ldr r1, _080A78C0
	movs r0, 0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A78C0: .4byte gUnknown_02038554
	thumb_func_end sub_80A78B8

	thumb_func_start sub_80A78C4
sub_80A78C4: @ 80A78C4
	push {lr}
	ldr r0, _080A78DC
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080A78E0
	bl sub_80A7868
	bl sub_80A75A8
	movs r0, 0x1
	b _080A78E2
	.align 2, 0
_080A78DC: .4byte gLinkOpen
_080A78E0:
	movs r0, 0
_080A78E2:
	pop {r1}
	bx r1
	thumb_func_end sub_80A78C4

	thumb_func_start sub_80A78E8
sub_80A78E8: @ 80A78E8
	push {lr}
	bl sub_80A7880
	pop {r0}
	bx r0
	thumb_func_end sub_80A78E8

	thumb_func_start sub_80A78F4
sub_80A78F4: @ 80A78F4
	push {lr}
	ldr r0, _080A790C
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080A7910
	bl sub_80A76B8
	movs r1, 0x2
	cmp r0, 0
	beq _080A7912
	movs r1, 0x1
	b _080A7912
	.align 2, 0
_080A790C: .4byte gLinkOpen
_080A7910:
	movs r1, 0
_080A7912:
	adds r0, r1, 0
	pop {r1}
	bx r1
	thumb_func_end sub_80A78F4

	thumb_func_start sub_80A7918
sub_80A7918: @ 80A7918
	push {lr}
	bl sub_80A76E8
	pop {r0}
	bx r0
	thumb_func_end sub_80A7918

	thumb_func_start sub_80A7924
sub_80A7924: @ 80A7924
	push {lr}
	ldr r0, _080A7948
	ldrb r0, [r0]
	cmp r0, 0x1
	bne _080A7942
	bl sub_80A76B8
	cmp r0, 0
	bne _080A7942
	bl sub_80A76D0
	cmp r0, 0
	beq _080A794C
	bl sub_80A7678
_080A7942:
	movs r0, 0
	b _080A7952
	.align 2, 0
_080A7948: .4byte gLinkOpen
_080A794C:
	bl sub_80A7694
	movs r0, 0x2
_080A7952:
	pop {r1}
	bx r1
	thumb_func_end sub_80A7924

	thumb_func_start sub_80A7958
sub_80A7958: @ 80A7958
	push {lr}
	bl sub_80A76B8
	cmp r0, 0
	beq _080A796A
	bl sub_80A75A8
	movs r0, 0x1
	b _080A796C
_080A796A:
	movs r0, 0x2
_080A796C:
	pop {r1}
	bx r1
	thumb_func_end sub_80A7958

	thumb_func_start sub_80A7970
sub_80A7970: @ 80A7970
	push {lr}
	bl sub_80A75C4
	pop {r0}
	bx r0
	thumb_func_end sub_80A7970

	thumb_func_start sub_80A797C
sub_80A797C: @ 80A797C
	ldr r1, _080A7984
	movs r0, 0x1
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A7984: .4byte gUnknown_02038554
	thumb_func_end sub_80A797C

	thumb_func_start sub_80A7988
sub_80A7988: @ 80A7988
	ldr r1, _080A7994
	ldrb r0, [r1]
	movs r2, 0
	strb r2, [r1]
	bx lr
	.align 2, 0
_080A7994: .4byte gUnknown_02038554
	thumb_func_end sub_80A7988

	thumb_func_start sub_80A7998
sub_80A7998: @ 80A7998
	adds r2, r0, 0
	adds r2, 0x2A
	movs r1, 0
	strb r1, [r2]
	strh r1, [r0, 0x2E]
	strh r1, [r0, 0x30]
	strh r1, [r0, 0x32]
	strh r1, [r0, 0x34]
	strh r1, [r0, 0x36]
	ldr r1, _080A79B0
	str r1, [r0, 0x1C]
	bx lr
	.align 2, 0
_080A79B0: .4byte sub_80A79B4
	thumb_func_end sub_80A7998

	thumb_func_start sub_80A79B4
sub_80A79B4: @ 80A79B4
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _080A79E4
	movs r1, 0
	ldrsb r1, [r0, r1]
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _080A79CC
	adds r0, r4, 0
	bl sub_80A79EC
_080A79CC:
	ldr r0, _080A79E8
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	cmp r0, 0
	beq _080A79DE
	adds r0, r4, 0
	bl sub_80A7A94
_080A79DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A79E4: .4byte gUnknown_0203855B
_080A79E8: .4byte gUnknown_0203855C
	thumb_func_end sub_80A79B4

	thumb_func_start sub_80A79EC
sub_80A79EC: @ 80A79EC
	push {r4-r6,lr}
	adds r2, r0, 0
	movs r0, 0x34
	ldrsh r4, [r2, r0]
	cmp r4, 0
	beq _080A79FE
	cmp r4, 0x1
	beq _080A7A54
	b _080A7A8A
_080A79FE:
	ldr r5, _080A7A28
	ldrb r6, [r5]
	movs r0, 0
	ldrsb r0, [r5, r0]
	cmp r0, 0x6
	beq _080A7A2C
	adds r3, r2, 0
	adds r3, 0x3F
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, 0
	adds r0, 0x2A
	strb r6, [r0]
	movs r1, 0x1
	negs r1, r1
	adds r0, r1, 0
	strb r0, [r5]
	b _080A7A8A
	.align 2, 0
_080A7A28: .4byte gUnknown_0203855B
_080A7A2C:
	adds r3, r2, 0
	adds r3, 0x3F
	ldrb r0, [r3]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r2, 0
	adds r0, 0x2A
	strb r4, [r0]
	ldrh r0, [r2, 0x22]
	subs r0, 0x4
	strh r0, [r2, 0x22]
	movs r0, 0x4
	strh r0, [r2, 0x2E]
	movs r0, 0x1
	strh r0, [r2, 0x34]
	adds r0, r2, 0
	bl sub_80A7AE4
	b _080A7A8A
_080A7A54:
	ldrh r4, [r2, 0x2E]
	movs r0, 0x2E
	ldrsh r3, [r2, r0]
	cmp r3, 0
	beq _080A7A7C
	ldrh r1, [r2, 0x30]
	movs r3, 0x30
	ldrsh r0, [r2, r3]
	cmp r0, 0
	beq _080A7A72
	ldrh r0, [r2, 0x22]
	adds r0, 0x1
	strh r0, [r2, 0x22]
	subs r0, r4, 0x1
	strh r0, [r2, 0x2E]
_080A7A72:
	adds r0, r1, 0x1
	movs r1, 0x1
	ands r0, r1
	strh r0, [r2, 0x30]
	b _080A7A8A
_080A7A7C:
	ldr r1, _080A7A90
	movs r4, 0x1
	negs r4, r4
	adds r0, r4, 0
	strb r0, [r1]
	strh r3, [r2, 0x30]
	strh r3, [r2, 0x34]
_080A7A8A:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A7A90: .4byte gUnknown_0203855B
	thumb_func_end sub_80A79EC

	thumb_func_start sub_80A7A94
sub_80A7A94: @ 80A7A94
	push {r4,lr}
	adds r4, r0, 0
	movs r1, 0x36
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A7AA6
	cmp r0, 0x1
	beq _080A7AC8
	b _080A7ADC
_080A7AA6:
	ldrb r1, [r4, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	movs r1, 0x1
	orrs r0, r1
	strb r0, [r4, 0x1]
	ldr r0, _080A7AC4
	str r0, [r4, 0x10]
	adds r0, r4, 0
	bl InitSpriteAffineAnim
	movs r0, 0x1
	strh r0, [r4, 0x36]
	b _080A7ADC
	.align 2, 0
_080A7AC4: .4byte gSpriteAffineAnimTable_83C1CC4
_080A7AC8:
	ldrh r0, [r4, 0x32]
	adds r0, 0x1
	strh r0, [r4, 0x32]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xC
	bne _080A7ADC
	adds r0, r4, 0
	bl sub_80A7AE4
_080A7ADC:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7A94

	thumb_func_start sub_80A7AE4
sub_80A7AE4: @ 80A7AE4
	push {lr}
	ldr r2, _080A7B0C
	movs r1, 0
	strb r1, [r2]
	ldrb r2, [r0, 0x1]
	movs r1, 0x4
	negs r1, r1
	ands r1, r2
	strb r1, [r0, 0x1]
	movs r1, 0
	strh r1, [r0, 0x32]
	strh r1, [r0, 0x36]
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	pop {r0}
	bx r0
	.align 2, 0
_080A7B0C: .4byte gUnknown_0203855C
	thumb_func_end sub_80A7AE4

	thumb_func_start sub_80A7B10
sub_80A7B10: @ 80A7B10
	push {lr}
	ldr r0, _080A7B24
	movs r1, 0x3A
	movs r2, 0x28
	movs r3, 0
	bl CreateSprite
	pop {r0}
	bx r0
	.align 2, 0
_080A7B24: .4byte gSpriteTemplate_83C1CE0
	thumb_func_end sub_80A7B10

	thumb_func_start sub_80A7B28
sub_80A7B28: @ 80A7B28
	push {r4,lr}
	adds r4, r0, 0
	movs r0, 0
	strh r0, [r4, 0x34]
	strh r0, [r4, 0x2E]
	adds r0, r4, 0
	bl sub_80A7B6C
	ldr r0, _080A7B44
	str r0, [r4, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7B44: .4byte sub_80A7B6C
	thumb_func_end sub_80A7B28

	thumb_func_start sub_80A7B48
sub_80A7B48: @ 80A7B48
	ldrh r2, [r0, 0x38]
	ldrh r1, [r0, 0x2E]
	adds r1, 0x1
	movs r3, 0x1
	ands r1, r3
	subs r2, r1
	adds r1, r0, 0
	adds r1, 0x28
	strb r2, [r1]
	ldrh r2, [r0, 0x3A]
	ldrh r1, [r0, 0x2E]
	adds r1, 0x1
	ands r1, r3
	subs r2, r1
	adds r0, 0x29
	strb r2, [r0]
	bx lr
	thumb_func_end sub_80A7B48

	thumb_func_start sub_80A7B6C
sub_80A7B6C: @ 80A7B6C
	push {r4,r5,lr}
	adds r4, r0, 0
	movs r0, 0x3C
	ldrsh r2, [r4, r0]
	cmp r2, 0
	beq _080A7C16
	movs r1, 0x34
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080A7B86
	cmp r0, 0x1
	beq _080A7BD4
	b _080A7C16
_080A7B86:
	ldrb r0, [r4, 0x1]
	movs r1, 0x4
	negs r1, r1
	ands r1, r0
	movs r0, 0x1
	orrs r1, r0
	strb r1, [r4, 0x1]
	cmp r2, 0x1
	bne _080A7BA0
	ldr r0, _080A7B9C
	b _080A7BA2
	.align 2, 0
_080A7B9C: .4byte gSpriteAffineAnimTable_83C1D20
_080A7BA0:
	ldr r0, _080A7BD0
_080A7BA2:
	str r0, [r4, 0x10]
	adds r0, r4, 0
	bl InitSpriteAffineAnim
	movs r0, 0x1
	strh r0, [r4, 0x34]
	adds r0, r4, 0
	adds r0, 0x28
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	strh r0, [r4, 0x38]
	adds r0, r4, 0
	adds r0, 0x29
	ldrb r0, [r0]
	lsls r0, 24
	asrs r0, 24
	strh r0, [r4, 0x3A]
	adds r0, r4, 0
	bl sub_80A7B48
	b _080A7C16
	.align 2, 0
_080A7BD0: .4byte gSpriteAffineAnimTable_83C1D20 + 0x4
_080A7BD4:
	ldrh r0, [r4, 0x2E]
	adds r0, 0x1
	movs r5, 0
	strh r0, [r4, 0x2E]
	adds r0, r4, 0
	bl sub_80A7B48
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	cmp r0, 0x20
	bne _080A7C16
	strh r5, [r4, 0x2E]
	strh r5, [r4, 0x34]
	ldrh r1, [r4, 0x38]
	adds r0, r4, 0
	adds r0, 0x28
	strb r1, [r0]
	ldrh r0, [r4, 0x3A]
	adds r1, r4, 0
	adds r1, 0x29
	strb r0, [r1]
	ldrb r0, [r4, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	ldrb r1, [r4, 0x1]
	movs r0, 0x4
	negs r0, r0
	ands r0, r1
	strb r0, [r4, 0x1]
	ldr r0, _080A7C1C
	str r0, [r4, 0x1C]
_080A7C16:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C1C: .4byte SpriteCallbackDummy
	thumb_func_end sub_80A7B6C

	thumb_func_start sub_80A7C20
sub_80A7C20: @ 80A7C20
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080A7C54
	bl LoadSpritePalette
	ldr r0, _080A7C58
	movs r1, 0x10
	movs r2, 0x58
	movs r3, 0
	bl CreateSprite
	ldr r1, _080A7C5C
	strb r0, [r1]
	ldr r2, _080A7C60
	ldrb r1, [r1]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r4, [r0, 0x3C]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C54: .4byte gUnknown_083C1D30
_080A7C58: .4byte gSpriteTemplate_83C1D38
_080A7C5C: .4byte gUnknown_02038568
_080A7C60: .4byte gSprites
	thumb_func_end sub_80A7C20

	thumb_func_start sub_80A7C64
sub_80A7C64: @ 80A7C64
	push {r4,r5,lr}
	movs r0, 0x8
	bl FreeSpritePaletteByTag
	ldr r5, _080A7C98
	ldr r4, _080A7C9C
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	ldrb r0, [r0, 0x3]
	lsls r0, 26
	lsrs r0, 27
	bl FreeOamMatrix
	ldrb r1, [r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r5
	bl DestroySprite
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7C98: .4byte gSprites
_080A7C9C: .4byte gUnknown_02038568
	thumb_func_end sub_80A7C64

	thumb_func_start sub_80A7CA0
sub_80A7CA0: @ 80A7CA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	adds r6, r0, 0
	adds r4, r1, 0
	movs r2, 0x80
	lsls r2, 4
	adds r0, r4, 0
	movs r1, 0
	bl memset
	movs r0, 0x80
	lsls r0, 1
	adds r4, r0
	movs r7, 0
_080A7CBE:
	adds r4, 0x20
	movs r5, 0
	adds r1, r7, 0x1
	mov r8, r1
_080A7CC6:
	adds r0, r4, 0
	adds r1, r6, 0
	movs r2, 0x20
	bl memcpy
	adds r4, 0x20
	adds r6, 0x20
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x5
	bls _080A7CC6
	cmp r7, 0x5
	beq _080A7CE4
	adds r4, 0x20
_080A7CE4:
	mov r1, r8
	lsls r0, r1, 24
	lsrs r7, r0, 24
	cmp r7, 0x5
	bls _080A7CBE
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7CA0

	thumb_func_start sub_80A7CF8
sub_80A7CF8: @ 80A7CF8
	push {r4,r5,lr}
	sub sp, 0x8
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x2A
	bne _080A7D44
	bl sub_80B4940
	cmp r0, 0x1
	bne _080A7D44
	ldr r4, _080A7D34
	ldr r1, _080A7D38
	adds r0, r4, 0
	bl sub_80A7CA0
	movs r0, 0x90
	lsls r0, 3
	adds r4, r0
	str r4, [sp]
	ldr r1, _080A7D3C
	ldr r0, [sp, 0x4]
	ands r0, r1
	ldr r1, _080A7D40
	orrs r0, r1
	str r0, [sp, 0x4]
	mov r0, sp
	bl LoadSpritePalette
	b _080A7D72
	.align 2, 0
_080A7D34: .4byte gSaveBlock1 + 0x317C
_080A7D38: .4byte 0x02000000
_080A7D3C: .4byte 0xffff0000
_080A7D40: .4byte 0x00007544
_080A7D44:
	ldr r5, _080A7D7C
	lsls r4, 3
	adds r0, r5, 0x4
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp]
	mov r1, sp
	ldr r0, _080A7D80
	strh r0, [r1, 0x4]
	mov r0, sp
	bl LoadCompressedObjectPalette
	adds r4, r5
	ldr r0, [r4]
	ldr r4, _080A7D84
	adds r1, r4, 0
	bl sub_800D238
	ldr r0, _080A7D88
	adds r1, r4, r0
	adds r0, r4, 0
	bl sub_80A7CA0
_080A7D72:
	add sp, 0x8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7D7C: .4byte gBerryGraphicsTable
_080A7D80: .4byte 0x00007544
_080A7D84: .4byte 0x02001000
_080A7D88: .4byte 0xfffff000
	thumb_func_end sub_80A7CF8

	thumb_func_start sub_80A7D8C
sub_80A7D8C: @ 80A7D8C
	push {r4,r5,lr}
	adds r4, r1, 0
	adds r5, r2, 0
	lsls r0, 24
	lsrs r0, 24
	lsls r4, 16
	lsrs r4, 16
	lsls r5, 16
	lsrs r5, 16
	bl sub_80A7CF8
	ldr r0, _080A7DC0
	lsls r4, 16
	asrs r4, 16
	lsls r5, 16
	asrs r5, 16
	adds r1, r4, 0
	adds r2, r5, 0
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A7DC0: .4byte gSpriteTemplate_83C1D74
	thumb_func_end sub_80A7D8C

	thumb_func_start sub_80A7DC4
sub_80A7DC4: @ 80A7DC4
	ldr r1, _080A7DD0
	ldrh r1, [r1]
	negs r1, r1
	strh r1, [r0, 0x26]
	bx lr
	.align 2, 0
_080A7DD0: .4byte gUnknown_030041B4
	thumb_func_end sub_80A7DC4

	thumb_func_start sub_80A7DD4
sub_80A7DD4: @ 80A7DD4
	push {lr}
	ldr r0, _080A7DE8
	bl FreeSpritePaletteByTag
	movs r0, 0x8
	bl FreeSpritePaletteByTag
	pop {r0}
	bx r0
	.align 2, 0
_080A7DE8: .4byte 0x00007544
	thumb_func_end sub_80A7DD4

	thumb_func_start sub_80A7DEC
sub_80A7DEC: @ 80A7DEC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	adds r4, r0, 0
	adds r5, r1, 0
	adds r6, r2, 0
	mov r8, r3
	lsls r4, 24
	lsrs r4, 24
	lsls r5, 24
	lsrs r5, 24
	lsls r6, 24
	lsrs r6, 24
	mov r0, r8
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	ldr r0, _080A7E50
	bl FreeSpritePaletteByTag
	adds r0, r4, 0
	bl sub_80A7CF8
	ldr r0, _080A7E54
	adds r1, r5, 0
	adds r2, r6, 0
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r1, r0, 24
	adds r4, r1, 0
	mov r0, r8
	cmp r0, 0x1
	bne _080A7E42
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	ldr r1, _080A7E58
	adds r0, r1
	movs r1, 0x1
	bl StartSpriteAffineAnim
_080A7E42:
	adds r0, r4, 0
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A7E50: .4byte 0x00007544
_080A7E54: .4byte gSpriteTemplate_83C1E04
_080A7E58: .4byte gSprites
	thumb_func_end sub_80A7DEC

	thumb_func_start sub_80A7E5C
sub_80A7E5C: @ 80A7E5C
	push {lr}
	adds r1, r0, 0
	ldr r0, _080A7E78
	lsls r1, 16
	asrs r1, 16
	movs r2, 0x63
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	.align 2, 0
_080A7E78: .4byte gSpriteTemplate_83C1F98
	thumb_func_end sub_80A7E5C

	thumb_func_start sub_80A7E7C
sub_80A7E7C: @ 80A7E7C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _080A7E9C
	ldrb r0, [r4]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, 0xFF
	bne _080A7EA0
	adds r0, r5, 0
	bl move_anim_task_del
	b _080A7EDC
	.align 2, 0
_080A7E9C: .4byte gUnknown_03004B00
_080A7EA0:
	ldr r1, _080A7EE4
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r1
	ldrh r1, [r4, 0x2]
	strh r1, [r0, 0x24]
	ldrh r1, [r4, 0x4]
	strh r1, [r0, 0x26]
	ldr r1, _080A7EE8
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r2, [r0, 0x8]
	ldrh r1, [r4, 0x6]
	strh r1, [r0, 0xA]
	ldrh r1, [r4, 0x8]
	strh r1, [r0, 0xC]
	ldrh r1, [r4, 0x8]
	strh r1, [r0, 0xE]
	ldrh r1, [r4, 0x2]
	strh r1, [r0, 0x10]
	ldrh r1, [r4, 0x4]
	strh r1, [r0, 0x12]
	ldr r1, _080A7EEC
	str r1, [r0]
	adds r0, r5, 0
	bl _call_via_r1
_080A7EDC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A7EE4: .4byte gSprites
_080A7EE8: .4byte gTasks
_080A7EEC: .4byte sub_80A7EF0
	thumb_func_end sub_80A7E7C

	thumb_func_start sub_80A7EF0
sub_80A7EF0: @ 80A7EF0
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080A7F2C
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r3, r0, r1
	ldrh r0, [r3, 0xE]
	movs r2, 0xE
	ldrsh r5, [r3, r2]
	adds r7, r1, 0
	cmp r5, 0
	bne _080A7F96
	ldr r2, _080A7F30
	movs r6, 0x8
	ldrsh r1, [r3, r6]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r2
	movs r6, 0x24
	ldrsh r0, [r1, r6]
	adds r6, r2, 0
	cmp r0, 0
	bne _080A7F34
	ldrh r0, [r3, 0x10]
	strh r0, [r1, 0x24]
	b _080A7F36
	.align 2, 0
_080A7F2C: .4byte gTasks
_080A7F30: .4byte gSprites
_080A7F34:
	strh r5, [r1, 0x24]
_080A7F36:
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r3, r0, r7
	movs r0, 0x8
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r1, r0, r6
	movs r5, 0x26
	ldrsh r0, [r1, r5]
	cmp r0, 0
	bne _080A7F56
	ldrh r0, [r3, 0x12]
	b _080A7F58
_080A7F56:
	movs r0, 0
_080A7F58:
	strh r0, [r1, 0x26]
	adds r0, r2, r4
	lsls r0, 3
	adds r2, r0, r7
	ldrh r0, [r2, 0xC]
	strh r0, [r2, 0xE]
	ldrh r0, [r2, 0xA]
	subs r0, 0x1
	strh r0, [r2, 0xA]
	lsls r0, 16
	asrs r3, r0, 16
	cmp r3, 0
	bne _080A7F9A
	movs r0, 0x8
	ldrsh r1, [r2, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	strh r3, [r0, 0x24]
	movs r5, 0x8
	ldrsh r1, [r2, r5]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r6
	strh r3, [r0, 0x26]
	adds r0, r4, 0
	bl move_anim_task_del
	b _080A7F9A
_080A7F96:
	subs r0, 0x1
	strh r0, [r3, 0xE]
_080A7F9A:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A7EF0

	thumb_func_start sub_80A7FA0
sub_80A7FA0: @ 80A7FA0
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0
	ldr r2, _080A7FC8
	ldrh r0, [r2]
	movs r3, 0
	ldrsh r1, [r2, r3]
	cmp r1, 0x3
	bgt _080A7FCC
	lsls r0, 24
	lsrs r0, 24
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0xFF
	bne _080A8022
	b _080A8026
	.align 2, 0
_080A7FC8: .4byte gUnknown_03004B00
_080A7FCC:
	cmp r1, 0x8
	beq _080A8018
	movs r1, 0
	ldrsh r0, [r2, r1]
	cmp r0, 0x5
	beq _080A7FEC
	cmp r0, 0x5
	bgt _080A7FE2
	cmp r0, 0x4
	beq _080A7FE8
	b _080A7FF4
_080A7FE2:
	cmp r0, 0x6
	beq _080A7FF0
	b _080A7FF4
_080A7FE8:
	movs r0, 0
	b _080A7FF6
_080A7FEC:
	movs r0, 0x2
	b _080A7FF6
_080A7FF0:
	movs r0, 0x1
	b _080A7FF6
_080A7FF4:
	movs r0, 0x3
_080A7FF6:
	bl battle_get_side_with_given_state
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	bne _080A800C
	movs r6, 0x1
_080A800C:
	ldr r0, _080A8014
	adds r0, r4, r0
	b _080A8020
	.align 2, 0
_080A8014: .4byte gUnknown_02024BE0
_080A8018:
	ldr r1, _080A8030
	ldr r0, _080A8034
	ldrb r0, [r0]
	adds r0, r1
_080A8020:
	ldrb r3, [r0]
_080A8022:
	cmp r6, 0
	beq _080A8038
_080A8026:
	adds r0, r5, 0
	bl move_anim_task_del
	b _080A8076
	.align 2, 0
_080A8030: .4byte gUnknown_02024BE0
_080A8034: .4byte gUnknown_0202F7C8
_080A8038:
	ldr r1, _080A807C
	lsls r0, r3, 4
	adds r0, r3
	lsls r0, 2
	adds r0, r1
	ldr r2, _080A8080
	ldrh r1, [r2, 0x2]
	strh r1, [r0, 0x24]
	ldrh r1, [r2, 0x4]
	strh r1, [r0, 0x26]
	ldr r1, _080A8084
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	strh r3, [r0, 0x8]
	ldrh r1, [r2, 0x6]
	strh r1, [r0, 0xA]
	ldrh r1, [r2, 0x8]
	strh r1, [r0, 0xC]
	ldrh r1, [r2, 0x8]
	strh r1, [r0, 0xE]
	ldrh r1, [r2, 0x2]
	strh r1, [r0, 0x10]
	ldrh r1, [r2, 0x4]
	strh r1, [r0, 0x12]
	ldr r1, _080A8088
	str r1, [r0]
	adds r0, r5, 0
	bl _call_via_r1
_080A8076:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A807C: .4byte gSprites
_080A8080: .4byte gUnknown_03004B00
_080A8084: .4byte gTasks
_080A8088: .4byte sub_80A808C
	thumb_func_end sub_80A7FA0

	thumb_func_start sub_80A808C
sub_80A808C: @ 80A808C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080A80D0
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r3, r0, r1
	ldrh r2, [r3, 0xE]
	movs r4, 0xE
	ldrsh r0, [r3, r4]
	mov r12, r1
	cmp r0, 0
	bne _080A8144
	ldr r2, _080A80D4
	movs r7, 0x8
	ldrsh r1, [r3, r7]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r4, r0, r2
	movs r0, 0x24
	ldrsh r1, [r4, r0]
	ldrh r5, [r3, 0x10]
	movs r7, 0x10
	ldrsh r0, [r3, r7]
	adds r7, r2, 0
	cmp r1, r0
	bne _080A80D8
	negs r0, r5
	strh r0, [r4, 0x24]
	b _080A80DA
	.align 2, 0
_080A80D0: .4byte gTasks
_080A80D4: .4byte gSprites
_080A80D8:
	strh r5, [r4, 0x24]
_080A80DA:
	lsls r3, r6, 2
	adds r1, r3, r6
	lsls r1, 3
	add r1, r12
	movs r0, 0x8
	ldrsh r2, [r1, r0]
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r4, r0, r7
	movs r0, 0x26
	ldrsh r2, [r4, r0]
	mov r8, r2
	ldrh r5, [r1, 0x12]
	movs r2, 0x12
	ldrsh r0, [r1, r2]
	cmp r8, r0
	bne _080A8104
	negs r0, r5
	strh r0, [r4, 0x26]
	b _080A8106
_080A8104:
	strh r5, [r4, 0x26]
_080A8106:
	adds r0, r3, r6
	lsls r0, 3
	mov r4, r12
	adds r3, r0, r4
	ldrh r0, [r3, 0xC]
	strh r0, [r3, 0xE]
	ldrh r0, [r3, 0xA]
	subs r0, 0x1
	strh r0, [r3, 0xA]
	lsls r0, 16
	asrs r2, r0, 16
	cmp r2, 0
	bne _080A8148
	movs r0, 0x8
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r2, [r0, 0x24]
	movs r4, 0x8
	ldrsh r1, [r3, r4]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r7
	strh r2, [r0, 0x26]
	adds r0, r6, 0
	bl move_anim_task_del
	b _080A8148
_080A8144:
	subs r0, r2, 0x1
	strh r0, [r3, 0xE]
_080A8148:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80A808C

	thumb_func_start sub_80A8154
sub_80A8154: @ 80A8154
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _080A8174
	ldrb r0, [r4]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0xFF
	bne _080A8178
	adds r0, r5, 0
	bl move_anim_task_del
	b _080A81C6
	.align 2, 0
_080A8174: .4byte gUnknown_03004B00
_080A8178:
	ldr r0, _080A81CC
	lsls r1, r3, 4
	adds r1, r3
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r4, 0x2]
	ldrh r2, [r1, 0x24]
	adds r0, r2
	movs r2, 0
	strh r0, [r1, 0x24]
	ldrh r0, [r4, 0x4]
	ldrh r6, [r1, 0x26]
	adds r0, r6
	strh r0, [r1, 0x26]
	ldr r0, _080A81D0
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	strh r3, [r1, 0x8]
	strh r2, [r1, 0xA]
	ldrh r0, [r4, 0x6]
	strh r0, [r1, 0xC]
	strh r2, [r1, 0xE]
	ldrh r0, [r4, 0x8]
	strh r0, [r1, 0x10]
	movs r2, 0x2
	ldrsh r0, [r4, r2]
	lsls r0, 1
	strh r0, [r1, 0x12]
	movs r6, 0x4
	ldrsh r0, [r4, r6]
	lsls r0, 1
	strh r0, [r1, 0x14]
	ldr r2, _080A81D4
	str r2, [r1]
	adds r0, r5, 0
	bl _call_via_r2
_080A81C6:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A81CC: .4byte gSprites
_080A81D0: .4byte gTasks
_080A81D4: .4byte sub_80A81D8
	thumb_func_end sub_80A8154

	thumb_func_start sub_80A81D8
sub_80A81D8: @ 80A81D8
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080A8230
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	ldrh r2, [r4, 0xE]
	movs r3, 0xE
	ldrsh r0, [r4, r3]
	adds r6, r1, 0
	cmp r0, 0
	beq _080A81F6
	b _080A8308
_080A81F6:
	ldrh r1, [r4, 0xA]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080A8238
	ldr r2, _080A8234
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r4, 0x12]
	ldrh r3, [r0, 0x24]
	adds r1, r3
	strh r1, [r0, 0x24]
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r4, 0x14]
	ldrh r3, [r0, 0x26]
	adds r1, r3
	strh r1, [r0, 0x26]
	adds r3, r2, 0
	b _080A8262
	.align 2, 0
_080A8230: .4byte gTasks
_080A8234: .4byte gSprites
_080A8238:
	ldr r3, _080A82C4
	movs r0, 0x8
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r0, 0x24]
	ldrh r2, [r4, 0x12]
	subs r1, r2
	strh r1, [r0, 0x24]
	movs r2, 0x8
	ldrsh r1, [r4, r2]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r0, 0x26]
	ldrh r2, [r4, 0x14]
	subs r1, r2
	strh r1, [r0, 0x26]
_080A8262:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r6
	ldrh r0, [r4, 0x10]
	strh r0, [r4, 0xE]
	ldrh r0, [r4, 0xA]
	adds r2, r0, 0x1
	strh r2, [r4, 0xA]
	lsls r0, r2, 16
	asrs r0, 16
	movs r6, 0xC
	ldrsh r1, [r4, r6]
	cmp r0, r1
	blt _080A830C
	movs r0, 0x1
	ands r2, r0
	cmp r2, 0
	beq _080A82C8
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	movs r2, 0x12
	ldrsh r0, [r4, r2]
	lsrs r2, r0, 31
	adds r0, r2
	asrs r0, 1
	ldrh r6, [r1, 0x24]
	adds r0, r6
	strh r0, [r1, 0x24]
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	movs r2, 0x14
	ldrsh r0, [r4, r2]
	lsrs r2, r0, 31
	adds r0, r2
	asrs r0, 1
	ldrh r3, [r1, 0x26]
	adds r0, r3
	strh r0, [r1, 0x26]
	b _080A8300
	.align 2, 0
_080A82C4: .4byte gSprites
_080A82C8:
	movs r6, 0x8
	ldrsh r0, [r4, r6]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r3
	movs r0, 0x12
	ldrsh r1, [r4, r0]
	lsrs r0, r1, 31
	adds r1, r0
	asrs r1, 1
	ldrh r0, [r2, 0x24]
	subs r0, r1
	strh r0, [r2, 0x24]
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	lsls r2, r0, 4
	adds r2, r0
	lsls r2, 2
	adds r2, r3
	movs r3, 0x14
	ldrsh r1, [r4, r3]
	lsrs r0, r1, 31
	adds r1, r0
	asrs r1, 1
	ldrh r0, [r2, 0x26]
	subs r0, r1
	strh r0, [r2, 0x26]
_080A8300:
	adds r0, r5, 0
	bl move_anim_task_del
	b _080A830C
_080A8308:
	subs r0, r2, 0x1
	strh r0, [r4, 0xE]
_080A830C:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A81D8

	thumb_func_start sub_80A8314
sub_80A8314: @ 80A8314
	push {r4,r5,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r5, _080A8364
	ldrb r0, [r5]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A8368
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	ldrh r2, [r5, 0x2]
	strh r2, [r1, 0x24]
	ldr r2, _080A836C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r2
	strh r0, [r1, 0x8]
	ldrh r0, [r5, 0x2]
	strh r0, [r1, 0xA]
	ldrh r0, [r5, 0x4]
	strh r0, [r1, 0xC]
	ldrh r0, [r5, 0x6]
	strh r0, [r1, 0xE]
	ldrh r0, [r5, 0x8]
	strh r0, [r1, 0x10]
	ldr r2, _080A8370
	str r2, [r1]
	adds r0, r4, 0
	bl _call_via_r2
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8364: .4byte gUnknown_03004B00
_080A8368: .4byte gSprites
_080A836C: .4byte gTasks
_080A8370: .4byte sub_80A8374
	thumb_func_end sub_80A8314

	thumb_func_start sub_80A8374
sub_80A8374: @ 80A8374
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r2, _080A8400
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r3, r0, r2
	ldrb r5, [r3, 0x8]
	ldrh r4, [r3, 0xA]
	ldrh r1, [r3, 0x18]
	adds r0, r1, 0x1
	strh r0, [r3, 0x18]
	movs r7, 0xC
	ldrsh r0, [r3, r7]
	lsls r1, 16
	asrs r1, 16
	mov r12, r2
	ldr r7, _080A8404
	cmp r0, r1
	bne _080A83C6
	movs r0, 0
	strh r0, [r3, 0x18]
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r1, r0, r7
	ldrh r3, [r1, 0x24]
	movs r0, 0x24
	ldrsh r2, [r1, r0]
	lsls r0, r4, 16
	asrs r0, 16
	cmp r2, r0
	bne _080A83BE
	negs r0, r2
	lsls r0, 16
	lsrs r4, r0, 16
_080A83BE:
	lsls r0, r4, 16
	asrs r0, 16
	adds r0, r3
	strh r0, [r1, 0x24]
_080A83C6:
	lsls r2, r6, 2
	adds r2, r6
	lsls r2, 3
	add r2, r12
	strh r4, [r2, 0xA]
	ldrh r1, [r2, 0xE]
	ldrh r0, [r2, 0x1A]
	adds r1, r0
	strh r1, [r2, 0x1A]
	lsls r0, r5, 4
	adds r0, r5
	lsls r0, 2
	adds r0, r7
	lsls r1, 16
	asrs r1, 24
	strh r1, [r0, 0x26]
	ldrh r0, [r2, 0x10]
	subs r0, 0x1
	strh r0, [r2, 0x10]
	lsls r0, 16
	cmp r0, 0
	bne _080A83F8
	adds r0, r6, 0
	bl move_anim_task_del
_080A83F8:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8400: .4byte gTasks
_080A8404: .4byte gSprites
	thumb_func_end sub_80A8374

	thumb_func_start sub_80A8408
sub_80A8408: @ 80A8408
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	movs r6, 0x1
	ldr r4, _080A847C
	ldrb r0, [r4]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r7, r0, 24
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0x5
	ble _080A842C
	movs r0, 0x5
	strh r0, [r4, 0x8]
_080A842C:
	movs r1, 0
	movs r2, 0x8
	ldrsh r0, [r4, r2]
	adds r3, r4, 0
	ldr r2, _080A8480
	mov r12, r2
	lsls r4, r5, 2
	ldr r2, _080A8484
	mov r8, r2
	cmp r1, r0
	bge _080A8452
	adds r2, r0, 0
_080A8444:
	lsls r0, r6, 25
	lsrs r6, r0, 24
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, r2
	blt _080A8444
_080A8452:
	adds r0, r4, r5
	lsls r0, 3
	add r0, r12
	strh r7, [r0, 0x8]
	ldrh r1, [r3, 0x2]
	strh r1, [r0, 0xA]
	ldrh r1, [r3, 0x4]
	strh r1, [r0, 0xC]
	ldrh r1, [r3, 0x6]
	strh r1, [r0, 0xE]
	strh r6, [r0, 0x10]
	mov r1, r8
	str r1, [r0]
	adds r0, r5, 0
	bl _call_via_r8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A847C: .4byte gUnknown_03004B00
_080A8480: .4byte gTasks
_080A8484: .4byte sub_80A8488
	thumb_func_end sub_80A8408

	thumb_func_start sub_80A8488
sub_80A8488: @ 80A8488
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r6, r0, 0
	ldr r1, _080A84F8
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r5, r0, r1
	ldrb r4, [r5, 0x8]
	movs r1, 0x12
	ldrsh r0, [r5, r1]
	movs r2, 0xA
	ldrsh r1, [r5, r2]
	bl Sin
	ldr r2, _080A84FC
	lsls r1, r4, 4
	adds r1, r4
	lsls r1, 2
	adds r4, r1, r2
	strh r0, [r4, 0x24]
	movs r1, 0x12
	ldrsh r0, [r5, r1]
	movs r2, 0xC
	ldrsh r1, [r5, r2]
	bl Cos
	negs r0, r0
	strh r0, [r4, 0x26]
	ldrh r1, [r5, 0xC]
	adds r0, r1
	strh r0, [r4, 0x26]
	ldrh r0, [r5, 0x10]
	ldrh r1, [r5, 0x12]
	adds r0, r1
	movs r1, 0xFF
	ands r0, r1
	strh r0, [r5, 0x12]
	cmp r0, 0
	bne _080A84E0
	ldrh r0, [r5, 0xE]
	subs r0, 0x1
	strh r0, [r5, 0xE]
_080A84E0:
	movs r2, 0xE
	ldrsh r0, [r5, r2]
	cmp r0, 0
	bne _080A84F2
	strh r0, [r4, 0x24]
	strh r0, [r4, 0x26]
	adds r0, r6, 0
	bl move_anim_task_del
_080A84F2:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A84F8: .4byte gTasks
_080A84FC: .4byte gSprites
	thumb_func_end sub_80A8488

	thumb_func_start sub_80A8500
sub_80A8500: @ 80A8500
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A8528
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A851C
	ldr r1, _080A852C
	ldrh r0, [r1, 0x2]
	negs r0, r0
	strh r0, [r1, 0x2]
_080A851C:
	adds r0, r4, 0
	bl sub_80A8408
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8528: .4byte gUnknown_0202F7C8
_080A852C: .4byte gUnknown_03004B00
	thumb_func_end sub_80A8500

	thumb_func_start sub_80A8530
sub_80A8530: @ 80A8530
	push {r4,lr}
	adds r4, r0, 0
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A8558
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8560
	ldr r1, _080A855C
	ldrh r0, [r1, 0x2]
	negs r0, r0
	b _080A8564
	.align 2, 0
_080A8558: .4byte gUnknown_0202F7C8
_080A855C: .4byte gUnknown_03004B00
_080A8560:
	ldr r1, _080A8590
	ldrh r0, [r1, 0x2]
_080A8564:
	strh r0, [r4, 0x30]
	ldrh r2, [r1]
	movs r0, 0
	strh r2, [r4, 0x2E]
	strh r0, [r4, 0x32]
	ldr r1, _080A8594
	ldr r0, _080A8598
	ldrb r0, [r0]
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r4, 0x34]
	strh r2, [r4, 0x36]
	ldr r1, _080A859C
	adds r0, r4, 0
	bl oamt_set_x3A_32
	ldr r0, _080A85A0
	str r0, [r4, 0x1C]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8590: .4byte gUnknown_03004B00
_080A8594: .4byte gUnknown_02024BE0
_080A8598: .4byte gUnknown_0202F7C8
_080A859C: .4byte sub_80A85A4
_080A85A0: .4byte sub_8078458
	thumb_func_end sub_80A8530

	thumb_func_start sub_80A85A4
sub_80A85A4: @ 80A85A4
	push {lr}
	ldrh r1, [r0, 0x36]
	strh r1, [r0, 0x2E]
	ldrh r1, [r0, 0x30]
	negs r1, r1
	strh r1, [r0, 0x30]
	ldr r1, _080A85C0
	str r1, [r0, 0x1C]
	ldr r1, _080A85C4
	bl oamt_set_x3A_32
	pop {r0}
	bx r0
	.align 2, 0
_080A85C0: .4byte sub_8078458
_080A85C4: .4byte move_anim_8072740
	thumb_func_end sub_80A85A4

	thumb_func_start sub_80A85C8
sub_80A85C8: @ 80A85C8
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _080A8608
	ldrb r0, [r5, 0x4]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	ldrh r2, [r5]
	movs r1, 0
	strh r2, [r4, 0x2E]
	strh r1, [r4, 0x30]
	ldrh r1, [r5, 0x2]
	strh r1, [r4, 0x32]
	strh r0, [r4, 0x34]
	strh r2, [r4, 0x36]
	ldr r1, _080A860C
	adds r0, r4, 0
	bl oamt_set_x3A_32
	ldr r0, _080A8610
	str r0, [r4, 0x1C]
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8608: .4byte gUnknown_03004B00
_080A860C: .4byte sub_80A8614
_080A8610: .4byte sub_8078458
	thumb_func_end sub_80A85C8

	thumb_func_start sub_80A8614
sub_80A8614: @ 80A8614
	push {lr}
	ldrh r1, [r0, 0x36]
	strh r1, [r0, 0x2E]
	ldrh r1, [r0, 0x32]
	negs r1, r1
	strh r1, [r0, 0x32]
	ldr r1, _080A8630
	str r1, [r0, 0x1C]
	ldr r1, _080A8634
	bl oamt_set_x3A_32
	pop {r0}
	bx r0
	.align 2, 0
_080A8630: .4byte sub_8078458
_080A8634: .4byte move_anim_8072740
	thumb_func_end sub_80A8614

	thumb_func_start sub_80A8638
sub_80A8638: @ 80A8638
	push {r4-r7,lr}
	sub sp, 0x4
	adds r6, r0, 0
	ldr r0, _080A8650
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _080A865C
	ldr r1, _080A8654
	ldr r0, _080A8658
	b _080A8660
	.align 2, 0
_080A8650: .4byte gUnknown_03004B00
_080A8654: .4byte gUnknown_02024BE0
_080A8658: .4byte gUnknown_0202F7C8
_080A865C:
	ldr r1, _080A86C0
	ldr r0, _080A86C4
_080A8660:
	ldrb r0, [r0]
	adds r0, r1
	ldrb r7, [r0]
	ldr r5, _080A86C8
	ldrh r0, [r5, 0x4]
	movs r3, 0
	strh r0, [r6, 0x2E]
	ldr r0, _080A86CC
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	adds r4, r0
	ldrh r0, [r4, 0x24]
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r6, 0x30]
	ldrh r0, [r4, 0x20]
	strh r0, [r6, 0x32]
	ldrh r0, [r4, 0x26]
	ldrh r1, [r4, 0x22]
	adds r0, r1
	strh r0, [r6, 0x34]
	ldrh r0, [r4, 0x22]
	strh r0, [r6, 0x36]
	adds r0, r6, 0
	str r3, [sp]
	bl sub_8078A5C
	ldr r3, [sp]
	strh r3, [r6, 0x34]
	strh r3, [r6, 0x36]
	ldrh r0, [r4, 0x24]
	strh r0, [r6, 0x38]
	ldrh r0, [r4, 0x26]
	strh r0, [r6, 0x3A]
	adds r2, r6, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	movs r1, 0x2
	ldrsh r0, [r5, r1]
	cmp r0, 0x1
	bne _080A86D0
	strh r3, [r6, 0x32]
	b _080A86D6
	.align 2, 0
_080A86C0: .4byte gUnknown_02024BE0
_080A86C4: .4byte gUnknown_0202F7C9
_080A86C8: .4byte gUnknown_03004B00
_080A86CC: .4byte gSprites
_080A86D0:
	cmp r0, 0x2
	bne _080A86D6
	strh r3, [r6, 0x30]
_080A86D6:
	ldr r0, _080A86EC
	ldrh r1, [r0, 0x2]
	lsls r0, r7, 8
	orrs r0, r1
	strh r0, [r6, 0x3C]
	ldr r0, _080A86F0
	str r0, [r6, 0x1C]
	add sp, 0x4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A86EC: .4byte gUnknown_03004B00
_080A86F0: .4byte sub_80A86F4
	thumb_func_end sub_80A8638

	thumb_func_start sub_80A86F4
sub_80A86F4: @ 80A86F4
	push {r4-r6,lr}
	adds r2, r0, 0
	ldrh r0, [r2, 0x3C]
	lsls r1, r0, 24
	lsrs r4, r1, 24
	adds r5, r4, 0
	lsls r0, 16
	asrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	ldr r0, _080A8730
	adds r3, r1, r0
	ldrh r0, [r2, 0x2E]
	movs r6, 0x2E
	ldrsh r1, [r2, r6]
	cmp r1, 0
	bne _080A8734
	cmp r4, 0x1
	bhi _080A871E
	strh r1, [r3, 0x24]
_080A871E:
	cmp r5, 0x2
	beq _080A8726
	cmp r5, 0
	bne _080A8728
_080A8726:
	strh r1, [r3, 0x26]
_080A8728:
	adds r0, r2, 0
	bl move_anim_8072740
	b _080A875E
	.align 2, 0
_080A8730: .4byte gSprites
_080A8734:
	subs r0, 0x1
	strh r0, [r2, 0x2E]
	ldrh r1, [r2, 0x30]
	ldrh r0, [r2, 0x34]
	adds r1, r0
	strh r1, [r2, 0x34]
	ldrh r0, [r2, 0x32]
	ldrh r4, [r2, 0x36]
	adds r0, r4
	strh r0, [r2, 0x36]
	lsls r1, 16
	asrs r1, 24
	ldrh r6, [r2, 0x38]
	adds r1, r6
	strh r1, [r3, 0x24]
	ldrh r0, [r2, 0x36]
	lsls r0, 16
	asrs r0, 24
	ldrh r2, [r2, 0x3A]
	adds r0, r2
	strh r0, [r3, 0x26]
_080A875E:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A86F4

	thumb_func_start sub_80A8764
sub_80A8764: @ 80A8764
	push {r4-r6,lr}
	adds r5, r0, 0
	ldr r0, _080A8778
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _080A8780
	ldr r0, _080A877C
	b _080A8782
	.align 2, 0
_080A8778: .4byte gUnknown_03004B00
_080A877C: .4byte gUnknown_0202F7C8
_080A8780:
	ldr r0, _080A8800
_080A8782:
	ldrb r2, [r0]
	ldr r0, _080A8804
	adds r0, r2, r0
	ldrb r6, [r0]
	adds r0, r2, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A87AC
	ldr r1, _080A8808
	ldrh r0, [r1, 0x2]
	negs r0, r0
	strh r0, [r1, 0x2]
	movs r2, 0x6
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	bne _080A87AC
	ldrh r0, [r1, 0x4]
	negs r0, r0
	strh r0, [r1, 0x4]
_080A87AC:
	ldr r2, _080A8808
	ldrh r0, [r2, 0x8]
	movs r4, 0
	strh r0, [r5, 0x2E]
	ldr r0, _080A880C
	lsls r1, r6, 4
	adds r1, r6
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x20]
	strh r0, [r5, 0x30]
	ldrh r0, [r2, 0x2]
	ldrh r3, [r1, 0x20]
	adds r0, r3
	strh r0, [r5, 0x32]
	ldrh r0, [r1, 0x22]
	strh r0, [r5, 0x34]
	ldrh r0, [r2, 0x4]
	ldrh r1, [r1, 0x22]
	adds r0, r1
	strh r0, [r5, 0x36]
	adds r0, r5, 0
	bl sub_8078A5C
	strh r4, [r5, 0x34]
	strh r4, [r5, 0x36]
	strh r6, [r5, 0x38]
	adds r2, r5, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080A8810
	adds r0, r5, 0
	bl oamt_set_x3A_32
	ldr r0, _080A8814
	str r0, [r5, 0x1C]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8800: .4byte gUnknown_0202F7C9
_080A8804: .4byte gUnknown_02024BE0
_080A8808: .4byte gUnknown_03004B00
_080A880C: .4byte gSprites
_080A8810: .4byte move_anim_8072740
_080A8814: .4byte sub_80784A8
	thumb_func_end sub_80A8764

	thumb_func_start sub_80A8818
sub_80A8818: @ 80A8818
	push {r4-r7,lr}
	adds r6, r0, 0
	adds r2, r6, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080A8838
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bne _080A8840
	ldr r0, _080A883C
	b _080A8842
	.align 2, 0
_080A8838: .4byte gUnknown_03004B00
_080A883C: .4byte gUnknown_0202F7C8
_080A8840:
	ldr r0, _080A88C0
_080A8842:
	ldrb r1, [r0]
	ldr r0, _080A88C4
	adds r0, r1, r0
	ldrb r7, [r0]
	adds r0, r1, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A886C
	ldr r1, _080A88C8
	ldrh r0, [r1, 0x2]
	negs r0, r0
	strh r0, [r1, 0x2]
	movs r2, 0x6
	ldrsh r0, [r1, r2]
	cmp r0, 0x1
	bne _080A886C
	ldrh r0, [r1, 0x4]
	negs r0, r0
	strh r0, [r1, 0x4]
_080A886C:
	ldr r5, _080A88C8
	ldrh r0, [r5, 0x8]
	strh r0, [r6, 0x2E]
	ldr r0, _080A88CC
	lsls r4, r7, 4
	adds r4, r7
	lsls r4, 2
	adds r4, r0
	ldrh r0, [r4, 0x24]
	ldrh r1, [r4, 0x20]
	adds r0, r1
	strh r0, [r6, 0x30]
	ldrh r1, [r5, 0x2]
	adds r0, r1
	strh r0, [r6, 0x32]
	ldrh r0, [r4, 0x26]
	ldrh r2, [r4, 0x22]
	adds r0, r2
	strh r0, [r6, 0x34]
	ldrh r1, [r5, 0x4]
	adds r0, r1
	strh r0, [r6, 0x36]
	adds r0, r6, 0
	bl sub_8078A5C
	ldrh r0, [r4, 0x24]
	lsls r0, 8
	strh r0, [r6, 0x34]
	ldrh r0, [r4, 0x26]
	lsls r0, 8
	strh r0, [r6, 0x36]
	strh r7, [r6, 0x38]
	ldrh r0, [r5, 0xA]
	strh r0, [r6, 0x3A]
	lsls r0, 16
	cmp r0, 0
	bne _080A88D4
	ldr r1, _080A88D0
	adds r0, r6, 0
	bl oamt_set_x3A_32
	b _080A88DC
	.align 2, 0
_080A88C0: .4byte gUnknown_0202F7C9
_080A88C4: .4byte gUnknown_02024BE0
_080A88C8: .4byte gUnknown_03004B00
_080A88CC: .4byte gSprites
_080A88D0: .4byte move_anim_8072740
_080A88D4:
	ldr r1, _080A88E8
	adds r0, r6, 0
	bl oamt_set_x3A_32
_080A88DC:
	ldr r0, _080A88EC
	str r0, [r6, 0x1C]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A88E8: .4byte sub_80A88F0
_080A88EC: .4byte sub_80784A8
	thumb_func_end sub_80A8818

	thumb_func_start sub_80A88F0
sub_80A88F0: @ 80A88F0
	push {r4,lr}
	ldr r4, _080A891C
	movs r1, 0x38
	ldrsh r2, [r0, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	movs r3, 0
	strh r3, [r1, 0x24]
	movs r1, 0x38
	ldrsh r2, [r0, r1]
	lsls r1, r2, 4
	adds r1, r2
	lsls r1, 2
	adds r1, r4
	strh r3, [r1, 0x26]
	bl move_anim_8072740
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A891C: .4byte gSprites
	thumb_func_end sub_80A88F0

	thumb_func_start sub_80A8920
sub_80A8920: @ 80A8920
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r5, _080A89A4
	movs r0, 0x6
	ldrsh r1, [r5, r0]
	movs r0, 0x80
	lsls r0, 8
	bl __divsi3
	lsls r0, 16
	lsrs r7, r0, 16
	ldr r0, _080A89A8
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8952
	ldrh r0, [r5, 0x2]
	negs r0, r0
	strh r0, [r5, 0x2]
	ldrh r0, [r5, 0xA]
	negs r0, r0
	strh r0, [r5, 0xA]
_080A8952:
	ldrb r0, [r5]
	bl obj_id_for_side_relative_to_move
	ldr r1, _080A89AC
	lsls r4, r6, 2
	adds r4, r6
	lsls r4, 3
	adds r4, r1
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x8]
	movs r1, 0x2
	ldrsh r0, [r5, r1]
	lsls r0, 8
	movs r2, 0x6
	ldrsh r1, [r5, r2]
	bl __divsi3
	strh r0, [r4, 0xA]
	ldrh r0, [r5, 0x4]
	strh r0, [r4, 0xC]
	ldrh r0, [r5, 0x6]
	strh r0, [r4, 0xE]
	ldrh r0, [r5, 0x8]
	strh r0, [r4, 0x10]
	movs r1, 0xA
	ldrsh r0, [r5, r1]
	lsls r0, 8
	movs r2, 0xC
	ldrsh r1, [r5, r2]
	bl __divsi3
	strh r0, [r4, 0x12]
	ldrh r0, [r5, 0xC]
	strh r0, [r4, 0x14]
	strh r7, [r4, 0x16]
	ldr r0, _080A89B0
	str r0, [r4]
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A89A4: .4byte gUnknown_03004B00
_080A89A8: .4byte gUnknown_0202F7C8
_080A89AC: .4byte gTasks
_080A89B0: .4byte sub_80A89B4
	thumb_func_end sub_80A8920

	thumb_func_start sub_80A89B4
sub_80A89B4: @ 80A89B4
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A8A0C
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r5, r1, r2
	ldrb r1, [r5, 0x8]
	ldrh r0, [r5, 0xA]
	ldrh r2, [r5, 0x1E]
	adds r0, r2
	strh r0, [r5, 0x1E]
	ldr r2, _080A8A10
	lsls r4, r1, 4
	adds r4, r1
	lsls r4, 2
	adds r4, r2
	lsls r0, 16
	asrs r0, 24
	strh r0, [r4, 0x24]
	ldrh r0, [r5, 0x1C]
	lsrs r0, 8
	movs r2, 0xC
	ldrsh r1, [r5, r2]
	bl Sin
	strh r0, [r4, 0x26]
	ldrh r0, [r5, 0x16]
	ldrh r1, [r5, 0x1C]
	adds r0, r1
	strh r0, [r5, 0x1C]
	ldrh r0, [r5, 0xE]
	subs r0, 0x1
	strh r0, [r5, 0xE]
	lsls r0, 16
	cmp r0, 0
	bne _080A8A04
	ldr r0, _080A8A14
	str r0, [r5]
_080A8A04:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8A0C: .4byte gTasks
_080A8A10: .4byte gSprites
_080A8A14: .4byte sub_80A8A18
	thumb_func_end sub_80A89B4

	thumb_func_start sub_80A8A18
sub_80A8A18: @ 80A8A18
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	ldr r1, _080A8A3C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	ldrh r1, [r4, 0x10]
	movs r2, 0x10
	ldrsh r0, [r4, r2]
	cmp r0, 0
	ble _080A8A40
	subs r0, r1, 0x1
	strh r0, [r4, 0x10]
	b _080A8A74
	.align 2, 0
_080A8A3C: .4byte gTasks
_080A8A40:
	ldrb r0, [r4, 0x8]
	ldrh r2, [r4, 0x12]
	ldrh r1, [r4, 0x20]
	adds r2, r1
	strh r2, [r4, 0x20]
	ldr r3, _080A8A7C
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r3
	lsls r2, 16
	asrs r2, 24
	ldrh r0, [r4, 0x1E]
	lsls r0, 16
	asrs r0, 24
	adds r2, r0
	strh r2, [r1, 0x24]
	ldrh r0, [r4, 0x14]
	subs r0, 0x1
	strh r0, [r4, 0x14]
	lsls r0, 16
	cmp r0, 0
	bne _080A8A74
	adds r0, r5, 0
	bl move_anim_task_del
_080A8A74:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A8A7C: .4byte gSprites
	thumb_func_end sub_80A8A18

	thumb_func_start sub_80A8A80
sub_80A8A80: @ 80A8A80
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080A8AA4
	movs r2, 0
	ldrsh r0, [r1, r2]
	cmp r0, 0x2
	beq _080A8AAE
	cmp r0, 0x2
	bgt _080A8AA8
	cmp r0, 0
	blt _080A8AE0
	ldrb r0, [r1]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r2, r0, 24
	b _080A8AE8
	.align 2, 0
_080A8AA4: .4byte gUnknown_03004B00
_080A8AA8:
	cmp r0, 0x3
	beq _080A8AB8
	b _080A8AE0
_080A8AAE:
	ldr r5, _080A8AB4
	b _080A8ABA
	.align 2, 0
_080A8AB4: .4byte gUnknown_0202F7C8
_080A8AB8:
	ldr r5, _080A8AD8
_080A8ABA:
	ldrb r0, [r5]
	movs r4, 0x2
	eors r0, r4
	bl b_side_obj__get_some_boolean
	lsls r0, 24
	cmp r0, 0
	beq _080A8AE0
	ldr r1, _080A8ADC
	ldrb r0, [r5]
	eors r0, r4
	adds r0, r1
	ldrb r2, [r0]
	b _080A8AE8
	.align 2, 0
_080A8AD8: .4byte gUnknown_0202F7C9
_080A8ADC: .4byte gUnknown_02024BE0
_080A8AE0:
	adds r0, r6, 0
	bl move_anim_task_del
	b _080A8B28
_080A8AE8:
	ldr r1, _080A8B08
	lsls r4, r6, 2
	adds r0, r4, r6
	lsls r0, 3
	adds r5, r0, r1
	strh r2, [r5, 0x8]
	ldr r0, _080A8B0C
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8B14
	ldr r0, _080A8B10
	ldrh r0, [r0, 0x2]
	b _080A8B1A
	.align 2, 0
_080A8B08: .4byte gTasks
_080A8B0C: .4byte gUnknown_0202F7C9
_080A8B10: .4byte gUnknown_03004B00
_080A8B14:
	ldr r0, _080A8B30
	ldrh r0, [r0, 0x2]
	negs r0, r0
_080A8B1A:
	strh r0, [r5, 0xA]
	ldr r0, _080A8B34
	adds r1, r4, r6
	lsls r1, 3
	adds r1, r0
	ldr r0, _080A8B38
	str r0, [r1]
_080A8B28:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8B30: .4byte gUnknown_03004B00
_080A8B34: .4byte gTasks
_080A8B38: .4byte sub_80A8B3C
	thumb_func_end sub_80A8A80

	thumb_func_start sub_80A8B3C
sub_80A8B3C: @ 80A8B3C
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A8B80
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldrb r2, [r1, 0x8]
	ldr r3, _080A8B84
	lsls r0, r2, 4
	adds r0, r2
	lsls r0, 2
	adds r0, r3
	ldrh r1, [r1, 0xA]
	ldrh r2, [r0, 0x24]
	adds r1, r2
	strh r1, [r0, 0x24]
	movs r2, 0x24
	ldrsh r1, [r0, r2]
	movs r2, 0x20
	ldrsh r0, [r0, r2]
	adds r1, r0
	adds r1, 0x20
	movs r0, 0x98
	lsls r0, 1
	cmp r1, r0
	bls _080A8B7A
	adds r0, r4, 0
	bl move_anim_task_del
_080A8B7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8B80: .4byte gTasks
_080A8B84: .4byte gSprites
	thumb_func_end sub_80A8B3C

	thumb_func_start sub_80A8B88
sub_80A8B88: @ 80A8B88
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r6, _080A8BD8
	ldrb r0, [r6]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8BA4
	ldr r1, _080A8BDC
	ldrh r0, [r1, 0x2]
	negs r0, r0
	strh r0, [r1, 0x2]
_080A8BA4:
	ldr r4, _080A8BDC
	ldrb r0, [r4, 0x8]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A8BE0
	lsls r3, r5, 2
	adds r1, r3, r5
	lsls r1, 3
	adds r2, r1, r2
	ldrh r1, [r4]
	strh r1, [r2, 0x8]
	ldrh r1, [r4, 0x2]
	strh r1, [r2, 0xA]
	ldrh r1, [r4, 0x4]
	strh r1, [r2, 0xC]
	ldrh r1, [r4, 0x6]
	strh r1, [r2, 0xE]
	strh r0, [r2, 0x10]
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080A8BE4
	ldrb r0, [r6]
	b _080A8BE8
	.align 2, 0
_080A8BD8: .4byte gUnknown_0202F7C8
_080A8BDC: .4byte gUnknown_03004B00
_080A8BE0: .4byte gTasks
_080A8BE4:
	ldr r0, _080A8C00
	ldrb r0, [r0]
_080A8BE8:
	strh r0, [r2, 0x12]
	ldr r1, _080A8C04
	adds r0, r3, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0x1
	strh r1, [r0, 0x20]
	ldr r1, _080A8C08
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8C00: .4byte gUnknown_0202F7C9
_080A8C04: .4byte gTasks
_080A8C08: .4byte sub_80A8C0C
	thumb_func_end sub_80A8B88

	thumb_func_start sub_80A8C0C
sub_80A8C0C: @ 80A8C0C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080A8C5C
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r4, r0, r1
	ldrb r7, [r4, 0x10]
	ldrh r0, [r4, 0xC]
	ldrh r1, [r4, 0x1C]
	adds r0, r1
	lsls r1, r0, 16
	strh r0, [r4, 0x1C]
	lsrs r1, 24
	mov r8, r1
	mov r0, r8
	movs r2, 0xA
	ldrsh r1, [r4, r2]
	bl Sin
	lsls r0, 16
	lsrs r5, r0, 16
	mov r9, r5
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080A8C64
	ldr r0, _080A8C60
	lsls r2, r7, 4
	adds r1, r2, r7
	lsls r1, 2
	adds r1, r0
	strh r5, [r1, 0x24]
	mov r9, r0
	adds r4, r2, 0
	b _080A8CAA
	.align 2, 0
_080A8C5C: .4byte gTasks
_080A8C60: .4byte gSprites
_080A8C64:
	ldrb r0, [r4, 0x12]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080A8C8C
	ldr r1, _080A8C88
	lsls r2, r7, 4
	adds r0, r2, r7
	lsls r0, 2
	adds r3, r0, r1
	lsls r0, r5, 16
	asrs r0, 16
	mov r9, r1
	adds r4, r2, 0
	cmp r0, 0
	bge _080A8CA8
	b _080A8CA6
	.align 2, 0
_080A8C88: .4byte gSprites
_080A8C8C:
	ldr r1, _080A8D2C
	lsls r2, r7, 4
	adds r0, r2, r7
	lsls r0, 2
	adds r3, r0, r1
	mov r4, r9
	lsls r0, r4, 16
	asrs r0, 16
	mov r9, r1
	adds r4, r2, 0
	cmp r0, 0
	bge _080A8CA6
	negs r0, r0
_080A8CA6:
	negs r0, r0
_080A8CA8:
	strh r0, [r3, 0x26]
_080A8CAA:
	mov r5, r8
	cmp r5, 0x7F
	bls _080A8CCC
	ldr r1, _080A8D30
	lsls r2, r6, 2
	adds r0, r2, r6
	lsls r0, 3
	adds r3, r0, r1
	movs r5, 0x1E
	ldrsh r0, [r3, r5]
	adds r5, r1, 0
	cmp r0, 0
	bne _080A8CCC
	movs r1, 0x20
	ldrsh r0, [r3, r1]
	cmp r0, 0x1
	beq _080A8CEE
_080A8CCC:
	mov r2, r8
	cmp r2, 0x7E
	bhi _080A8D20
	ldr r1, _080A8D30
	lsls r2, r6, 2
	adds r0, r2, r6
	lsls r0, 3
	adds r3, r0, r1
	movs r5, 0x1E
	ldrsh r0, [r3, r5]
	adds r5, r1, 0
	cmp r0, 0x1
	bne _080A8D20
	movs r1, 0x20
	ldrsh r0, [r3, r1]
	cmp r0, 0
	bne _080A8D20
_080A8CEE:
	adds r1, r2, r6
	lsls r1, 3
	adds r1, r5
	ldrh r0, [r1, 0x1E]
	movs r2, 0x1
	eors r0, r2
	strh r0, [r1, 0x1E]
	ldrh r0, [r1, 0x20]
	eors r0, r2
	strh r0, [r1, 0x20]
	ldrh r0, [r1, 0xE]
	subs r0, 0x1
	strh r0, [r1, 0xE]
	lsls r0, 16
	asrs r3, r0, 16
	cmp r3, 0
	bne _080A8D20
	adds r0, r4, r7
	lsls r0, 2
	add r0, r9
	strh r3, [r0, 0x24]
	strh r3, [r0, 0x26]
	adds r0, r6, 0
	bl move_anim_task_del
_080A8D20:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8D2C: .4byte gSprites
_080A8D30: .4byte gTasks
	thumb_func_end sub_80A8C0C

	thumb_func_start sub_80A8D34
sub_80A8D34: @ 80A8D34
	push {r4-r6,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r6, _080A8D80
	ldrb r0, [r6, 0x6]
	bl obj_id_for_side_relative_to_move
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldrb r1, [r6, 0x8]
	adds r0, r5, 0
	bl sub_8078E70
	ldr r1, _080A8D84
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r6]
	strh r1, [r0, 0x8]
	ldrh r1, [r6, 0x2]
	strh r1, [r0, 0xA]
	ldrh r1, [r6, 0x4]
	strh r1, [r0, 0xC]
	ldrh r1, [r6, 0x4]
	strh r1, [r0, 0xE]
	strh r5, [r0, 0x10]
	movs r1, 0x80
	lsls r1, 1
	strh r1, [r0, 0x1C]
	strh r1, [r0, 0x1E]
	ldr r1, _080A8D88
	str r1, [r0]
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A8D80: .4byte gUnknown_03004B00
_080A8D84: .4byte gTasks
_080A8D88: .4byte sub_80A8D8C
	thumb_func_end sub_80A8D34

	thumb_func_start sub_80A8D8C
sub_80A8D8C: @ 80A8D8C
	push {r4-r6,lr}
	lsls r0, 24
	lsrs r0, 24
	adds r5, r0, 0
	ldr r1, _080A8DEC
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	ldrh r0, [r4, 0x8]
	ldrh r1, [r4, 0x1C]
	adds r0, r1
	strh r0, [r4, 0x1C]
	ldrh r0, [r4, 0xA]
	ldrh r3, [r4, 0x1E]
	adds r0, r3
	strh r0, [r4, 0x1E]
	ldrb r0, [r4, 0x10]
	adds r6, r0, 0
	movs r0, 0x1C
	ldrsh r1, [r4, r0]
	movs r3, 0x1E
	ldrsh r2, [r4, r3]
	adds r0, r6, 0
	movs r3, 0
	bl obj_id_set_rotscale
	ldrh r0, [r4, 0xC]
	subs r0, 0x1
	strh r0, [r4, 0xC]
	lsls r0, 16
	asrs r1, r0, 16
	cmp r1, 0
	bne _080A8DFC
	ldrh r2, [r4, 0xE]
	movs r3, 0xE
	ldrsh r0, [r4, r3]
	cmp r0, 0
	ble _080A8DF0
	ldrh r0, [r4, 0x8]
	negs r0, r0
	strh r0, [r4, 0x8]
	ldrh r0, [r4, 0xA]
	negs r0, r0
	strh r0, [r4, 0xA]
	strh r2, [r4, 0xC]
	strh r1, [r4, 0xE]
	b _080A8DFC
	.align 2, 0
_080A8DEC: .4byte gTasks
_080A8DF0:
	adds r0, r6, 0
	bl sub_8078F40
	adds r0, r5, 0
	bl move_anim_task_del
_080A8DFC:
	pop {r4-r6}
	pop {r0}
	bx r0
	thumb_func_end sub_80A8D8C

	thumb_func_start sub_80A8E04
sub_80A8E04: @ 80A8E04
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r4, _080A8E40
	ldrb r0, [r4, 0x4]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r1, 0
	bl sub_8078E70
	ldr r1, _080A8E44
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r2, r0, r1
	movs r1, 0
	strh r1, [r2, 0xA]
	ldrh r0, [r4]
	strh r0, [r2, 0xC]
	movs r3, 0x6
	ldrsh r0, [r4, r3]
	cmp r0, 0x1
	beq _080A8E48
	strh r1, [r2, 0xE]
	b _080A8E54
	.align 2, 0
_080A8E40: .4byte gUnknown_03004B00
_080A8E44: .4byte gTasks
_080A8E48:
	ldrh r0, [r4]
	ldrh r1, [r4, 0x2]
	adds r3, r0, 0
	muls r3, r1
	adds r0, r3, 0
	strh r0, [r2, 0xE]
_080A8E54:
	ldr r1, _080A8E80
	lsls r4, r7, 2
	adds r0, r4, r7
	lsls r0, 3
	adds r5, r0, r1
	ldr r6, _080A8E84
	ldrh r0, [r6, 0x2]
	strh r0, [r5, 0x10]
	mov r0, r8
	strh r0, [r5, 0x12]
	ldrh r0, [r6, 0x6]
	strh r0, [r5, 0x14]
	bl sub_8076BE0
	lsls r0, 24
	mov r8, r4
	cmp r0, 0
	beq _080A8E88
	movs r0, 0x1
	strh r0, [r5, 0x16]
	b _080A8EAC
	.align 2, 0
_080A8E80: .4byte gTasks
_080A8E84: .4byte gUnknown_03004B00
_080A8E88:
	movs r1, 0x4
	ldrsh r0, [r6, r1]
	cmp r0, 0
	bne _080A8E98
	ldr r0, _080A8E94
	b _080A8E9A
	.align 2, 0
_080A8E94: .4byte gUnknown_0202F7C8
_080A8E98:
	ldr r0, _080A8EF0
_080A8E9A:
	ldrb r0, [r0]
	bl battle_side_get_owner
	movs r1, 0
	lsls r0, 24
	cmp r0, 0
	bne _080A8EAA
	movs r1, 0x1
_080A8EAA:
	strh r1, [r5, 0x16]
_080A8EAC:
	ldr r0, _080A8EF4
	mov r2, r8
	adds r1, r2, r7
	lsls r1, 3
	adds r4, r1, r0
	movs r3, 0x16
	ldrsh r0, [r4, r3]
	cmp r0, 0
	beq _080A8ED8
	bl sub_8076BE0
	lsls r0, 24
	cmp r0, 0
	bne _080A8ED8
	movs r1, 0xE
	ldrsh r0, [r4, r1]
	negs r0, r0
	strh r0, [r4, 0xE]
	movs r2, 0x10
	ldrsh r0, [r4, r2]
	negs r0, r0
	strh r0, [r4, 0x10]
_080A8ED8:
	ldr r0, _080A8EF4
	mov r3, r8
	adds r1, r3, r7
	lsls r1, 3
	adds r1, r0
	ldr r0, _080A8EF8
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8EF0: .4byte gUnknown_0202F7C9
_080A8EF4: .4byte gTasks
_080A8EF8: .4byte sub_80A8FD8
	thumb_func_end sub_80A8E04

	thumb_func_start sub_80A8EFC
sub_80A8EFC: @ 80A8EFC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r4, _080A8F38
	ldrb r0, [r4, 0x4]
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	movs r1, 0
	bl sub_8078E70
	ldr r1, _080A8F3C
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0xA]
	ldrh r1, [r4]
	strh r1, [r0, 0xC]
	movs r1, 0x4
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080A8F44
	ldr r0, _080A8F40
	b _080A8F46
	.align 2, 0
_080A8F38: .4byte gUnknown_03004B00
_080A8F3C: .4byte gTasks
_080A8F40: .4byte gUnknown_0202F7C8
_080A8F44:
	ldr r0, _080A8F74
_080A8F46:
	ldrb r0, [r0]
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	beq _080A8F58
	ldrh r0, [r4, 0x2]
	negs r0, r0
	strh r0, [r4, 0x2]
_080A8F58:
	ldr r0, _080A8F78
	movs r2, 0x6
	ldrsh r1, [r0, r2]
	adds r6, r0, 0
	cmp r1, 0x1
	beq _080A8F80
	ldr r2, _080A8F7C
	lsls r3, r5, 2
	adds r0, r3, r5
	lsls r0, 3
	adds r0, r2
	movs r1, 0
	strh r1, [r0, 0xE]
	b _080A8F9A
	.align 2, 0
_080A8F74: .4byte gUnknown_0202F7C9
_080A8F78: .4byte gUnknown_03004B00
_080A8F7C: .4byte gTasks
_080A8F80:
	ldr r3, _080A8FD0
	lsls r4, r5, 2
	adds r0, r4, r5
	lsls r0, 3
	adds r0, r3
	ldrh r2, [r6]
	ldrh r1, [r6, 0x2]
	adds r7, r2, 0
	muls r7, r1
	adds r1, r7, 0
	strh r1, [r0, 0xE]
	adds r2, r3, 0
	adds r3, r4, 0
_080A8F9A:
	adds r1, r3, r5
	lsls r1, 3
	adds r1, r2
	ldrh r0, [r6, 0x2]
	strh r0, [r1, 0x10]
	mov r0, r8
	strh r0, [r1, 0x12]
	ldrh r0, [r6, 0x6]
	strh r0, [r1, 0x14]
	movs r0, 0x1
	strh r0, [r1, 0x16]
	movs r2, 0xE
	ldrsh r0, [r1, r2]
	negs r0, r0
	strh r0, [r1, 0xE]
	movs r7, 0x10
	ldrsh r0, [r1, r7]
	negs r0, r0
	strh r0, [r1, 0x10]
	ldr r0, _080A8FD4
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A8FD0: .4byte gTasks
_080A8FD4: .4byte sub_80A8FD8
	thumb_func_end sub_80A8EFC

	thumb_func_start sub_80A8FD8
sub_80A8FD8: @ 80A8FD8
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080A9030
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r4, r0, r1
	ldrh r0, [r4, 0x10]
	ldrh r1, [r4, 0xE]
	adds r0, r1
	strh r0, [r4, 0xE]
	ldrb r0, [r4, 0x12]
	movs r2, 0x80
	lsls r2, 1
	ldrh r3, [r4, 0xE]
	adds r1, r2, 0
	bl obj_id_set_rotscale
	movs r2, 0x16
	ldrsh r0, [r4, r2]
	cmp r0, 0
	beq _080A900C
	ldrb r0, [r4, 0x12]
	bl sub_8078F9C
_080A900C:
	ldrh r0, [r4, 0xA]
	adds r0, 0x1
	strh r0, [r4, 0xA]
	lsls r0, 16
	asrs r0, 16
	movs r2, 0xC
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _080A9052
	movs r1, 0x14
	ldrsh r0, [r4, r1]
	cmp r0, 0x1
	beq _080A9034
	cmp r0, 0x1
	ble _080A903A
	cmp r0, 0x2
	beq _080A9042
	b _080A903A
	.align 2, 0
_080A9030: .4byte gTasks
_080A9034:
	ldrb r0, [r4, 0x12]
	bl sub_8078F40
_080A903A:
	adds r0, r5, 0
	bl move_anim_task_del
	b _080A9052
_080A9042:
	movs r0, 0
	strh r0, [r4, 0xA]
	movs r2, 0x10
	ldrsh r0, [r4, r2]
	negs r0, r0
	strh r0, [r4, 0x10]
	movs r0, 0x1
	strh r0, [r4, 0x14]
_080A9052:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80A8FD8

	thumb_func_start sub_80A9058
sub_80A9058: @ 80A9058
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _080A9084
	movs r2, 0
	ldrsh r1, [r0, r2]
	mov r8, r0
	cmp r1, 0
	bne _080A9090
	ldr r4, _080A9088
	lsls r5, r7, 2
	adds r0, r5, r7
	lsls r0, 3
	adds r6, r0, r4
	ldr r0, _080A908C
	ldrh r0, [r0]
	movs r1, 0xC
	bl __udivsi3
	b _080A90A4
	.align 2, 0
_080A9084: .4byte gUnknown_03004B00
_080A9088: .4byte gTasks
_080A908C: .4byte gUnknown_0202F7BC
_080A9090:
	ldr r4, _080A912C
	lsls r5, r7, 2
	adds r0, r5, r7
	lsls r0, 3
	adds r6, r0, r4
	ldr r0, _080A9130
	ldr r0, [r0]
	movs r1, 0xC
	bl __divsi3
_080A90A4:
	strh r0, [r6, 0x26]
	lsls r0, 16
	adds r1, r4, 0
	cmp r0, 0
	bgt _080A90B2
	movs r0, 0x1
	strh r0, [r6, 0x26]
_080A90B2:
	movs r2, 0x26
	ldrsh r0, [r6, r2]
	cmp r0, 0x10
	ble _080A90BE
	movs r0, 0x10
	strh r0, [r6, 0x26]
_080A90BE:
	adds r4, r5, r7
	lsls r4, 3
	adds r4, r1
	movs r0, 0x26
	ldrsh r1, [r4, r0]
	lsrs r0, r1, 31
	adds r1, r0
	asrs r1, 1
	movs r5, 0
	strh r1, [r4, 0x24]
	ldrh r2, [r4, 0x26]
	movs r0, 0x1
	ands r0, r2
	adds r1, r0
	strh r1, [r4, 0x22]
	strh r5, [r4, 0x20]
	mov r1, r8
	ldrh r0, [r1, 0x6]
	strh r0, [r4, 0x1C]
	ldrh r0, [r1, 0x8]
	strh r0, [r4, 0x1E]
	movs r0, 0x1
	bl obj_id_for_side_relative_to_move
	lsls r0, 24
	lsrs r0, 24
	strh r0, [r4, 0x16]
	ldr r2, _080A9134
	movs r0, 0x16
	ldrsh r1, [r4, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x24]
	strh r0, [r4, 0x18]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r0, [r0, 0x26]
	strh r0, [r4, 0x1A]
	strh r5, [r4, 0x8]
	mov r1, r8
	ldrh r0, [r1, 0x2]
	strh r0, [r4, 0xA]
	ldrh r0, [r1, 0x4]
	strh r0, [r4, 0xC]
	ldr r0, _080A9138
	str r0, [r4]
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A912C: .4byte gTasks
_080A9130: .4byte gUnknown_0202F7B8
_080A9134: .4byte gSprites
_080A9138: .4byte sub_80A913C
	thumb_func_end sub_80A9058

	thumb_func_start sub_80A913C
sub_80A913C: @ 80A913C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, _080A9190
	adds r3, r0, r1
	ldrh r0, [r3, 0x8]
	adds r0, 0x1
	strh r0, [r3, 0x8]
	lsls r0, 16
	asrs r0, 16
	movs r2, 0xA
	ldrsh r1, [r3, r2]
	cmp r0, r1
	ble _080A921A
	movs r0, 0
	strh r0, [r3, 0x8]
	ldrh r0, [r3, 0x20]
	adds r1, r0, 0x1
	movs r0, 0x1
	ands r1, r0
	strh r1, [r3, 0x20]
	movs r2, 0x1C
	ldrsh r0, [r3, r2]
	cmp r0, 0
	beq _080A91AE
	cmp r1, 0
	beq _080A9198
	ldr r2, _080A9194
	movs r0, 0x16
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r3, 0x22]
	ldrh r2, [r3, 0x18]
	adds r1, r2
	b _080A91AC
	.align 2, 0
_080A9190: .4byte gTasks
_080A9194: .4byte gSprites
_080A9198:
	ldr r2, _080A91D4
	movs r0, 0x16
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r3, 0x18]
	ldrh r2, [r3, 0x24]
	subs r1, r2
_080A91AC:
	strh r1, [r0, 0x24]
_080A91AE:
	movs r1, 0x1E
	ldrsh r0, [r3, r1]
	cmp r0, 0
	beq _080A91E8
	movs r2, 0x20
	ldrsh r4, [r3, r2]
	cmp r4, 0
	beq _080A91D8
	ldr r2, _080A91D4
	movs r0, 0x16
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrh r1, [r3, 0x26]
	strh r1, [r0, 0x26]
	b _080A91E8
	.align 2, 0
_080A91D4: .4byte gSprites
_080A91D8:
	ldr r2, _080A9220
	movs r0, 0x16
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r4, [r0, 0x26]
_080A91E8:
	ldrh r0, [r3, 0xC]
	subs r0, 0x1
	strh r0, [r3, 0xC]
	lsls r0, 16
	asrs r4, r0, 16
	cmp r4, 0
	bne _080A921A
	ldr r2, _080A9220
	movs r0, 0x16
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r4, [r0, 0x24]
	movs r0, 0x16
	ldrsh r1, [r3, r0]
	lsls r0, r1, 4
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	strh r4, [r0, 0x26]
	adds r0, r5, 0
	bl move_anim_task_del
_080A921A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A9220: .4byte gSprites
	thumb_func_end sub_80A913C

	thumb_func_start itemid_copy_name
itemid_copy_name: @ 80A9224
	push {r4,lr}
	adds r4, r1, 0
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0xAF
	bne _080A924C
	movs r0, 0x2B
	bl GetBerryInfo
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	ldr r1, _080A9248
	adds r0, r4, 0
	bl StringAppend
	b _080A9258
	.align 2, 0
_080A9248: .4byte gOtherText_Berry2
_080A924C:
	bl itemid_get_item
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
_080A9258:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end itemid_copy_name

	thumb_func_start unref_sub_80A9260
unref_sub_80A9260: @ 80A9260
	push {lr}
	lsls r0, 24
	movs r2, 0
	ldr r1, _080A9284
	lsrs r0, 21
	adds r0, r1
	ldrb r1, [r0, 0x4]
	cmp r2, r1
	bcs _080A9292
	ldr r3, [r0]
_080A9274:
	lsls r0, r2, 2
	adds r0, r3
	ldrh r0, [r0]
	cmp r0, 0
	bne _080A9288
	lsls r0, r2, 24
	asrs r0, 24
	b _080A9296
	.align 2, 0
_080A9284: .4byte gUnknown_083C1618
_080A9288:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r1
	bcc _080A9274
_080A9292:
	movs r0, 0x1
	negs r0, r0
_080A9296:
	pop {r1}
	bx r1
	thumb_func_end unref_sub_80A9260

	thumb_func_start IsBagPocketNonEmpty
IsBagPocketNonEmpty: @ 80A929C
	push {lr}
	lsls r0, 24
	movs r2, 0
	ldr r1, _080A92C0
	lsrs r0, 21
	subs r0, 0x8
	adds r0, r1
	ldrb r1, [r0, 0x4]
	cmp r2, r1
	bcs _080A92CE
	ldr r3, [r0]
_080A92B2:
	lsls r0, r2, 2
	adds r0, r3
	ldrh r0, [r0]
	cmp r0, 0
	beq _080A92C4
	movs r0, 0x1
	b _080A92D0
	.align 2, 0
_080A92C0: .4byte gUnknown_083C1618
_080A92C4:
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
	cmp r2, r1
	bcc _080A92B2
_080A92CE:
	movs r0, 0
_080A92D0:
	pop {r1}
	bx r1
	thumb_func_end IsBagPocketNonEmpty

	thumb_func_start sub_80A92D4
sub_80A92D4: @ 80A92D4
	push {r4-r7,lr}
	lsls r0, 16
	lsrs r5, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	adds r0, r5, 0
	bl itemid_get_pocket_number
	lsls r0, 24
	cmp r0, 0
	bne _080A92F0
	b _080A9336
_080A92EC:
	movs r0, 0x1
	b _080A9338
_080A92F0:
	adds r0, r5, 0
	bl itemid_get_pocket_number
	subs r0, 0x1
	lsls r0, 24
	movs r3, 0
	ldr r6, _080A9340
	lsrs r2, r0, 21
	adds r0, r2, r6
	ldrb r0, [r0, 0x4]
	cmp r3, r0
	bcs _080A9336
	adds r7, r6, 0
_080A930A:
	adds r0, r2, r7
	ldr r1, [r0]
	lsls r0, r3, 2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r5
	bne _080A9328
	ldrh r0, [r1, 0x2]
	cmp r0, r4
	bcs _080A92EC
	subs r0, r4, r0
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _080A92EC
_080A9328:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r2, r6
	ldrb r0, [r0, 0x4]
	cmp r3, r0
	bcc _080A930A
_080A9336:
	movs r0, 0
_080A9338:
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A9340: .4byte gUnknown_083C1618
	thumb_func_end sub_80A92D4

	thumb_func_start sub_80A9344
sub_80A9344: @ 80A9344
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	adds r0, r6, 0
	bl itemid_get_pocket_number
	lsls r0, 24
	cmp r0, 0
	beq _080A9408
	adds r0, r6, 0
	bl itemid_get_pocket_number
	subs r0, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r5, _080A940C
	cmp r1, 0x3
	beq _080A9376
	movs r5, 0x63
_080A9376:
	movs r3, 0
	ldr r0, _080A9410
	mov r8, r0
	lsls r2, r1, 3
	adds r0, r2, r0
	mov r12, r8
	mov r9, r2
	ldrb r0, [r0, 0x4]
	cmp r3, r0
	bcs _080A93CA
	mov r10, r12
	subs r0, r1, 0x2
	lsls r0, 24
	lsrs r7, r0, 24
_080A9392:
	mov r1, r10
	adds r0, r2, r1
	ldr r1, [r0]
	lsls r0, r3, 2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r6
	bne _080A93BA
	ldrh r1, [r1, 0x2]
	adds r0, r1, r4
	cmp r0, r5
	ble _080A9414
	cmp r7, 0x1
	bls _080A9408
	subs r0, r5, r1
	subs r0, r4, r0
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r4, 0
	beq _080A9414
_080A93BA:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	mov r1, r8
	adds r0, r2, r1
	ldrb r0, [r0, 0x4]
	cmp r3, r0
	bcc _080A9392
_080A93CA:
	cmp r4, 0
	beq _080A9414
	movs r3, 0
	mov r6, r12
	mov r2, r9
	adds r0, r2, r6
	ldrb r0, [r0, 0x4]
	cmp r3, r0
	bcs _080A9404
	adds r7, r6, 0
_080A93DE:
	adds r0, r2, r7
	ldr r1, [r0]
	lsls r0, r3, 2
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, 0
	bne _080A93F6
	cmp r4, r5
	bls _080A9414
	subs r0, r4, r5
	lsls r0, 16
	lsrs r4, r0, 16
_080A93F6:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	adds r0, r2, r6
	ldrb r0, [r0, 0x4]
	cmp r3, r0
	bcc _080A93DE
_080A9404:
	cmp r4, 0
	beq _080A9414
_080A9408:
	movs r0, 0
	b _080A9416
	.align 2, 0
_080A940C: .4byte 0x000003e7
_080A9410: .4byte gUnknown_083C1618
_080A9414:
	movs r0, 0x1
_080A9416:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A9344

	thumb_func_start sub_80A9424
sub_80A9424: @ 80A9424
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x100
	lsls r0, 16
	lsrs r0, 16
	mov r8, r0
	lsls r1, 16
	lsrs r4, r1, 16
	bl itemid_get_pocket_number
	lsls r0, 24
	cmp r0, 0
	beq _080A9510
	mov r0, r8
	bl itemid_get_pocket_number
	subs r0, 0x1
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080A94F8
	lsls r0, r6, 3
	adds r5, r0, r1
	ldr r1, [r5]
	ldrb r2, [r5, 0x4]
	lsls r2, 2
	mov r0, sp
	bl memcpy
	ldr r7, _080A94FC
	cmp r6, 0x3
	beq _080A9468
	movs r7, 0x63
_080A9468:
	movs r1, 0
	ldrb r0, [r5, 0x4]
	cmp r1, r0
	bcs _080A94B2
	subs r0, r6, 0x2
	lsls r0, 24
	lsrs r0, 24
	mov r12, r0
_080A9478:
	lsls r0, r1, 2
	mov r2, sp
	adds r3, r2, r0
	ldrh r0, [r3]
	cmp r0, r8
	bne _080A94A6
	ldrh r2, [r3, 0x2]
	adds r0, r2, r4
	cmp r0, r7
	ble _080A9500
	mov r0, r12
	cmp r0, 0x1
	bls _080A9510
	subs r0, r7, r2
	subs r0, r4, r0
	lsls r0, 16
	lsrs r4, r0, 16
	strh r7, [r3, 0x2]
	ldr r2, _080A94F8
	mov r9, r2
	lsls r3, r6, 3
	cmp r4, 0
	beq _080A9516
_080A94A6:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	ldrb r0, [r5, 0x4]
	cmp r1, r0
	bcc _080A9478
_080A94B2:
	ldr r2, _080A94F8
	mov r9, r2
	lsls r3, r6, 3
	cmp r4, 0
	beq _080A9516
	movs r1, 0
	adds r0, r3, r2
	ldrb r0, [r0, 0x4]
	cmp r1, r0
	bcs _080A94F2
	mov r6, r9
	adds r5, r3, r6
_080A94CA:
	lsls r0, r1, 2
	mov r6, sp
	adds r2, r6, r0
	ldrh r0, [r2]
	cmp r0, 0
	bne _080A94E6
	mov r0, r8
	strh r0, [r2]
	cmp r4, r7
	bls _080A9514
	subs r0, r4, r7
	lsls r0, 16
	lsrs r4, r0, 16
	strh r7, [r2, 0x2]
_080A94E6:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	ldrb r2, [r5, 0x4]
	cmp r1, r2
	bcc _080A94CA
_080A94F2:
	cmp r4, 0
	beq _080A9516
	b _080A9510
	.align 2, 0
_080A94F8: .4byte gUnknown_083C1618
_080A94FC: .4byte 0x000003e7
_080A9500:
	strh r0, [r3, 0x2]
	ldr r0, _080A950C
	lsls r1, r6, 3
	adds r1, r0
	b _080A951A
	.align 2, 0
_080A950C: .4byte gUnknown_083C1618
_080A9510:
	movs r0, 0
	b _080A9528
_080A9514:
	strh r4, [r2, 0x2]
_080A9516:
	mov r6, r9
	adds r1, r3, r6
_080A951A:
	ldr r0, [r1]
	ldrb r2, [r1, 0x4]
	lsls r2, 2
	mov r1, sp
	bl memcpy
	movs r0, 0x1
_080A9528:
	add sp, 0x100
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A9424

	thumb_func_start sub_80A9538
sub_80A9538: @ 80A9538
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	movs r7, 0
	adds r0, r6, 0
	bl itemid_get_pocket_number
	lsls r0, 24
	cmp r0, 0
	beq _080A959E
	cmp r6, 0
	beq _080A959E
	adds r0, r6, 0
	bl itemid_get_pocket_number
	subs r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	mov r12, r0
	movs r5, 0
	ldr r1, _080A95A4
	lsls r2, r0, 3
	adds r0, r2, r1
	ldrb r0, [r0, 0x4]
	cmp r5, r0
	bcs _080A959A
	mov r8, r1
_080A9576:
	mov r0, r8
	adds r3, r2, r0
	ldr r0, [r3]
	lsls r1, r5, 2
	adds r1, r0
	ldrh r0, [r1]
	cmp r0, r6
	bne _080A958E
	ldrh r0, [r1, 0x2]
	adds r0, r7, r0
	lsls r0, 16
	lsrs r7, r0, 16
_080A958E:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	ldrb r3, [r3, 0x4]
	cmp r5, r3
	bcc _080A9576
_080A959A:
	cmp r7, r4
	bcs _080A95A8
_080A959E:
	movs r0, 0
	b _080A9664
	.align 2, 0
_080A95A4: .4byte gUnknown_083C1618
_080A95A8:
	ldr r0, _080A95DC
	mov r2, r12
	lsls r1, r2, 3
	adds r5, r1, r0
	ldr r2, _080A95E0
	ldrb r3, [r5, 0x4]
	mov r8, r0
	adds r7, r1, 0
	ldrb r0, [r2]
	cmp r3, r0
	bls _080A9606
	ldrb r0, [r2]
	ldr r1, [r5]
	lsls r0, 2
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, r6
	bne _080A9606
	ldrh r0, [r1, 0x2]
	cmp r0, r4
	bcc _080A95E4
	subs r0, r4
	strh r0, [r1, 0x2]
	movs r4, 0
	b _080A95EE
	.align 2, 0
_080A95DC: .4byte gUnknown_083C1618
_080A95E0: .4byte gUnknown_02038560
_080A95E4:
	subs r0, r4, r0
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0
	strh r0, [r1, 0x2]
_080A95EE:
	mov r1, r8
	adds r0, r7, r1
	ldrb r1, [r2]
	ldr r0, [r0]
	lsls r1, 2
	adds r1, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A9602
	strh r0, [r1]
_080A9602:
	cmp r4, 0
	beq _080A9662
_080A9606:
	movs r5, 0
	adds r1, r7, 0
	mov r2, r8
	adds r0, r1, r2
	ldrb r2, [r0, 0x4]
	cmp r5, r2
	bcs _080A9662
	mov r12, r8
	adds r3, r0, 0
_080A9618:
	mov r2, r12
	adds r0, r1, r2
	ldr r0, [r0]
	lsls r1, r5, 2
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r6
	bne _080A9650
	ldrh r0, [r2, 0x2]
	cmp r0, r4
	bcc _080A9636
	subs r0, r4
	strh r0, [r2, 0x2]
	movs r4, 0
	b _080A9640
_080A9636:
	subs r0, r4, r0
	lsls r0, 16
	lsrs r4, r0, 16
	movs r0, 0
	strh r0, [r2, 0x2]
_080A9640:
	ldr r0, [r3]
	adds r1, r0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	bne _080A964C
	strh r0, [r1]
_080A964C:
	cmp r4, 0
	beq _080A9662
_080A9650:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	adds r1, r7, 0
	mov r2, r8
	adds r0, r1, r2
	ldrb r0, [r0, 0x4]
	cmp r5, r0
	bcc _080A9618
_080A9662:
	movs r0, 0x1
_080A9664:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A9538

	thumb_func_start sub_80A9670
sub_80A9670: @ 80A9670
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	bl itemid_get_pocket_number
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_80A9670

	thumb_func_start sub_80A9684
sub_80A9684: @ 80A9684
	push {r4,lr}
	adds r4, r0, 0
	lsls r1, 24
	movs r2, 0
	lsrs r1, 24
	cmp r2, r1
	bcs _080A96A6
	movs r3, 0
_080A9694:
	lsls r0, r2, 2
	adds r0, r4
	strh r3, [r0]
	strh r3, [r0, 0x2]
	adds r0, r2, 0x1
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r2, r1
	bcc _080A9694
_080A96A6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80A9684

	thumb_func_start sub_80A96AC
sub_80A96AC: @ 80A96AC
	push {lr}
	movs r1, 0
	ldr r3, _080A96CC
	movs r2, 0x93
	lsls r2, 3
_080A96B6:
	lsls r0, r1, 24
	asrs r1, r0, 24
	lsls r0, r1, 2
	adds r0, r3
	adds r0, r2
	ldrh r0, [r0]
	cmp r0, 0
	bne _080A96D0
	adds r0, r1, 0
	b _080A96E0
	.align 2, 0
_080A96CC: .4byte gSaveBlock1
_080A96D0:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	asrs r0, 24
	cmp r0, 0x31
	ble _080A96B6
	movs r0, 0x1
	negs r0, r0
_080A96E0:
	pop {r1}
	bx r1
	thumb_func_end sub_80A96AC

	thumb_func_start sub_80A96E4
sub_80A96E4: @ 80A96E4
	push {r4,lr}
	movs r2, 0
	movs r1, 0
	ldr r4, _080A9714
	movs r3, 0x93
	lsls r3, 3
_080A96F0:
	lsls r0, r1, 2
	adds r0, r4
	adds r0, r3
	ldrh r0, [r0]
	cmp r0, 0
	beq _080A9702
	adds r0, r2, 0x1
	lsls r0, 24
	lsrs r2, r0, 24
_080A9702:
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x31
	bls _080A96F0
	adds r0, r2, 0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9714: .4byte gSaveBlock1
	thumb_func_end sub_80A96E4

	thumb_func_start sub_80A9718
sub_80A9718: @ 80A9718
	push {r4-r7,lr}
	lsls r0, 16
	lsrs r4, r0, 16
	lsls r1, 16
	lsrs r1, 16
	movs r3, 0
	ldr r7, _080A9744
	movs r6, 0x93
	lsls r6, 3
	ldr r5, _080A9748
_080A972C:
	lsls r0, r3, 2
	adds r2, r0, r7
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _080A974C
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	bcc _080A974C
	movs r0, 0x1
	b _080A9758
	.align 2, 0
_080A9744: .4byte gSaveBlock1
_080A9748: .4byte 0x0000049a
_080A974C:
	adds r0, r3, 0x1
	lsls r0, 24
	lsrs r3, r0, 24
	cmp r3, 0x31
	bls _080A972C
	movs r0, 0
_080A9758:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_80A9718

	thumb_func_start sub_80A9760
sub_80A9760: @ 80A9760
	push {r4-r7,lr}
	sub sp, 0xC8
	lsls r0, 16
	lsrs r6, r0, 16
	lsls r1, 16
	lsrs r4, r1, 16
	ldr r1, _080A97C4
	mov r0, sp
	movs r2, 0xC8
	bl memcpy
	movs r5, 0
	ldr r0, _080A97C8
	adds r7, r0, 0
_080A977C:
	lsls r0, r5, 2
	mov r1, sp
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, r6
	bne _080A97A0
	ldrh r1, [r2, 0x2]
	adds r0, r1, r4
	ldr r3, _080A97CC
	cmp r0, r3
	ble _080A97D0
	adds r0, r4, r7
	adds r0, r1, r0
	lsls r0, 16
	lsrs r4, r0, 16
	strh r3, [r2, 0x2]
	cmp r4, 0
	beq _080A97DC
_080A97A0:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x31
	bls _080A977C
	cmp r4, 0
	beq _080A97DC
	bl sub_80A96AC
	lsls r0, 24
	asrs r1, r0, 24
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	bne _080A97D4
	movs r0, 0
	b _080A97E8
	.align 2, 0
_080A97C4: .4byte gSaveBlock1 + 0x498
_080A97C8: .4byte 0x0000fc19
_080A97CC: .4byte 0x000003e7
_080A97D0:
	strh r0, [r2, 0x2]
	b _080A97DC
_080A97D4:
	lsls r0, r1, 2
	add r0, sp
	strh r6, [r0]
	strh r4, [r0, 0x2]
_080A97DC:
	ldr r0, _080A97F0
	mov r1, sp
	movs r2, 0xC8
	bl memcpy
	movs r0, 0x1
_080A97E8:
	add sp, 0xC8
	pop {r4-r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A97F0: .4byte gSaveBlock1 + 0x498
	thumb_func_end sub_80A9760

	thumb_func_start sub_80A97F4
sub_80A97F4: @ 80A97F4
	push {lr}
	lsls r0, 24
	lsls r1, 16
	lsrs r1, 16
	ldr r2, _080A9824
	lsrs r0, 22
	adds r3, r0, r2
	ldr r0, _080A9828
	adds r2, r3, r0
	ldrh r0, [r2]
	subs r0, r1
	strh r0, [r2]
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0
	bne _080A9820
	movs r2, 0x93
	lsls r2, 3
	adds r0, r3, r2
	strh r1, [r0]
	bl sub_80A982C
_080A9820:
	pop {r0}
	bx r0
	.align 2, 0
_080A9824: .4byte gSaveBlock1
_080A9828: .4byte 0x0000049a
	thumb_func_end sub_80A97F4

	thumb_func_start sub_80A982C
sub_80A982C: @ 80A982C
	push {r4-r7,lr}
	movs r2, 0
	ldr r0, _080A987C
	mov r12, r0
_080A9834:
	adds r1, r2, 0x1
	lsls r0, r1, 16
	lsrs r3, r0, 16
	adds r7, r1, 0
	cmp r3, 0x31
	bhi _080A986C
	lsls r1, r2, 2
	mov r2, r12
	adds r0, r1, r2
	movs r2, 0x93
	lsls r2, 3
	adds r5, r0, r2
	ldr r6, _080A9880
	adds r4, r1, r6
_080A9850:
	ldrh r0, [r5]
	cmp r0, 0
	bne _080A9862
	ldr r2, [r4]
	lsls r1, r3, 2
	adds r1, r6
	ldr r0, [r1]
	str r0, [r4]
	str r2, [r1]
_080A9862:
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r3, 0x31
	bls _080A9850
_080A986C:
	lsls r0, r7, 16
	lsrs r2, r0, 16
	cmp r2, 0x30
	bls _080A9834
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A987C: .4byte gSaveBlock1
_080A9880: .4byte gSaveBlock1 + 0x498
	thumb_func_end sub_80A982C

	thumb_func_start sub_80A9884
sub_80A9884: @ 80A9884
	push {lr}
	ldr r0, _080A98A0
	ldr r1, _080A98A4
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r3, _080A98A8
	cmp r1, r3
	beq _080A98AC
	movs r0, 0x88
	lsls r0, 1
	cmp r1, r0
	beq _080A98B4
	b _080A98B6
	.align 2, 0
_080A98A0: .4byte gSaveBlock1
_080A98A4: .4byte 0x00000496
_080A98A8: .4byte 0x00000103
_080A98AC:
	movs r0, 0x88
	lsls r0, 1
	strh r0, [r2]
	b _080A98B6
_080A98B4:
	strh r3, [r2]
_080A98B6:
	pop {r0}
	bx r0
	thumb_func_end sub_80A9884

	thumb_func_start itemid_sanitize
itemid_sanitize: @ 80A98BC
	push {lr}
	lsls r0, 16
	lsrs r1, r0, 16
	movs r0, 0xAE
	lsls r0, 1
	cmp r1, r0
	bhi _080A98CE
	adds r0, r1, 0
	b _080A98D0
_080A98CE:
	movs r0, 0
_080A98D0:
	pop {r1}
	bx r1
	thumb_func_end itemid_sanitize

	thumb_func_start itemid_get_item
itemid_get_item: @ 80A98D4
	push {lr}
	lsls r0, 16
	lsrs r0, 16
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	ldr r1, _080A98F0
	adds r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_080A98F0: .4byte gItems
	thumb_func_end itemid_get_item

	thumb_func_start itemid_get_number
itemid_get_number: @ 80A98F4
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9914
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrh r0, [r0, 0xE]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9914: .4byte gItems
	thumb_func_end itemid_get_number

	thumb_func_start itemid_get_market_price
itemid_get_market_price: @ 80A9918
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9938
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrh r0, [r0, 0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9938: .4byte gItems
	thumb_func_end itemid_get_market_price

	thumb_func_start itemid_get_x12
itemid_get_x12: @ 80A993C
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A995C
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x12]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A995C: .4byte gItems
	thumb_func_end itemid_get_x12

	thumb_func_start itemid_get_quality
itemid_get_quality: @ 80A9960
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9980
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x13]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9980: .4byte gItems
	thumb_func_end itemid_get_quality

	thumb_func_start itemid_get_description
itemid_get_description: @ 80A9984
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A99A4
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r4, 0x14
	adds r0, r4
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A99A4: .4byte gItems
	thumb_func_end itemid_get_description

	thumb_func_start sub_80A99A8
sub_80A99A8: @ 80A99A8
	push {r4-r6,lr}
	adds r6, r0, 0
	adds r0, r1, 0
	adds r5, r2, 0x1
	ldr r4, _080A99E4
	lsls r0, 16
	lsrs r0, 16
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r4, 0x14
	adds r0, r4
	ldr r3, [r0]
	adds r2, r6, 0
_080A99CA:
	ldrb r1, [r3]
	adds r0, r1, 0x2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bhi _080A99FA
	subs r5, 0x1
	cmp r5, 0
	bne _080A99E8
	movs r0, 0xFF
	strb r0, [r2]
	movs r0, 0x1
	b _080A9A02
	.align 2, 0
_080A99E4: .4byte gItems
_080A99E8:
	lsls r0, r1, 24
	lsrs r0, 24
	cmp r0, 0xFF
	bne _080A99F4
	movs r0, 0
	b _080A9A02
_080A99F4:
	adds r2, r6, 0
	adds r3, 0x1
	b _080A99CA
_080A99FA:
	strb r1, [r2]
	adds r3, 0x1
	adds r2, 0x1
	b _080A99CA
_080A9A02:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_80A99A8

	thumb_func_start itemid_is_unique
itemid_is_unique: @ 80A9A08
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9A28
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x18]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9A28: .4byte gItems
	thumb_func_end itemid_is_unique

	thumb_func_start itemid_get_x19
itemid_get_x19: @ 80A9A2C
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9A4C
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x19]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9A4C: .4byte gItems
	thumb_func_end itemid_get_x19

	thumb_func_start itemid_get_pocket_number
itemid_get_pocket_number: @ 80A9A50
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9A70
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x1A]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9A70: .4byte gItems
	thumb_func_end itemid_get_pocket_number

	thumb_func_start itemid_get_type
itemid_get_type: @ 80A9A74
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9A94
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	ldrb r0, [r0, 0x1B]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9A94: .4byte gItems
	thumb_func_end itemid_get_type

	thumb_func_start itemid_get_overworld_function
itemid_get_overworld_function: @ 80A9A98
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9AB8
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r4, 0x1C
	adds r0, r4
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9AB8: .4byte gItems
	thumb_func_end itemid_get_overworld_function

	thumb_func_start itemid_get_usage
itemid_get_usage: @ 80A9ABC
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9ADC
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	adds r0, 0x20
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9ADC: .4byte gItems
	thumb_func_end itemid_get_usage

	thumb_func_start itemid_get_battle_function
itemid_get_battle_function: @ 80A9AE0
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9B00
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r4, 0x24
	adds r0, r4
	ldr r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9B00: .4byte gItems
	thumb_func_end itemid_get_battle_function

	thumb_func_start itemid_get_x28
itemid_get_x28: @ 80A9B04
	push {r4,lr}
	lsls r0, 16
	lsrs r0, 16
	ldr r4, _080A9B24
	bl itemid_sanitize
	lsls r0, 16
	lsrs r0, 16
	movs r1, 0x2C
	muls r0, r1
	adds r0, r4
	adds r0, 0x28
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A9B24: .4byte gItems
	thumb_func_end itemid_get_x28

	thumb_func_start unref_sub_80A9B28
unref_sub_80A9B28: @ 80A9B28
	push {lr}
	sub sp, 0x8
	bl MenuZeroFillScreen
	movs r0, 0
	movs r1, 0
	movs r2, 0x11
	movs r3, 0x12
	bl MenuDrawTextWindow
	ldr r3, _080A9B6C
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0x7
	bl PrintMenuItems
	movs r0, 0
	str r0, [sp]
	movs r0, 0x10
	str r0, [sp, 0x4]
	movs r0, 0
	movs r1, 0x1
	movs r2, 0x1
	movs r3, 0x7
	bl InitMenu
	ldr r1, _080A9B70
	ldr r0, _080A9B74
	str r0, [r1]
	movs r0, 0
	add sp, 0x8
	pop {r1}
	bx r1
	.align 2, 0
_080A9B6C: .4byte gUnknown_083C91F0
_080A9B70: .4byte gCallback_03004AE8
_080A9B74: .4byte sub_80A9B78
	thumb_func_end unref_sub_80A9B28

	thumb_func_start sub_80A9B78
sub_80A9B78: @ 80A9B78
	push {lr}
	bl ProcessMenuInput
	lsls r0, 24
	asrs r1, r0, 24
	movs r0, 0x2
	negs r0, r0
	cmp r1, r0
	bne _080A9B8E
	movs r0, 0
	b _080A9BB6
_080A9B8E:
	movs r0, 0x1
	negs r0, r0
	cmp r1, r0
	beq _080A9BB0
	ldr r2, _080A9BA8
	ldr r0, _080A9BAC
	lsls r1, 3
	adds r0, 0x4
	adds r1, r0
	ldr r0, [r1]
	str r0, [r2]
	movs r0, 0
	b _080A9BB6
	.align 2, 0
_080A9BA8: .4byte gCallback_03004AE8
_080A9BAC: .4byte gUnknown_083C91F0
_080A9BB0:
	bl sub_8071C20
	movs r0, 0x1
_080A9BB6:
	pop {r1}
	bx r1
	thumb_func_end sub_80A9B78

	thumb_func_start sub_80A9BBC
sub_80A9BBC: @ 80A9BBC
	push {lr}
	sub sp, 0x4
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	ldr r0, _080A9BE0
	movs r1, 0xFF
	bl CreateTask
	movs r0, 0x1
	add sp, 0x4
	pop {r1}
	bx r1
	.align 2, 0
_080A9BE0: .4byte sub_80A9BE4
	thumb_func_end sub_80A9BBC

	thumb_func_start sub_80A9BE4
sub_80A9BE4: @ 80A9BE4
	push {lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r0, _080A9C14
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080A9C10
	adds r0, r2, 0
	bl DestroyTask
	ldr r0, _080A9C18
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080A9C0C
	bl sub_80AF668
_080A9C0C:
	bl sub_80C2358
_080A9C10:
	pop {r0}
	bx r0
	.align 2, 0
_080A9C14: .4byte gPaletteFade
_080A9C18: .4byte gUnknown_0203869A
	thumb_func_end sub_80A9BE4

	thumb_func_start sub_80A9C1C
sub_80A9C1C: @ 80A9C1C
	push {lr}
	ldr r1, _080A9C30
	movs r0, 0
	strb r0, [r1]
	bl sub_80AA10C
	movs r0, 0
	pop {r1}
	bx r1
	.align 2, 0
_080A9C30: .4byte gUnknown_0203869A
	thumb_func_end sub_80A9C1C

	thumb_func_start sub_80A9C34
sub_80A9C34: @ 80A9C34
	push {lr}
	bl sub_80AA10C
	movs r0, 0
	pop {r1}
	bx r1
	thumb_func_end sub_80A9C34

	thumb_func_start sub_80A9C40
sub_80A9C40: @ 80A9C40
	push {r4,r5,lr}
	ldr r5, _080A9C88
	adds r0, r5, 0
	movs r1, 0
	bl CreateTask
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r2, _080A9C8C
	adds r0, r4, 0
	adds r1, r5, 0
	bl SetTaskFuncWithFollowupFunc
	ldr r0, _080A9C90
	movs r1, 0x1
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A9C94
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r1, r2
	strh r4, [r1, 0x1C]
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r2
	strh r0, [r1, 0x1C]
	movs r0, 0x1
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A9C88: .4byte sub_80A9E3C
_080A9C8C: .4byte sub_80A9C98
_080A9C90: .4byte sub_80A9E04
_080A9C94: .4byte gTasks
	thumb_func_end sub_80A9C40

	thumb_func_start sub_80A9C98
sub_80A9C98: @ 80A9C98
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	movs r0, 0
	bl sub_80AE098
	ldr r1, _080A9CB8
	ldr r2, _080A9CBC
	adds r0, r4, 0
	bl SetTaskFuncWithFollowupFunc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9CB8: .4byte sub_80C8734
_080A9CBC: .4byte sub_80A9CC0
	thumb_func_end sub_80A9C98

	thumb_func_start sub_80A9CC0
sub_80A9CC0: @ 80A9CC0
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A9CD4
	ldr r2, _080A9CD8
	bl SetTaskFuncWithFollowupFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A9CD4: .4byte sub_80C88AC
_080A9CD8: .4byte sub_80A9CDC
	thumb_func_end sub_80A9CC0

	thumb_func_start sub_80A9CDC
sub_80A9CDC: @ 80A9CDC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A9CF0
	ldr r2, _080A9CF4
	bl SetTaskFuncWithFollowupFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A9CF0: .4byte sub_80C8E1C
_080A9CF4: .4byte sub_80A9D58
	thumb_func_end sub_80A9CDC

	thumb_func_start sub_80A9CF8
sub_80A9CF8: @ 80A9CF8
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A9D28
	ldrb r0, [r0]
	cmp r0, 0
	bne _080A9D20
	ldr r0, _080A9D2C
	lsls r1, r4, 2
	adds r1, r4
	lsls r1, 3
	adds r1, r0
	ldrb r0, [r1, 0x1C]
	bl DestroyTask
	adds r0, r4, 0
	bl DestroyTask
	bl sub_8071C20
_080A9D20:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9D28: .4byte gReceivedRemoteLinkPlayers
_080A9D2C: .4byte gTasks
	thumb_func_end sub_80A9CF8

	thumb_func_start sub_80A9D30
sub_80A9D30: @ 80A9D30
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	bl sub_800832C
	ldr r1, _080A9D50
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _080A9D54
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9D50: .4byte gTasks
_080A9D54: .4byte sub_80A9CF8
	thumb_func_end sub_80A9D30

	thumb_func_start sub_80A9D58
sub_80A9D58: @ 80A9D58
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	movs r3, 0
	ldr r1, _080A9DA8
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r1, 0x12
	adds r2, r0, r1
_080A9D6E:
	mov r0, sp
	adds r1, r0, r3
	ldrh r0, [r2]
	strb r0, [r1]
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	ble _080A9D6E
	mov r0, sp
	bl sub_80C4B34
	ldr r1, _080A9DAC
	strb r0, [r1]
	ldr r0, _080A9DB0
	ldrb r0, [r0]
	bl sub_80AE82C
	movs r0, 0
	bl sub_80B0F28
	ldr r1, _080A9DB4
	ldr r2, _080A9DB8
	adds r0, r4, 0
	bl SetTaskFuncWithFollowupFunc
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9DA8: .4byte gTasks
_080A9DAC: .4byte gUnknown_0203869B
_080A9DB0: .4byte gUnknown_0203869C
_080A9DB4: .4byte sub_80C8EBC
_080A9DB8: .4byte sub_80A9DBC
	thumb_func_end sub_80A9D58

	thumb_func_start sub_80A9DBC
sub_80A9DBC: @ 80A9DBC
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r1, _080A9DD0
	ldr r2, _080A9DD4
	bl SetTaskFuncWithFollowupFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A9DD0: .4byte sub_80C8F34
_080A9DD4: .4byte sub_80A9DD8
	thumb_func_end sub_80A9DBC

	thumb_func_start sub_80A9DD8
sub_80A9DD8: @ 80A9DD8
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	ldr r1, _080A9E00
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x1C]
	bl DestroyTask
	adds r0, r4, 0
	bl DestroyTask
	bl sub_8071C20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9E00: .4byte gTasks
	thumb_func_end sub_80A9DD8

	thumb_func_start sub_80A9E04
sub_80A9E04: @ 80A9E04
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _080A9E30
	ldrh r0, [r0, 0x2E]
	cmp r0, 0x2
	bne _080A9E2A
	ldr r2, _080A9E34
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldrb r1, [r0, 0x1C]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, _080A9E38
	str r1, [r0]
_080A9E2A:
	pop {r0}
	bx r0
	.align 2, 0
_080A9E30: .4byte gMain
_080A9E34: .4byte gTasks
_080A9E38: .4byte sub_80A9D30
	thumb_func_end sub_80A9E04

	thumb_func_start sub_80A9E3C
sub_80A9E3C: @ 80A9E3C
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	bl OpenLink
	movs r1, 0
	ldr r3, _080A9E74
	movs r2, 0xFF
_080A9E4C:
	lsls r0, r1, 8
	adds r0, r3
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 24
	lsrs r1, r0, 24
	cmp r1, 0x3
	bls _080A9E4C
	ldr r1, _080A9E78
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	movs r1, 0
	strh r1, [r0, 0x8]
	ldr r1, _080A9E7C
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9E74: .4byte gBlockRecvBuffer
_080A9E78: .4byte gTasks
_080A9E7C: .4byte sub_80A9E80
	thumb_func_end sub_80A9E3C

	thumb_func_start sub_80A9E80
sub_80A9E80: @ 80A9E80
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A9EA0
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	ldrh r1, [r4, 0x8]
	movs r2, 0x8
	ldrsh r0, [r4, r2]
	cmp r0, 0x9
	bgt _080A9EA4
	adds r0, r1, 0x1
	strh r0, [r4, 0x8]
	b _080A9ECC
	.align 2, 0
_080A9EA0: .4byte gTasks
_080A9EA4:
	bl GetLinkPlayerCount_2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x3
	bls _080A9ECC
	movs r0, 0
	strh r0, [r4, 0x8]
	bl IsLinkMaster
	lsls r0, 24
	cmp r0, 0
	beq _080A9EC8
	ldr r0, _080A9EC4
	b _080A9ECA
	.align 2, 0
_080A9EC4: .4byte sub_80A9ED8
_080A9EC8:
	ldr r0, _080A9ED4
_080A9ECA:
	str r0, [r4]
_080A9ECC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9ED4: .4byte sub_80A9F10
	thumb_func_end sub_80A9E80

	thumb_func_start sub_80A9ED8
sub_80A9ED8: @ 80A9ED8
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080A9F08
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r4, r1, r2
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0x65
	bne _080A9F02
	bl sub_8007F4C
	movs r0, 0
	strh r0, [r4, 0x8]
	ldr r0, _080A9F0C
	str r0, [r4]
_080A9F02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F08: .4byte gTasks
_080A9F0C: .4byte sub_80A9F10
	thumb_func_end sub_80A9ED8

	thumb_func_start sub_80A9F10
sub_80A9F10: @ 80A9F10
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080A9F44
	ldrb r0, [r0]
	cmp r0, 0
	beq _080A9F3E
	bl GetMultiplayerId
	ldr r1, _080A9F48
	strb r0, [r1]
	bl GetLinkPlayerCount
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x4
	bne _080A9F3E
	ldr r1, _080A9F4C
	movs r0, 0x1
	strb r0, [r1]
	adds r0, r4, 0
	bl SwitchTaskToFollowupFunc
_080A9F3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9F44: .4byte gReceivedRemoteLinkPlayers
_080A9F48: .4byte gUnknown_02038695
_080A9F4C: .4byte gUnknown_0203869A
	thumb_func_end sub_80A9F10

	thumb_func_start sub_80A9F50
sub_80A9F50: @ 80A9F50
	push {r4,lr}
	movs r2, 0x80
	lsls r2, 19
	movs r0, 0x40
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, 0x88
	lsls r3, 5
	adds r1, r3, 0
	orrs r0, r1
	strh r0, [r2]
	ldr r4, _080A9FB8
	adds r0, r4, 0
	bl SetUpWindowConfig
	ldr r0, _080A9FBC
	adds r1, r4, 0
	bl InitWindowFromConfig
	ldr r0, _080A9FC0
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	subs r0, 0x44
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	ldr r0, _080A9FC4
	strh r1, [r0]
	ldr r0, _080A9FC8
	strh r1, [r0]
	ldr r0, _080A9FCC
	strh r1, [r0]
	ldr r0, _080A9FD0
	strh r1, [r0]
	ldr r0, _080A9FD4
	strh r1, [r0]
	ldr r0, _080A9FD8
	strh r1, [r0]
	ldr r0, _080A9FDC
	strh r1, [r0]
	ldr r0, _080A9FE0
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A9FB8: .4byte gWindowConfig_81E6C3C
_080A9FBC: .4byte gMenuWindow
_080A9FC0: .4byte REG_MOSAIC
_080A9FC4: .4byte gUnknown_030042A4
_080A9FC8: .4byte gUnknown_030042A0
_080A9FCC: .4byte gUnknown_030042C0
_080A9FD0: .4byte gUnknown_030041B4
_080A9FD4: .4byte gUnknown_03004288
_080A9FD8: .4byte gUnknown_03004280
_080A9FDC: .4byte gUnknown_030041B0
_080A9FE0: .4byte gUnknown_030041B8
	thumb_func_end sub_80A9F50

	thumb_func_start sub_80A9FE4
sub_80A9FE4: @ 80A9FE4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0xC
	ldr r1, _080AA054
	mov r0, sp
	movs r2, 0x5
	bl memcpy
	movs r2, 0xC0
	lsls r2, 19
	movs r3, 0xC0
	lsls r3, 9
	add r5, sp, 0x8
	movs r6, 0
	ldr r1, _080AA058
	movs r4, 0x80
	lsls r4, 5
	mov r12, r5
	ldr r7, _080AA05C
	movs r0, 0x85
	lsls r0, 24
	mov r8, r0
_080AA012:
	str r6, [sp, 0x8]
	mov r0, r12
	str r0, [r1]
	str r2, [r1, 0x4]
	str r7, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r2, r4
	subs r3, r4
	cmp r3, r4
	bhi _080AA012
	str r6, [sp, 0x8]
	str r5, [r1]
	str r2, [r1, 0x4]
	lsrs r0, r3, 2
	mov r2, r8
	orrs r0, r2
	str r0, [r1, 0x8]
	ldr r0, [r1, 0x8]
	movs r0, 0xC0
	lsls r0, 19
	mov r1, sp
	bl sub_80034D4
	ldr r0, _080AA060
	bl LoadFontDefaultPalette
	add sp, 0xC
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA054: .4byte gUnknown_083C9228
_080AA058: .4byte 0x040000d4
_080AA05C: .4byte 0x85000400
_080AA060: .4byte gWindowConfig_81E6C3C
	thumb_func_end sub_80A9FE4

	thumb_func_start sub_80AA064
sub_80AA064: @ 80AA064
	push {lr}
	bl AnimateSprites
	bl BuildOamBuffer
	bl RunTasks
	bl UpdatePaletteFade
	ldr r0, _080AA088
	ldrh r0, [r0, 0x2E]
	cmp r0, 0x4
	bne _080AA084
	ldr r0, _080AA08C
	bl SetMainCallback2
_080AA084:
	pop {r0}
	bx r0
	.align 2, 0
_080AA088: .4byte gMain
_080AA08C: .4byte sub_805469C
	thumb_func_end sub_80AA064

	thumb_func_start sub_80AA090
sub_80AA090: @ 80AA090
	push {lr}
	ldr r1, _080AA0E8
	ldr r0, _080AA0EC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA0F0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA0F4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA0F8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA0FC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA100
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA104
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, 0x2
	ldr r0, _080AA108
	ldrh r0, [r0]
	strh r0, [r1]
	bl LoadOam
	bl ProcessSpriteCopyRequests
	bl TransferPlttBuffer
	bl sub_8089668
	pop {r0}
	bx r0
	.align 2, 0
_080AA0E8: .4byte REG_BG0HOFS
_080AA0EC: .4byte gUnknown_030042A4
_080AA0F0: .4byte gUnknown_030042A0
_080AA0F4: .4byte gUnknown_030042C0
_080AA0F8: .4byte gUnknown_030041B4
_080AA0FC: .4byte gUnknown_03004288
_080AA100: .4byte gUnknown_03004280
_080AA104: .4byte gUnknown_030041B0
_080AA108: .4byte gUnknown_030041B8
	thumb_func_end sub_80AA090

	thumb_func_start sub_80AA10C
sub_80AA10C: @ 80AA10C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x4
	ldr r4, _080AA238
	ldrb r0, [r4, 0x8]
	movs r1, 0x80
	orrs r0, r1
	strb r0, [r4, 0x8]
	movs r0, 0
	bl SetVBlankCallback
	bl sub_80A9F50
	bl dp12_8087EA4
	bl ResetPaletteFade
	bl ResetSpriteData
	bl ResetTasks
	bl FreeAllSpritePalettes
	bl sub_80A9FE4
	ldr r0, _080AA23C
	bl SetVBlankCallback
	ldr r0, _080AA240
	bl SetMainCallback2
	ldrb r1, [r4, 0x8]
	movs r0, 0x7F
	ands r0, r1
	strb r0, [r4, 0x8]
	ldr r4, _080AA244
	movs r0, 0
	strb r0, [r4]
	ldr r0, _080AA248
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	bne _080AA16A
	movs r0, 0
	movs r1, 0
	bl sub_80AE398
_080AA16A:
	ldrb r0, [r4]
	bl sub_80AE098
	movs r5, 0
	ldr r6, _080AA24C
	adds r0, r6, 0x1
	mov r8, r0
	ldr r7, _080AA250
_080AA17A:
	lsls r2, r5, 2
	adds r0, r2, r7
	ldr r1, [r0]
	adds r2, r5
	lsls r2, 17
	movs r0, 0xA8
	lsls r0, 14
	adds r2, r0
	lsrs r2, 16
	lsls r4, r5, 1
	adds r0, r4, r6
	ldrb r3, [r0]
	add r4, r8
	ldrb r0, [r4]
	str r0, [sp]
	ldr r0, _080AA254
	bl sub_8003460
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x5
	bls _080AA17A
	ldr r1, _080AA258
	ldr r4, _080AA25C
	movs r0, 0
	strh r0, [r4]
	strh r0, [r1]
	movs r5, 0
	movs r0, 0
	bl sub_80AA5BC
	ldrb r0, [r4]
	bl sub_80AA5E8
	ldr r4, _080AA254
	ldr r1, _080AA260
	movs r0, 0x12
	str r0, [sp]
	adds r0, r4, 0
	movs r2, 0xD6
	movs r3, 0x12
	bl sub_8003460
	ldr r1, _080AA264
	movs r0, 0xC
	str r0, [sp]
	adds r0, r4, 0
	movs r2, 0xDC
	movs r3, 0
	bl sub_8003460
	ldr r0, _080AA268
	bl LoadSpriteSheet
	ldr r0, _080AA26C
	bl LoadSpritePalette
	movs r0, 0x3
	bl sub_80AA280
	movs r0, 0x3
	bl sub_80AA658
	movs r0, 0x3
	movs r1, 0
	bl sub_80AA614
	ldr r0, _080AA270
	ldr r1, _080AA274
	ldrb r1, [r1, 0x3]
	ldr r2, _080AA278
	ldrb r2, [r2, 0x1]
	movs r3, 0x5
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _080AA27C
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r1, r2
	movs r0, 0x1
	strh r0, [r1, 0x2E]
	strh r0, [r1, 0x30]
	movs r0, 0x3
	strh r0, [r1, 0x32]
	strh r5, [r1, 0x34]
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA238: .4byte gPaletteFade
_080AA23C: .4byte sub_80AA090
_080AA240: .4byte sub_80AA064
_080AA244: .4byte gUnknown_02038694
_080AA248: .4byte gUnknown_02038570
_080AA24C: .4byte gUnknown_083C9276
_080AA250: .4byte gUnknown_083C9364
_080AA254: .4byte gMenuWindow
_080AA258: .4byte gUnknown_0203869C
_080AA25C: .4byte gUnknown_0203869E
_080AA260: .4byte gUnknown_083C9337
_080AA264: .4byte gUnknown_083C933B
_080AA268: .4byte gUnknown_083C92B4
_080AA26C: .4byte gUnknown_083C92BC
_080AA270: .4byte gSpriteTemplate_83C92CC
_080AA274: .4byte gUnknown_083C9296
_080AA278: .4byte gUnknown_083C92A8
_080AA27C: .4byte gSprites
	thumb_func_end sub_80AA10C

	thumb_func_start sub_80AA280
sub_80AA280: @ 80AA280
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	lsls r0, 24
	lsrs r7, r0, 24
	ldr r0, _080AA2E8
	movs r1, 0x1E
	str r1, [sp]
	movs r1, 0x3
	str r1, [sp, 0x4]
	movs r1, 0
	movs r2, 0
	movs r3, 0
	bl FillWindowRect_DefaultPalette
	ldr r4, _080AA2EC
	ldr r1, _080AA2F0
	adds r0, r4, 0
	bl StringCopy
	lsls r1, r7, 6
	ldr r0, _080AA2F4
	adds r1, r0
	adds r0, r4, 0
	bl StringAppend
	movs r5, 0
	ldr r6, _080AA2F8
	adds r0, r6, 0x1
	mov r8, r0
_080AA2BE:
	cmp r7, r5
	bne _080AA2FC
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 17
	movs r0, 0x80
	lsls r0, 10
	adds r2, r0
	lsrs r2, 16
	lsls r1, r5, 1
	adds r0, r1, r6
	ldrb r3, [r0]
	add r1, r8
	ldrb r0, [r1]
	str r0, [sp]
	ldr r0, _080AA2E8
	ldr r1, _080AA2EC
	bl sub_8003460
	b _080AA322
	.align 2, 0
_080AA2E8: .4byte gMenuWindow
_080AA2EC: .4byte 0x02000000
_080AA2F0: .4byte gUnknown_083C932C
_080AA2F4: .4byte gUnknown_0203857D
_080AA2F8: .4byte gUnknown_083C926E
_080AA2FC:
	lsls r1, r5, 6
	ldr r0, _080AA338
	adds r1, r0
	lsls r2, r5, 2
	adds r2, r5
	lsls r2, 17
	movs r0, 0x80
	lsls r0, 10
	adds r2, r0
	lsrs r2, 16
	lsls r4, r5, 1
	adds r0, r4, r6
	ldrb r3, [r0]
	add r4, r8
	ldrb r0, [r4]
	str r0, [sp]
	ldr r0, _080AA33C
	bl sub_8003460
_080AA322:
	adds r0, r5, 0x1
	lsls r0, 24
	lsrs r5, r0, 24
	cmp r5, 0x3
	bls _080AA2BE
	add sp, 0x8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA338: .4byte gUnknown_0203857D
_080AA33C: .4byte gMenuWindow
	thumb_func_end sub_80AA280

	thumb_func_start sub_80AA340
sub_80AA340: @ 80AA340
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r4, _080AA378
	ldr r1, _080AA37C
	lsrs r0, 18
	adds r0, r1
	adds r0, 0x26
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA380
	ldr r1, _080AA384
	ldrb r3, [r1]
	ldrb r1, [r1, 0x1]
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0x66
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA378: .4byte 0x02000000
_080AA37C: .4byte gUnknown_02038570
_080AA380: .4byte gMenuWindow
_080AA384: .4byte gUnknown_083C9282
	thumb_func_end sub_80AA340

	thumb_func_start sub_80AA388
sub_80AA388: @ 80AA388
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r4, _080AA3C0
	ldr r1, _080AA3C4
	lsrs r0, 18
	adds r0, r1
	adds r0, 0x28
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA3C8
	ldr r1, _080AA3CC
	ldrb r3, [r1, 0x2]
	ldrb r1, [r1, 0x3]
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0x6C
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA3C0: .4byte 0x02000000
_080AA3C4: .4byte gUnknown_02038570
_080AA3C8: .4byte gMenuWindow
_080AA3CC: .4byte gUnknown_083C9282
	thumb_func_end sub_80AA388

	thumb_func_start sub_80AA3D0
sub_80AA3D0: @ 80AA3D0
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r4, _080AA408
	ldr r1, _080AA40C
	lsrs r0, 18
	adds r0, r1
	adds r0, 0x27
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA410
	ldr r1, _080AA414
	ldrb r3, [r1, 0x4]
	ldrb r1, [r1, 0x5]
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0x72
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA408: .4byte 0x02000000
_080AA40C: .4byte gUnknown_02038570
_080AA410: .4byte gMenuWindow
_080AA414: .4byte gUnknown_083C9282
	thumb_func_end sub_80AA3D0

	thumb_func_start sub_80AA418
sub_80AA418: @ 80AA418
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r4, _080AA450
	ldr r1, _080AA454
	lsrs r0, 18
	adds r0, r1
	adds r0, 0x29
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA458
	ldr r1, _080AA45C
	ldrb r3, [r1, 0x6]
	ldrb r1, [r1, 0x7]
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0x78
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA450: .4byte 0x02000000
_080AA454: .4byte gUnknown_02038570
_080AA458: .4byte gMenuWindow
_080AA45C: .4byte gUnknown_083C9282
	thumb_func_end sub_80AA418

	thumb_func_start sub_80AA460
sub_80AA460: @ 80AA460
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r4, _080AA498
	ldr r1, _080AA49C
	lsrs r0, 18
	adds r0, r1
	adds r0, 0x2A
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA4A0
	ldr r1, _080AA4A4
	ldrb r3, [r1, 0x8]
	ldrb r1, [r1, 0x9]
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0x7E
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA498: .4byte 0x02000000
_080AA49C: .4byte gUnknown_02038570
_080AA4A0: .4byte gMenuWindow
_080AA4A4: .4byte gUnknown_083C9282
	thumb_func_end sub_80AA460

	thumb_func_start sub_80AA4A8
sub_80AA4A8: @ 80AA4A8
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r4, _080AA4E0
	ldr r1, _080AA4E4
	lsrs r0, 18
	adds r0, r1
	adds r0, 0x2B
	ldrb r1, [r0]
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA4E8
	ldr r1, _080AA4EC
	ldrb r3, [r1, 0xA]
	ldrb r1, [r1, 0xB]
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0x84
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA4E0: .4byte 0x02000000
_080AA4E4: .4byte gUnknown_02038570
_080AA4E8: .4byte gMenuWindow
_080AA4EC: .4byte gUnknown_083C9282
	thumb_func_end sub_80AA4A8

	thumb_func_start sub_80AA4F0
sub_80AA4F0: @ 80AA4F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x8
	adds r4, r0, 0
	adds r6, r1, 0
	lsls r4, 24
	lsrs r4, 24
	lsls r6, 24
	lsrs r6, 24
	ldr r7, _080AA5A8
	ldr r0, _080AA5AC
	lsls r5, r6, 1
	adds r1, r5, r0
	ldrb r1, [r1]
	mov r9, r1
	adds r0, 0x1
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r10, r0
	movs r0, 0x7
	add r0, r9
	lsls r0, 24
	lsrs r0, 24
	mov r8, r0
	str r0, [sp]
	mov r0, r10
	adds r0, 0x1
	lsls r0, 24
	lsrs r0, 24
	str r0, [sp, 0x4]
	adds r0, r7, 0
	movs r1, 0
	mov r2, r9
	mov r3, r10
	bl FillWindowRect_DefaultPalette
	ldr r0, _080AA5B0
	lsls r4, 6
	adds r4, r5, r4
	adds r0, 0x1E
	adds r4, r0
	ldrh r1, [r4]
	movs r0, 0xD
	muls r1, r0
	ldr r0, _080AA5B4
	adds r1, r0
	lsls r2, r6, 3
	subs r2, r6
	lsls r2, 17
	movs r0, 0x8A
	lsls r0, 16
	adds r2, r0
	lsrs r2, 16
	mov r0, r10
	str r0, [sp]
	adds r0, r7, 0
	mov r3, r9
	bl sub_8003460
	ldr r0, _080AA5B8
	mov r9, r0
	ldrh r1, [r4]
	movs r2, 0x2
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	adds r5, r6
	lsls r5, 17
	movs r0, 0xFA
	lsls r0, 16
	adds r5, r0
	lsrs r5, 16
	mov r0, r10
	str r0, [sp]
	adds r0, r7, 0
	mov r1, r9
	adds r2, r5, 0
	mov r3, r8
	bl sub_8003460
	add sp, 0x8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AA5A8: .4byte gMenuWindow
_080AA5AC: .4byte gUnknown_083C928E
_080AA5B0: .4byte gUnknown_02038570
_080AA5B4: .4byte gMoveNames
_080AA5B8: .4byte gStringVar1
	thumb_func_end sub_80AA4F0

	thumb_func_start sub_80AA5BC
sub_80AA5BC: @ 80AA5BC
	push {lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r2, _080AA5E0
	ldr r1, _080AA5E4
	lsrs r0, 22
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x12
	str r0, [sp]
	adds r0, r2, 0
	movs r2, 0xC2
	movs r3, 0x3
	bl sub_8003460
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080AA5E0: .4byte gMenuWindow
_080AA5E4: .4byte gUnknown_083C93B4
	thumb_func_end sub_80AA5BC

	thumb_func_start sub_80AA5E8
sub_80AA5E8: @ 80AA5E8
	push {lr}
	sub sp, 0x4
	lsls r0, 24
	ldr r2, _080AA60C
	ldr r1, _080AA610
	lsrs r0, 22
	adds r0, r1
	ldr r1, [r0]
	movs r0, 0x4
	str r0, [sp]
	adds r0, r2, 0
	movs r2, 0xE8
	movs r3, 0x3
	bl sub_8003460
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_080AA60C: .4byte gMenuWindow
_080AA610: .4byte gUnknown_083C93F0
	thumb_func_end sub_80AA5E8

	thumb_func_start sub_80AA614
sub_80AA614: @ 80AA614
	push {r4,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	bl sub_80AE770
	adds r1, r0, 0
	lsls r1, 16
	lsrs r1, 16
	ldr r4, _080AA650
	adds r0, r4, 0
	movs r2, 0x1
	movs r3, 0x3
	bl ConvertIntToDecimalStringN
	ldr r0, _080AA654
	movs r1, 0xC
	str r1, [sp]
	adds r1, r4, 0
	movs r2, 0xE2
	movs r3, 0x3
	bl sub_8003460
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA650: .4byte 0x02000000
_080AA654: .4byte gMenuWindow
	thumb_func_end sub_80AA614

	thumb_func_start sub_80AA658
sub_80AA658: @ 80AA658
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	adds r0, r5, 0
	bl sub_80AA340
	adds r0, r5, 0
	bl sub_80AA388
	adds r0, r5, 0
	bl sub_80AA3D0
	adds r0, r5, 0
	bl sub_80AA418
	adds r0, r5, 0
	bl sub_80AA460
	adds r0, r5, 0
	bl sub_80AA4A8
	movs r4, 0
_080AA684:
	adds r0, r5, 0
	adds r1, r4, 0
	bl sub_80AA4F0
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	cmp r4, 0x3
	bls _080AA684
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_80AA658

	thumb_func_start sub_80AA69C
sub_80AA69C: @ 80AA69C
	push {r4-r6,lr}
	ldr r6, _080AA748
	ldr r5, _080AA74C
	ldrb r2, [r5]
	lsls r2, 6
	ldr r4, _080AA750
	adds r2, r4
	adds r0, r6, 0
	movs r1, 0x16
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r0, r4, 0x2
	adds r2, r0
	adds r0, r6, 0
	movs r1, 0x18
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r0, r4, 0x1
	adds r2, r0
	adds r0, r6, 0
	movs r1, 0x17
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r0, r4, 0x3
	adds r2, r0
	adds r0, r6, 0
	movs r1, 0x21
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r0, r4, 0x4
	adds r2, r0
	adds r0, r6, 0
	movs r1, 0x2F
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r0, r4, 0x5
	adds r2, r0
	adds r0, r6, 0
	movs r1, 0x30
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	subs r4, 0x8
	adds r2, r4
	adds r0, r6, 0
	movs r1, 0xD
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r2, r4
	adds r2, 0x2
	adds r0, r6, 0
	movs r1, 0xE
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r2, r4
	adds r2, 0x4
	adds r0, r6, 0
	movs r1, 0xF
	bl SetMonData
	ldrb r2, [r5]
	lsls r2, 6
	adds r2, r4
	adds r2, 0x6
	adds r0, r6, 0
	movs r1, 0x10
	bl SetMonData
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_080AA748: .4byte gPlayerParty
_080AA74C: .4byte gUnknown_02038695
_080AA750: .4byte gUnknown_02038596
	thumb_func_end sub_80AA69C

	thumb_func_start sub_80AA754
sub_80AA754: @ 80AA754
	push {r4,lr}
	adds r4, r0, 0
	ldr r0, _080AA774
	ldrh r1, [r0, 0x30]
	cmp r1, 0x20
	beq _080AA7A2
	cmp r1, 0x20
	bgt _080AA782
	cmp r1, 0x2
	beq _080AA7F8
	cmp r1, 0x2
	bgt _080AA778
	cmp r1, 0x1
	beq _080AA7D8
	b _080AA870
	.align 2, 0
_080AA774: .4byte gMain
_080AA778:
	cmp r1, 0x8
	beq _080AA868
	cmp r1, 0x10
	beq _080AA7A2
	b _080AA870
_080AA782:
	cmp r1, 0x80
	beq _080AA7C2
	cmp r1, 0x80
	bgt _080AA790
	cmp r1, 0x40
	beq _080AA7AC
	b _080AA870
_080AA790:
	movs r0, 0x80
	lsls r0, 1
	cmp r1, r0
	beq _080AA814
	movs r0, 0x80
	lsls r0, 2
	cmp r1, r0
	beq _080AA834
	b _080AA870
_080AA7A2:
	ldrh r0, [r4, 0x2E]
	movs r1, 0x1
	eors r0, r1
	strh r0, [r4, 0x2E]
	b _080AA870
_080AA7AC:
	ldrh r1, [r4, 0x30]
	movs r2, 0x30
	ldrsh r0, [r4, r2]
	cmp r0, 0
	bne _080AA7BC
	movs r0, 0x8
	strh r0, [r4, 0x30]
	b _080AA870
_080AA7BC:
	subs r0, r1, 0x1
	strh r0, [r4, 0x30]
	b _080AA870
_080AA7C2:
	ldrh r1, [r4, 0x30]
	movs r3, 0x30
	ldrsh r0, [r4, r3]
	cmp r0, 0x8
	bne _080AA7D2
	movs r0, 0
	strh r0, [r4, 0x30]
	b _080AA870
_080AA7D2:
	adds r0, r1, 0x1
	strh r0, [r4, 0x30]
	b _080AA870
_080AA7D8:
	ldr r2, _080AA7F4
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	lsls r0, 2
	movs r3, 0x30
	ldrsh r1, [r4, r3]
	lsls r1, 3
	adds r0, r1
	adds r0, r2
	ldr r2, [r0]
	adds r0, r4, 0
	movs r1, 0x1
	b _080AA84E
	.align 2, 0
_080AA7F4: .4byte gUnknown_083C92E4
_080AA7F8:
	ldr r1, _080AA810
	movs r0, 0x2E
	ldrsh r2, [r4, r0]
	lsls r2, 2
	movs r3, 0x30
	ldrsh r0, [r4, r3]
	lsls r0, 3
	adds r2, r0
	adds r2, r1
	movs r1, 0x1
	negs r1, r1
	b _080AA84A
	.align 2, 0
_080AA810: .4byte gUnknown_083C92E4
_080AA814:
	ldr r2, _080AA830
	movs r1, 0x2E
	ldrsh r0, [r4, r1]
	lsls r0, 2
	movs r3, 0x30
	ldrsh r1, [r4, r3]
	lsls r1, 3
	adds r0, r1
	adds r0, r2
	ldr r2, [r0]
	adds r0, r4, 0
	movs r1, 0xA
	b _080AA84E
	.align 2, 0
_080AA830: .4byte gUnknown_083C92E4
_080AA834:
	ldr r1, _080AA864
	movs r0, 0x2E
	ldrsh r2, [r4, r0]
	lsls r2, 2
	movs r3, 0x30
	ldrsh r0, [r4, r3]
	lsls r0, 3
	adds r2, r0
	adds r2, r1
	movs r1, 0xA
	negs r1, r1
_080AA84A:
	ldr r2, [r2]
	adds r0, r4, 0
_080AA84E:
	bl _call_via_r2
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldrh r1, [r4, 0x34]
	lsls r1, 24
	lsrs r1, 24
	bl sub_80AA614
	b _080AA870
	.align 2, 0
_080AA864: .4byte gUnknown_083C92E4
_080AA868:
	adds r0, r4, 0
	movs r1, 0x1
	bl sub_80AAD08
_080AA870:
	ldr r2, _080AA898
	movs r0, 0x2E
	ldrsh r1, [r4, r0]
	movs r3, 0x30
	ldrsh r0, [r4, r3]
	lsls r0, 1
	adds r1, r0
	adds r1, r2
	ldrb r0, [r1]
	strh r0, [r4, 0x20]
	ldr r1, _080AA89C
	movs r2, 0x30
	ldrsh r0, [r4, r2]
	adds r0, r1
	ldrb r0, [r0]
	strh r0, [r4, 0x22]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AA898: .4byte gUnknown_083C9296
_080AA89C: .4byte gUnknown_083C92A8
	thumb_func_end sub_80AA754

	thumb_func_start sub_80AA8A0
sub_80AA8A0: @ 80AA8A0
	push {r4,lr}
	adds r4, r0, 0
	lsls r2, 24
	lsrs r0, r2, 24
	lsls r1, 24
	asrs r1, 24
	cmp r1, 0x1
	bne _080AA8C0
	strh r0, [r4, 0x32]
	bl sub_80AA280
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA658
_080AA8C0:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80AA8A0

	thumb_func_start sub_80AA8C8
sub_80AA8C8: @ 80AA8C8
	push {lr}
	lsls r1, 24
	asrs r1, 24
	movs r2, 0
	bl sub_80AA8A0
	pop {r0}
	bx r0
	thumb_func_end sub_80AA8C8

	thumb_func_start sub_80AA8D8
sub_80AA8D8: @ 80AA8D8
	push {lr}
	lsls r1, 24
	asrs r1, 24
	movs r2, 0x1
	bl sub_80AA8A0
	pop {r0}
	bx r0
	thumb_func_end sub_80AA8D8

	thumb_func_start sub_80AA8E8
sub_80AA8E8: @ 80AA8E8
	push {lr}
	lsls r1, 24
	asrs r1, 24
	movs r2, 0x2
	bl sub_80AA8A0
	pop {r0}
	bx r0
	thumb_func_end sub_80AA8E8

	thumb_func_start sub_80AA8F8
sub_80AA8F8: @ 80AA8F8
	push {lr}
	lsls r1, 24
	asrs r1, 24
	movs r2, 0x3
	bl sub_80AA8A0
	pop {r0}
	bx r0
	thumb_func_end sub_80AA8F8

	thumb_func_start sub_80AA908
sub_80AA908: @ 80AA908
	push {lr}
	lsls r1, 24
	lsrs r1, 24
	lsls r2, 24
	asrs r2, 24
	adds r2, r1
	lsls r2, 16
	lsrs r0, r2, 16
	asrs r2, 16
	cmp r2, 0xFF
	ble _080AA922
	movs r0, 0xFF
	b _080AA928
_080AA922:
	cmp r2, 0
	bge _080AA928
	movs r0, 0
_080AA928:
	lsls r0, 24
	lsrs r0, 24
	pop {r1}
	bx r1
	thumb_func_end sub_80AA908

	thumb_func_start sub_80AA930
sub_80AA930: @ 80AA930
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AA970
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	adds r2, 0x26
	ldrb r3, [r2]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AA908
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	adds r1, 0x26
	strb r0, [r1]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA340
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA970: .4byte gUnknown_02038570
	thumb_func_end sub_80AA930

	thumb_func_start sub_80AA974
sub_80AA974: @ 80AA974
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AA9B4
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	adds r2, 0x28
	ldrb r3, [r2]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AA908
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	adds r1, 0x28
	strb r0, [r1]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA388
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA9B4: .4byte gUnknown_02038570
	thumb_func_end sub_80AA974

	thumb_func_start sub_80AA9B8
sub_80AA9B8: @ 80AA9B8
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AA9F8
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	adds r2, 0x27
	ldrb r3, [r2]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AA908
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	adds r1, 0x27
	strb r0, [r1]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA3D0
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AA9F8: .4byte gUnknown_02038570
	thumb_func_end sub_80AA9B8

	thumb_func_start sub_80AA9FC
sub_80AA9FC: @ 80AA9FC
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AAA3C
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	adds r2, 0x29
	ldrb r3, [r2]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AA908
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	adds r1, 0x29
	strb r0, [r1]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA418
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAA3C: .4byte gUnknown_02038570
	thumb_func_end sub_80AA9FC

	thumb_func_start sub_80AAA40
sub_80AAA40: @ 80AAA40
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AAA80
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	adds r2, 0x2A
	ldrb r3, [r2]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AA908
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	adds r1, 0x2A
	strb r0, [r1]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA460
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAA80: .4byte gUnknown_02038570
	thumb_func_end sub_80AAA40

	thumb_func_start sub_80AAA84
sub_80AAA84: @ 80AAA84
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AAAC4
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	adds r2, 0x2B
	ldrb r3, [r2]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AA908
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	adds r1, 0x2B
	strb r0, [r1]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA4A8
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAAC4: .4byte gUnknown_02038570
	thumb_func_end sub_80AAA84

	thumb_func_start sub_80AAAC8
sub_80AAAC8: @ 80AAAC8
	push {lr}
	lsls r1, 16
	lsrs r1, 16
	lsls r2, 24
	asrs r2, 24
	adds r1, r2
	lsls r1, 16
	lsrs r0, r1, 16
	asrs r1, 16
	movs r2, 0xB1
	lsls r2, 1
	cmp r1, r2
	ble _080AAAE6
	movs r0, 0x1
	b _080AAAEC
_080AAAE6:
	cmp r1, 0
	bge _080AAAEC
	adds r0, r2, 0
_080AAAEC:
	pop {r1}
	bx r1
	thumb_func_end sub_80AAAC8

	thumb_func_start sub_80AAAF0
sub_80AAAF0: @ 80AAAF0
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AAB2C
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	ldrh r3, [r2, 0x1E]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AAAC8
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	strh r0, [r1, 0x1E]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0
	bl sub_80AA4F0
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAB2C: .4byte gUnknown_02038570
	thumb_func_end sub_80AAAF0

	thumb_func_start sub_80AAB30
sub_80AAB30: @ 80AAB30
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AAB6C
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	ldrh r3, [r2, 0x20]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AAAC8
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	strh r0, [r1, 0x20]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x1
	bl sub_80AA4F0
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAB6C: .4byte gUnknown_02038570
	thumb_func_end sub_80AAB30

	thumb_func_start sub_80AAB70
sub_80AAB70: @ 80AAB70
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AABAC
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	ldrh r3, [r2, 0x22]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AAAC8
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	strh r0, [r1, 0x22]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x2
	bl sub_80AA4F0
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AABAC: .4byte gUnknown_02038570
	thumb_func_end sub_80AAB70

	thumb_func_start sub_80AABB0
sub_80AABB0: @ 80AABB0
	push {r4,r5,lr}
	adds r4, r0, 0
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	ldr r5, _080AABEC
	movs r3, 0x32
	ldrsh r2, [r4, r3]
	lsls r2, 6
	adds r2, r5
	ldrh r3, [r2, 0x24]
	lsls r2, r1, 24
	asrs r2, 24
	adds r1, r3, 0
	bl sub_80AAAC8
	movs r2, 0x32
	ldrsh r1, [r4, r2]
	lsls r1, 6
	adds r1, r5
	strh r0, [r1, 0x24]
	ldrh r0, [r4, 0x32]
	lsls r0, 24
	lsrs r0, 24
	movs r1, 0x3
	bl sub_80AA4F0
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AABEC: .4byte gUnknown_02038570
	thumb_func_end sub_80AABB0

	thumb_func_start sub_80AABF0
sub_80AABF0: @ 80AABF0
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r1, 24
	movs r0, 0xFF
	cmp r1, 0
	ble _080AABFE
	movs r0, 0x1
_080AABFE:
	lsls r0, 24
	asrs r0, 24
	ldrh r1, [r5, 0x34]
	adds r0, r1
	lsls r0, 24
	lsrs r4, r0, 24
	asrs r0, 24
	cmp r0, 0
	bge _080AAC14
	movs r4, 0
	b _080AAC1A
_080AAC14:
	cmp r0, 0x4
	ble _080AAC1A
	movs r4, 0x4
_080AAC1A:
	lsls r4, 24
	lsrs r0, r4, 24
	bl sub_80AA5BC
	asrs r4, 24
	strh r4, [r5, 0x34]
	ldr r0, _080AAC54
	strh r4, [r0]
	lsls r4, 24
	lsrs r4, 24
	ldr r0, _080AAC58
	ldrb r1, [r0]
	adds r0, r4, 0
	bl sub_80AE398
	ldrh r0, [r5, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA280
	ldrh r0, [r5, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA658
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAC54: .4byte gUnknown_0203869C
_080AAC58: .4byte gUnknown_0203869E
	thumb_func_end sub_80AABF0

	thumb_func_start sub_80AAC5C
sub_80AAC5C: @ 80AAC5C
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r1, 24
	cmp r1, 0
	ble _080AAC78
	ldr r1, _080AAC74
	ldrh r0, [r1]
	adds r0, 0x1
	strh r0, [r1]
	adds r4, r1, 0
	b _080AAC86
	.align 2, 0
_080AAC74: .4byte gUnknown_0203869E
_080AAC78:
	ldr r0, _080AACBC
	ldrh r2, [r0]
	adds r4, r0, 0
	cmp r2, 0
	beq _080AAC86
	subs r0, r2, 0x1
	strh r0, [r4]
_080AAC86:
	adds r1, r4, 0
	ldrh r0, [r1]
	cmp r0, 0x3
	bls _080AAC92
	movs r0, 0x3
	strh r0, [r1]
_080AAC92:
	ldrb r0, [r4]
	bl sub_80AA5E8
	ldr r0, _080AACC0
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl sub_80AE398
	ldrh r0, [r5, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA280
	ldrh r0, [r5, 0x32]
	lsls r0, 24
	lsrs r0, 24
	bl sub_80AA658
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AACBC: .4byte gUnknown_0203869E
_080AACC0: .4byte gUnknown_0203869C
	thumb_func_end sub_80AAC5C

	thumb_func_start sub_80AACC4
sub_80AACC4: @ 80AACC4
	push {lr}
	bl UpdatePaletteFade
	ldr r0, _080AACF8
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _080AACF4
	bl sub_80AA69C
	ldr r0, _080AACFC
	ldrb r1, [r0]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	bne _080AACEE
	ldr r0, _080AAD00
	ldrb r0, [r0]
	bl sub_80AE82C
_080AACEE:
	ldr r0, _080AAD04
	bl SetMainCallback2
_080AACF4:
	pop {r0}
	bx r0
	.align 2, 0
_080AACF8: .4byte gPaletteFade
_080AACFC: .4byte gUnknown_0203869A
_080AAD00: .4byte 0x02000000
_080AAD04: .4byte sub_80AB47C
	thumb_func_end sub_80AACC4

	thumb_func_start sub_80AAD08
sub_80AAD08: @ 80AAD08
	push {r4,lr}
	sub sp, 0x4
	lsls r1, 24
	asrs r1, 24
	cmp r1, 0x1
	bne _080AAD32
	ldr r1, _080AAD3C
	ldrh r0, [r0, 0x34]
	movs r4, 0
	strb r0, [r1]
	ldr r0, _080AAD40
	bl SetMainCallback2
	movs r0, 0x1
	negs r0, r0
	str r4, [sp]
	movs r1, 0
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
_080AAD32:
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080AAD3C: .4byte 0x02000000
_080AAD40: .4byte sub_80AACC4
	thumb_func_end sub_80AAD08

	thumb_func_start sub_80AAD44
sub_80AAD44: @ 80AAD44
	push {r4,r5,lr}
	lsls r1, 24
	asrs r1, 24
	cmp r1, 0x1
	bne _080AAD72
	bl sub_80AA69C
	movs r4, 0
	ldr r5, _080AAD78
_080AAD56:
	lsls r0, r4, 24
	lsrs r0, 24
	ldr r1, _080AAD7C
	ldrb r1, [r1]
	bl sub_80AE770
	strh r0, [r5]
	adds r5, 0x2
	adds r4, 0x1
	cmp r4, 0x3
	ble _080AAD56
	ldr r0, _080AAD80
	bl SetMainCallback2
_080AAD72:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080AAD78: .4byte gUnknown_02038670
_080AAD7C: .4byte gUnknown_0203869C
_080AAD80: .4byte sub_805469C
	thumb_func_end sub_80AAD44

	thumb_func_start sub_80AAD84
sub_80AAD84: @ 80AAD84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x64
	mov r9, r0
	lsls r1, 24
	lsrs r1, 24
	str r1, [sp, 0x48]
	lsls r2, 24
	lsrs r2, 24
	str r2, [sp, 0x4C]
	lsls r3, 24
	lsrs r3, 24
	mov r10, r3
	mov r5, r10
	adds r5, 0x1
	lsls r1, r5, 8
	ldr r0, _080AAEC4
	subs r1, r0, r1
	movs r0, 0
	str r0, [sp, 0x44]
	ldr r4, _080AAEC8
	add r0, sp, 0x44
	str r0, [r4]
	str r1, [r4, 0x4]
	ldr r0, _080AAECC
	str r0, [r4, 0x8]
	ldr r0, [r4, 0x8]
	mov r0, r9
	bl StringLength
	lsls r0, 16
	lsrs r7, r0, 16
	cmp r7, 0x8
	bls _080AADD0
	movs r7, 0x8
_080AADD0:
	movs r6, 0
	mov r8, r5
	mov r1, r10
	lsls r1, 1
	str r1, [sp, 0x58]
	ldr r2, [sp, 0x48]
	adds r2, 0x20
	str r2, [sp, 0x5C]
	cmp r6, r7
	bge _080AAE1E
	add r5, sp, 0x40
	add r0, sp, 0x20
	mov r10, r0
	ldr r2, _080AAEC4
_080AADEC:
	mov r1, r9
	adds r0, r1, r6
	ldrb r0, [r0]
	strb r0, [r5]
	movs r0, 0xFF
	strb r0, [r5, 0x1]
	mov r0, sp
	adds r1, r5, 0
	str r2, [sp, 0x60]
	bl sub_80034D4
	mov r1, r8
	lsls r0, r1, 8
	ldr r2, [sp, 0x60]
	subs r0, r2, r0
	mov r1, r10
	str r1, [r4]
	str r0, [r4, 0x4]
	ldr r0, _080AAED0
	str r0, [r4, 0x8]
	ldr r0, [r4, 0x8]
	adds r2, 0x20
	adds r6, 0x1
	cmp r6, r7
	blt _080AADEC
_080AAE1E:
	movs r1, 0x7C
	ldr r2, [sp, 0x58]
	subs r1, r2
	lsls r1, 24
	lsrs r7, r1, 24
	ldr r0, _080AAED4
	mov r9, r0
	lsls r3, r7, 3
	add r3, r9
	ldr r0, _080AAED8
	ldr r1, [r0]
	ldr r2, [r0, 0x4]
	str r1, [sp, 0x50]
	str r2, [sp, 0x54]
	str r1, [r3, 0x3C]
	str r2, [r3, 0x40]
	mov r2, r8
	lsls r0, r2, 3
	movs r1, 0x80
	lsls r1, 3
	adds r2, r1, 0
	subs r2, r0
	adds r6, r3, 0
	adds r6, 0x40
	ldr r0, _080AAEDC
	mov r8, r0
	mov r1, r8
	ands r2, r1
	ldrh r5, [r6]
	ldr r4, _080AAEE0
	adds r0, r4, 0
	ands r0, r5
	orrs r0, r2
	strh r0, [r6]
	ldrh r5, [r3, 0x3E]
	ldr r2, _080AAEE4
	adds r0, r2, 0
	ands r0, r5
	ldr r1, [sp, 0x48]
	orrs r0, r1
	strh r0, [r3, 0x3E]
	adds r3, 0x3C
	add r0, sp, 0x4C
	ldrb r0, [r0]
	strb r0, [r3]
	adds r1, r7, 0x1
	lsls r1, 3
	mov r0, r9
	adds r7, r1, r0
	ldr r0, [sp, 0x50]
	ldr r1, [sp, 0x54]
	str r0, [r7, 0x3C]
	str r1, [r7, 0x40]
	ldrh r0, [r6]
	lsls r0, 22
	lsrs r0, 22
	adds r0, 0x4
	adds r5, r7, 0
	adds r5, 0x40
	mov r1, r8
	ands r0, r1
	ldrh r3, [r5]
	ands r4, r3
	orrs r4, r0
	strh r4, [r5]
	ldrh r0, [r7, 0x3E]
	ands r2, r0
	ldr r0, [sp, 0x5C]
	orrs r2, r0
	strh r2, [r7, 0x3E]
	adds r1, r7, 0
	adds r1, 0x3C
	add r2, sp, 0x4C
	ldrb r2, [r2]
	strb r2, [r1]
	add sp, 0x64
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAEC4: .4byte 0x06018000
_080AAEC8: .4byte 0x040000d4
_080AAECC: .4byte 0x85000040
_080AAED0: .4byte 0x84000008
_080AAED4: .4byte gMain
_080AAED8: .4byte gUnknown_083C9400
_080AAEDC: .4byte 0x000003ff
_080AAEE0: .4byte 0xfffffc00
_080AAEE4: .4byte 0xfffffe00
	thumb_func_end sub_80AAD84

	thumb_func_start unref_sub_80AAEE8
unref_sub_80AAEE8: @ 80AAEE8
	push {r4-r7,lr}
	sub sp, 0xC
	adds r4, r0, 0
	lsls r1, 24
	lsrs r7, r1, 24
	lsls r2, 24
	lsrs r6, r2, 24
	lsls r3, 24
	lsrs r5, r3, 24
	movs r0, 0
	cmp r4, 0
	bge _080AAF08
	mov r1, sp
	movs r0, 0xAE
	strb r0, [r1]
	movs r0, 0x1
_080AAF08:
	add r0, sp
	adds r1, r4, 0
	cmp r1, 0
	bge _080AAF12
	negs r1, r1
_080AAF12:
	movs r2, 0
	movs r3, 0x8
	bl ConvertIntToDecimalStringN
	mov r0, sp
	adds r1, r7, 0
	adds r2, r6, 0
	adds r3, r5, 0
	bl sub_80AAD84
	add sp, 0xC
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end unref_sub_80AAEE8

	thumb_func_start sub_80AAF30
sub_80AAF30: @ 80AAF30
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, 0x4
	ldr r1, _080AAFC0
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, _080AAFC4
	movs r0, 0x3
	strb r0, [r1]
	movs r0, 0
	bl sub_80AE098
	movs r4, 0x3
	movs r5, 0x1
	negs r5, r5
	ldr r3, _080AAFC8
	movs r2, 0x3
_080AAF56:
	adds r1, r4, r3
	subs r0, r2, r4
	strb r0, [r1]
	subs r4, 0x1
	cmp r4, r5
	bgt _080AAF56
	movs r4, 0
	movs r6, 0
	ldr r7, _080AAFCC
	ldr r5, _080AAFD0
	mov r9, r5
_080AAF6C:
	lsls r1, r4, 1
	strh r6, [r7]
	ldr r0, _080AAFD4
	mov r8, r0
	adds r0, r1, r0
	strh r6, [r0]
	ldr r3, _080AAFD8
	adds r1, r3
	strh r6, [r1]
	adds r0, r5, 0
	mov r1, r9
	adds r1, 0xC0
	movs r2, 0x40
	str r3, [sp]
	bl memcpy
	adds r7, 0x2
	adds r5, 0x40
	adds r4, 0x1
	ldr r3, [sp]
	cmp r4, 0x2
	ble _080AAF6C
	ldr r0, _080AAFCC
	movs r1, 0x96
	lsls r1, 1
	strh r1, [r0, 0x6]
	movs r0, 0xC8
	lsls r0, 1
	mov r1, r8
	strh r0, [r1, 0x6]
	strh r0, [r3, 0x6]
	movs r0, 0xFE
	bl sub_80B2A7C
	add sp, 0x4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080AAFC0: .4byte gUnknown_0203856C
_080AAFC4: .4byte gUnknown_02038695
_080AAFC8: .4byte gUnknown_02038690
_080AAFCC: .4byte gUnknown_02038670
_080AAFD0: .4byte gUnknown_02038570
_080AAFD4: .4byte gUnknown_02038680
_080AAFD8: .4byte gUnknown_02038678
	thumb_func_end sub_80AAF30

	thumb_func_start sub_80AAFDC
sub_80AAFDC: @ 80AAFDC
	push {lr}
	bl sub_80AAF30
	bl sub_8071C20
	movs r0, 0x1
	pop {r1}
	bx r1
	thumb_func_end sub_80AAFDC

	thumb_func_start sub_80AAFEC
sub_80AAFEC: @ 80AAFEC
	push {r4,lr}
	ldr r1, _080AB01C
	movs r0, 0
	strb r0, [r1]
	movs r4, 0
	ldr r3, _080AB020
	ldr r2, _080AB024
	ldr r1, _080AB028
	movs r0, 0x3
_080AAFFE:
	strh r4, [r1]
	strh r4, [r2]
	strh r4, [r3]
	adds r3, 0x2
	adds r2, 0x2
	adds r1, 0x2
	subs r0, 0x1
	cmp r0, 0
	bge _080AAFFE
	bl sub_8071C20
	movs r0, 0x1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080AB01C: .4byte gUnknown_0203856C
_080AB020: .4byte gUnknown_02038678
_080AB024: .4byte gUnknown_02038680
_080AB028: .4byte gUnknown_02038670
	thumb_func_end sub_80AAFEC

	thumb_func_start sub_80AB02C
sub_80AB02C: @ 80AB02C
	push {r4,r5,lr}
	ldr r1, _080AB078
	movs r0, 0x3
	strb r0, [r1]
	movs r0, 0
	bl sub_80AE098
	movs r2, 0x3
	movs r5, 0x1
	negs r5, r5
	ldr r4, _080AB07C
	movs r3, 0x3
_080AB044:
	adds r1, r2, r4
	subs r0, r3, r2
	strb r0, [r1]
	subs r2, 0x1
	cmp r2, r5
	bgt _080AB044
	ldr r1, _080AB080
	movs r0, 0
	strh r0, [r1]
	adds r4, r1, 0
_080AB058:
	movs r0, 0xFF
	bl sub_80B2A7C
	ldrh r0, [r4]
	adds r0, 0x1
	strh r0, [r4]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x4
	bls _080AB058
	bl sub_8071C20
	movs r0, 0x1
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_080AB078: .4byte gUnknown_02038695
_080AB07C: .4byte gUnknown_02038690
_080AB080: .4byte gUnknown_0203869C
	thumb_func_end sub_80AB02C

	thumb_func_start unref_sub_80AB084
unref_sub_80AB084: @ 80AB084
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, 0x8
	mov r8, r0
	ldr r0, _080AB160
	movs r1, 0
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x2
	strh r1, [r0]
	adds r0, 0x22
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	subs r0, 0x2
	strh r1, [r0]
	adds r0, 0x4
	strh r1, [r0]
	movs r2, 0x80
	lsls r2, 19
	movs r3, 0xFA
	lsls r3, 5
	adds r0, r3, 0
	strh r0, [r2]
	ldr r3, _080AB164
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r4, _080AB168
	ldrh r0, [r4]
	movs r1, 0x1
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	ldr r1, _080AB16C
	movs r0, 0x8
	strh r0, [r1]
	bl ResetTasks
	bl ResetSpriteData
	ldr r0, _080AB170
	bl SetMainCallback2
	movs r2, 0xC0
	lsls r2, 19
	movs r3, 0xC0
	lsls r3, 9
	movs r5, 0
	ldr r1, _080AB174
	movs r4, 0x80
	lsls r4, 5
	ldr r6, _080AB178
	movs r7, 0x85
	lsls r7, 24
_080AB108:
	str r5, [sp, 0x4]
	add r0, sp, 0x4
	str r0, [r1]
	str r2, [r1, 0x4]
	str r6, [r1, 0x8]
	ldr r0, [r1, 0x8]
	adds r2, r4
	subs r3, r4
	cmp r3, r4
	bhi _080AB108
	str r5, [sp, 0x4]
	add r0, sp, 0x4
	str r0, [r1]
	str r2, [r1, 0x4]
	lsrs r0, r3, 2


