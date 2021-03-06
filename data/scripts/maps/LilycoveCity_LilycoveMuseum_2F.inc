LilycoveCity_LilycoveMuseum_2F_MapScripts:: @ 81585AC
	map_script 1, LilycoveCity_LilycoveMuseum_2F_MapScript1_1585B7
	map_script 2, LilycoveCity_LilycoveMuseum_2F_MapScript2_158670
	.byte 0

LilycoveCity_LilycoveMuseum_2F_MapScript1_1585B7:: @ 81585B7
	checkflag 160
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_1585FD
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585C6
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1585C6:: @ 81585C6
	checkflag 161
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_158615
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585D5
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1585D5:: @ 81585D5
	checkflag 162
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_15862D
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585E4
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1585E4:: @ 81585E4
	checkflag 163
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_158645
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585F3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1585F3:: @ 81585F3
	checkflag 164
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_15865D
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1585FD:: @ 81585FD
	setmaptile 10, 6, 606, 1
	setmaptile 11, 6, 607, 1
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585C6
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158615:: @ 8158615
	setmaptile 18, 6, 604, 1
	setmaptile 19, 6, 605, 1
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585D5
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15862D:: @ 815862D
	setmaptile 14, 10, 608, 1
	setmaptile 15, 10, 609, 1
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585E4
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158645:: @ 8158645
	setmaptile 6, 10, 602, 1
	setmaptile 7, 10, 603, 1
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_1585F3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15865D:: @ 815865D
	setmaptile 2, 6, 610, 1
	setmaptile 3, 6, 611, 1
	end

LilycoveCity_LilycoveMuseum_2F_MapScript2_158670:: @ 8158670
	map_script_2 0x4094, 0, LilycoveCity_LilycoveMuseum_2F_EventScript_15867A
	.2byte 0

LilycoveCity_LilycoveMuseum_2F_EventScript_15867A:: @ 815867A
	lockall
	applymovement 1, LilycoveCity_LilycoveMuseum_2F_Movement_1A0839
	applymovement 255, LilycoveCity_LilycoveMuseum_2F_Movement_1586D3
	waitmovement 0
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_187C42, 3
	applymovement 1, LilycoveCity_LilycoveMuseum_2F_Movement_1586D5
	waitmovement 0
	applymovement 255, LilycoveCity_LilycoveMuseum_2F_Movement_1586D5
	waitmovement 0
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_187C64, 3
	applymovement 1, LilycoveCity_LilycoveMuseum_2F_Movement_1A0839
	waitmovement 0
	applymovement 255, LilycoveCity_LilycoveMuseum_2F_Movement_1586D3
	waitmovement 0
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_187E1D, 3
	copyvar 0x4094, 0x1
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_Movement_1586D3:: @ 81586D3
	step_27
	step_end

LilycoveCity_LilycoveMuseum_2F_Movement_1586D5:: @ 81586D5
	step_01
	step_14
	step_end

LilycoveCity_LilycoveMuseum_2F_EventScript_1586D8:: @ 81586D8
	lockall
	checkflag 236
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_158793
	specialvar 0x8004, sub_80C4D50
	switch 0x8004
	case 1, LilycoveCity_LilycoveMuseum_2F_EventScript_15872C
	case 2, LilycoveCity_LilycoveMuseum_2F_EventScript_15872C
	case 3, LilycoveCity_LilycoveMuseum_2F_EventScript_15872C
	case 4, LilycoveCity_LilycoveMuseum_2F_EventScript_15872C
	case 5, LilycoveCity_LilycoveMuseum_2F_EventScript_158735
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_187F4E, 2
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15872C:: @ 815872C
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_187F9D, 2
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158735:: @ 8158735
	applymovement 1, LilycoveCity_LilycoveMuseum_2F_Movement_1A0839
	waitmovement 0
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18802F, 4
	applymovement 1, LilycoveCity_LilycoveMuseum_2F_Movement_1586D5
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188041, 4
	goto LilycoveCity_LilycoveMuseum_2F_EventScript_15875C
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15875C:: @ 815875C
	applymovement 1, LilycoveCity_LilycoveMuseum_2F_Movement_1A0839
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188120, 4
	givedecoration 44
	compare RESULT, 0
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_158783
	setflag 236
	closemessage
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158783:: @ 8158783
	call LilycoveCity_LilycoveMuseum_2F_EventScript_1A02B8
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188166, 4
	closemessage
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158793:: @ 8158793
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188194, 2
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15879D:: @ 815879D
	lockall
	checkflag 162
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_15883C
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188219, 3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1587B0:: @ 81587B0
	lockall
	checkflag 164
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_158858
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18824C, 3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1587C3:: @ 81587C3
	lockall
	checkflag 160
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_158820
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_1882B4, 3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1587D6:: @ 81587D6
	lockall
	checkflag 161
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_15882E
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188281, 3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_1587E9:: @ 81587E9
	lockall
	checkflag 163
	goto_if_eq LilycoveCity_LilycoveMuseum_2F_EventScript_15884A
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_1882E6, 3
	end

@ 81587FC
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18831A, 3
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158805:: @ 8158805
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188336, 2
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15880E:: @ 815880E
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_1883AB, 2
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158817:: @ 8158817
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_188423, 2
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158820:: @ 8158820
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18831A, 3
	fadescreen 1
	drawcontestwinner 9
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15882E:: @ 815882E
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18831A, 3
	fadescreen 1
	drawcontestwinner 10
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15883C:: @ 815883C
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18831A, 3
	fadescreen 1
	drawcontestwinner 11
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_15884A:: @ 815884A
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18831A, 3
	fadescreen 1
	drawcontestwinner 12
	releaseall
	end

LilycoveCity_LilycoveMuseum_2F_EventScript_158858:: @ 8158858
	msgbox LilycoveCity_LilycoveMuseum_2F_Text_18831A, 3
	fadescreen 1
	drawcontestwinner 13
	releaseall
	end
