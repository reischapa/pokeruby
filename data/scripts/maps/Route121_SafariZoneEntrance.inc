Route121_SafariZoneEntrance_MapScripts:: @ 815C323
	map_script 2, Route121_SafariZoneEntrance_MapScript2_15C329
	.byte 0

Route121_SafariZoneEntrance_MapScript2_15C329:: @ 815C329
	map_script_2 0x40a4, 1, Route121_SafariZoneEntrance_EventScript_15C333
	.2byte 0

Route121_SafariZoneEntrance_EventScript_15C333:: @ 815C333
	lockall
	applymovement 255, Route121_SafariZoneEntrance_Movement_15C348
	waitmovement 0
	special ExitSafariMode
	setvar 0x40a4, 0
	releaseall
	end

Route121_SafariZoneEntrance_Movement_15C348:: @ 815C348
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

Route121_SafariZoneEntrance_EventScript_15C351:: @ 815C351
	msgbox Route121_SafariZoneEntrance_Text_1C35D0, 2
	end

Route121_SafariZoneEntrance_EventScript_15C35A:: @ 815C35A
	lock
	faceplayer
	msgbox Route121_SafariZoneEntrance_Text_1C3704, 5
	compare RESULT, 1
	goto_if_eq Route121_SafariZoneEntrance_EventScript_15C379
	msgbox Route121_SafariZoneEntrance_Text_1C373C, 4
	release
	end

Route121_SafariZoneEntrance_EventScript_15C379:: @ 815C379
	msgbox Route121_SafariZoneEntrance_Text_1C375F, 4
	release
	end

Route121_SafariZoneEntrance_EventScript_15C383:: @ 815C383
	lockall
	applymovement 255, Route121_SafariZoneEntrance_Movement_1A0841
	waitmovement 0
	showmoneybox 0, 0
	nop
	msgbox Route121_SafariZoneEntrance_Text_1C3832, 5
	compare RESULT, 1
	goto_if_eq Route121_SafariZoneEntrance_EventScript_15C3B3
	msgbox Route121_SafariZoneEntrance_Text_1C3895, 4
	goto Route121_SafariZoneEntrance_EventScript_15C46C
	end

Route121_SafariZoneEntrance_EventScript_15C3B3:: @ 815C3B3
	checkitem ITEM_POKEBLOCK_CASE, 1
	compare RESULT, 0
	goto_if_eq Route121_SafariZoneEntrance_EventScript_15C450
	call Route121_SafariZoneEntrance_EventScript_15C425
	checkmoney 0x1f4, 0
	compare RESULT, 0
	goto_if_eq Route121_SafariZoneEntrance_EventScript_15C45E
	msgbox Route121_SafariZoneEntrance_Text_1C38D9, 4
	takemoney 0x1f4, 0
	updatemoneybox 0, 0
	nop
	msgbox Route121_SafariZoneEntrance_Text_1C38F4, 4
	playfanfare 370
	message Route121_SafariZoneEntrance_Text_1C3910
	waitfanfare
	waitmessage
	msgbox Route121_SafariZoneEntrance_Text_1C392D, 4
	closemessage
	hidemoneybox 0, 0
	applymovement 255, Route121_SafariZoneEntrance_Movement_15C47E
	waitmovement 0
	special EnterSafariMode
	setvar 0x40a4, 2
	warp SafariZone_Southeast, 255, 32, 33
	waitstate
	end

Route121_SafariZoneEntrance_EventScript_15C425:: @ 815C425
	countpokemon
	compare RESULT, 6
	goto_if 5, Route121_SafariZoneEntrance_EventScript_15C44F
	specialvar RESULT, CheckFreePokemonStorageSpace
	compare RESULT, 1
	goto_if_eq Route121_SafariZoneEntrance_EventScript_15C44F
	msgbox Route121_SafariZoneEntrance_Text_1C39A3, 4
	goto Route121_SafariZoneEntrance_EventScript_15C46C
	end

Route121_SafariZoneEntrance_EventScript_15C44F:: @ 815C44F
	return

Route121_SafariZoneEntrance_EventScript_15C450:: @ 815C450
	msgbox Route121_SafariZoneEntrance_Text_1C39C3, 4
	goto Route121_SafariZoneEntrance_EventScript_15C46C
	end

Route121_SafariZoneEntrance_EventScript_15C45E:: @ 815C45E
	msgbox Route121_SafariZoneEntrance_Text_1C38B5, 4
	goto Route121_SafariZoneEntrance_EventScript_15C46C
	end

Route121_SafariZoneEntrance_EventScript_15C46C:: @ 815C46C
	closemessage
	hidemoneybox 0, 0
	applymovement 255, Route121_SafariZoneEntrance_Movement_15C47C
	waitmovement 0
	releaseall
	end

Route121_SafariZoneEntrance_Movement_15C47C:: @ 815C47C
	step_right
	step_end

Route121_SafariZoneEntrance_Movement_15C47E:: @ 815C47E
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_down
	step_14
	step_end

Route121_SafariZoneEntrance_EventScript_15C487:: @ 815C487
	msgbox Route121_SafariZoneEntrance_Text_1C3E4B, 3
	end
