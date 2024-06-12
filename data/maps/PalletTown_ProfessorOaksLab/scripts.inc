# 1 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 2 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_PROF_OAK,        4
# 3 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_BULBASAUR_BALL,  5
# 4 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_SQUIRTLE_BALL,   6
# 5 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_CHARMANDER_BALL, 7
# 6 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_RIVAL,           8
# 7 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_POKEDEX_1,       9
# 8 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ LOCALID_POKEDEX_2,       10
# 9 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ PLAYER_STARTER_NUM,      VAR_TEMP_1
# 10 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ PLAYER_STARTER_SPECIES,  VAR_TEMP_2
# 11 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ RIVAL_STARTER_SPECIES,   VAR_TEMP_3
# 12 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ RIVAL_STARTER_ID,        VAR_TEMP_4
# 13 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 14 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
.equ SHOWED_OAK_COMPLETE_DEX, FLAG_TEMP_2
# 15 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 16 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_MapScripts::
# 17 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	map_script MAP_SCRIPT_ON_TRANSITION, PalletTown_ProfessorOaksLab_OnTransition
# 18 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, PalletTown_ProfessorOaksLab_OnWarp
# 19 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	map_script MAP_SCRIPT_ON_FRAME_TABLE, PalletTown_ProfessorOaksLab_OnFrame
# 20 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	.byte 0
# 21 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 22 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_OnTransition::
# 23 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_VISITED_OAKS_LAB
# 24 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 1, PalletTown_ProfessorOaksLab_EventScript_ReadyOakForStarterScene
# 25 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 7, PalletTown_ProfessorOaksLab_EventScript_ReadyOakForNationalDexScene
# 26 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 8, PalletTown_ProfessorOaksLab_EventScript_SetNationalDexSceneFinished
# 27 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_set FLAG_GOT_POKEBALLS_FROM_OAK_AFTER_22_RIVAL, PalletTown_ProfessorOaksLab_EventScript_SetSkipPokeBallCheck
# 28 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 29 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 30 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_SetSkipPokeBallCheck::
# 31 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_OAK_SKIP_22_RIVAL_CHECK
# 32 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 33 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 34 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_SetNationalDexSceneFinished::
# 35 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 9
# 36 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 37 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 38 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ReadyOakForStarterScene::
# 39 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_PROF_OAK, 6, 11
# 40 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectmovementtype LOCALID_PROF_OAK, MOVEMENT_TYPE_FACE_UP
# 41 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	savebgm MUS_OAK
# 42 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 43 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 44 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ReadyOakForNationalDexScene::
# 45 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_PROF_OAK, 6, 11
# 46 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectmovementtype LOCALID_PROF_OAK, MOVEMENT_TYPE_FACE_UP
# 47 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 48 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 49 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_OnWarp::
# 50 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	map_script_2 VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 1, PalletTown_ProfessorOaksLab_EventScript_ReadyPlayerForStarterScene
# 51 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	.2byte 0
# 52 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 53 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ReadyPlayerForStarterScene::
# 54 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	turnobject OBJ_EVENT_ID_PLAYER, DIR_NORTH
# 55 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 56 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 57 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_OnFrame::
# 58 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	map_script_2 VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 1, PalletTown_ProfessorOaksLab_ChooseStarterScene
# 59 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	map_script_2 VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 7, PalletTown_ProfessorOaksLab_EventScript_EnterForNationalDexScene
# 60 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	.2byte 0
# 61 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 62 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_EnterForNationalDexScene:: @ 8169002 
# 63 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 64 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_FACING, DIR_NORTH
# 65 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_MALE
# 66 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakEnter
# 67 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 68 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_PROF_OAK
# 69 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_PROF_OAK, 6, 3
# 70 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectmovementtype LOCALID_PROF_OAK, MOVEMENT_TYPE_FACE_DOWN
# 71 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	clearflag FLAG_HIDE_OAK_IN_HIS_LAB
# 72 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerEnter
# 73 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 74 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_NationalDexScene
# 75 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 76 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 77 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_NationalDexScene::
# 78 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakSightingsOfRareMons
# 79 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 80 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterNorth
# 81 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterSouth
# 82 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterEastWest
# 83 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterEastWest
# 84 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalJustLetMeHandleEverything
# 85 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	fadedefaultbgm
# 86 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakNeedYourHelpTooNeedToSeePokedexes
# 87 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_PlayerFaceOakNorth
# 88 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_PlayerFaceOakWest
# 89 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_NEUTRAL
# 90 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakTookBothPokedexUnits
# 91 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 92 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call EventScript_RestorePrevTextColor
# 93 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskNorth
# 94 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskSouth
# 95 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskEast
# 96 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskWest
# 97 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_POKEDEX_1
# 98 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_POKEDEX_2
# 99 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 30
# 100 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakNowTheseUnitsCanRecordMoreData
# 101 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 102 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_POKEDEX_1
# 103 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_POKEDEX_2
# 104 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 30
# 105 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverNorth
# 106 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverSouth
# 107 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverEast
# 108 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverWest
# 109 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_NEUTRAL
# 110 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playfanfare MUS_OBTAIN_KEY_ITEM
# 111 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	message PalletTown_ProfessorOaksLab_Text_PlayersPokedexWasUpgraded
# 112 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmessage
# 113 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitfanfare
# 114 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call EventScript_RestorePrevTextColor
# 115 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	special EnableNationalPokedex
# 116 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakMustReallyWorkToFillPokedex
# 117 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalIllCompleteThePokedex
# 118 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 119 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_RIVAL_EXIT, 0
# 120 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_RivalExitNorth
# 121 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_RivalExit
# 122 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_RivalExit
# 123 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_RivalExit
# 124 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_RIVAL
# 125 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	fadedefaultbgm
# 126 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 8
# 127 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
# 128 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 129 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 130 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterNorth::
# 131 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_RIVAL, 5, 10
# 132 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_RIVAL
# 133 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_ENCOUNTER_RIVAL, 0
# 134 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterNorth
# 135 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalEnter
# 136 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 137 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 138 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 139 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterEastWest::
# 140 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_RIVAL, 6, 10
# 141 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_RIVAL
# 142 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_ENCOUNTER_RIVAL, 0
# 143 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 144 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterEastWest
# 145 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalEnter
# 146 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 147 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 148 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 149 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_NationalDexSceneRivalEnterSouth::
# 150 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_RIVAL, 6, 10
# 151 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_RIVAL
# 152 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_ENCOUNTER_RIVAL, 0
# 153 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 154 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalEnter
# 155 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 156 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 157 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 158 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_PlayerFaceOakNorth::
# 159 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 160 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 161 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 162 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 163 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_PlayerFaceOakWest::
# 164 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 165 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 166 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 167 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 168 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskNorth::
# 169 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesToDesk
# 170 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 171 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 172 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 173 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskSouth::
# 174 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesToDeskSouth
# 175 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDesk
# 176 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDesk
# 177 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_PROF_OAK
# 178 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 179 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 180 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskEast::
# 181 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesToDesk
# 182 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDeskEast
# 183 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_PROF_OAK
# 184 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 185 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 186 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesToDeskWest::
# 187 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesToDesk
# 188 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 189 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 190 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 191 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakBringDexesToDesk::
# 192 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 193 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 194 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 195 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 196 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_4
# 197 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 198 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 199 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakBringDexesToDeskSouth::
# 200 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 201 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 202 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 203 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 204 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_4
# 205 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 206 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 207 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_ChooseStarterScene::
# 208 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 209 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_MALE
# 210 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakEnter
# 211 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 212 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_PROF_OAK
# 213 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_PROF_OAK, 6, 3
# 214 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectmovementtype LOCALID_PROF_OAK, MOVEMENT_TYPE_FACE_DOWN
# 215 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	clearflag FLAG_HIDE_OAK_IN_HIS_LAB
# 216 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerEnter
# 217 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 218 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, Common_Movement_WalkInPlaceFasterUp
# 219 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 220 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	clearflag FLAG_DONT_TRANSITION_MUSIC
# 221 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	savebgm MUS_DUMMY
# 222 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	fadedefaultbgm
# 223 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalFedUpWithWaiting
# 224 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 225 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 60
# 226 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakThreeMonsChooseOne
# 227 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 228 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 30
# 229 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalReact
# 230 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 231 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalNoFairWhatAboutMe
# 232 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakBePatientRival
# 233 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 2
# 234 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
# 235 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 236 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 237 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakEnter::
# 238 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 239 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 240 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 241 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 242 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 243 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 244 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 245 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 246 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_PlayerEnter::
# 247 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 248 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 249 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 250 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 251 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 252 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 253 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 254 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 255 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 256 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 257 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalReact::
# 258 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_up
# 259 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_up
# 260 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 261 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 262 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_LeaveStarterSceneTrigger::
# 263 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 264 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_MALE
# 265 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FaceDown
# 266 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 267 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakHeyDontGoAwayYet
# 268 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 269 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerWalkUp
# 270 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 271 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
# 272 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 273 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 274 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_PlayerWalkUp::
# 275 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 276 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 277 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 278 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattleTriggerLeft::
# 279 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 280 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_TEMP_2, 1
# 281 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattle
# 282 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 283 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 284 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattleTriggerMid::
# 285 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 286 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_TEMP_2, 2
# 287 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattle
# 288 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 289 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 290 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattleTriggerRight::
# 291 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 292 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_TEMP_2, 3
# 293 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattle
# 294 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 295 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 296 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattle::
# 297 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_MALE
# 298 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_ENCOUNTER_RIVAL, 0
# 299 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, Common_Movement_WalkInPlaceFasterDown
# 300 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 301 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 302 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 303 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalLetsCheckOutMons
# 304 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 305 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FaceDown
# 306 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 307 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_STARTER_MON, 0, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmander
# 308 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_STARTER_MON, 1, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaur
# 309 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_STARTER_MON, 2, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtle
# 310 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 311 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 312 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
@ The scripts for the rival approaching the player for battle are a bit bloated because
# 313 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
@ both the player and rival can be in 3 different positions, so theres 9 different approaches
# 314 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
@ NOTE: Names below refer to the Rival's mon (e.g. for RivalBattleSquirtle, player has Charmander)
# 315 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 316 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtle::
# 317 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 1, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtleLeft
# 318 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 2, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtleMid
# 319 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtleRight
# 320 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 321 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 322 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtleLeft::
# 323 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleSquirtleLeft
# 324 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 325 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleSquirtle
# 326 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 327 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 328 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtleMid::
# 329 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleSquirtleMid
# 330 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 331 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleSquirtle
# 332 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 333 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 334 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleSquirtleRight::
# 335 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleSquirtleRight
# 336 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 337 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleSquirtle
# 338 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 339 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 340 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattleSquirtle::
# 341 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	trainerbattle_earlyrival TRAINER_RIVAL_OAKS_LAB_SQUIRTLE, RIVAL_BATTLE_TUTORIAL, PalletTown_ProfessorOaksLab_Text_RivalDefeat, Text_RivalVictory
# 342 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_EndRivalBattle
# 343 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 344 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 345 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleSquirtleLeft::
# 346 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 347 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 348 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 349 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 350 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 351 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 352 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 353 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 354 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleSquirtleMid::
# 355 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 356 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 357 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 358 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 359 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 360 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 361 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 362 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleSquirtleRight::
# 363 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 364 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 365 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 366 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 367 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 368 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 369 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmander::
# 370 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 1, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmanderLeft
# 371 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 2, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmanderMid
# 372 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmanderRight
# 373 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 374 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 375 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmanderLeft::
# 376 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_ApproachForBattleCharmanderLeft
# 377 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 378 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleCharmander
# 379 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 380 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 381 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmanderMid::
# 382 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_ApproachForBattleCharmanderMid
# 383 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 384 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleCharmander
# 385 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 386 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 387 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleCharmanderRight::
# 388 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_ApproachForBattleCharmanderRight
# 389 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 390 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleCharmander
# 391 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 392 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 393 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattleCharmander::
# 394 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	trainerbattle_earlyrival TRAINER_RIVAL_OAKS_LAB_CHARMANDER, RIVAL_BATTLE_TUTORIAL, PalletTown_ProfessorOaksLab_Text_RivalDefeat, Text_RivalVictory
# 395 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_EndRivalBattle
# 396 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 397 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 398 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_ApproachForBattleCharmanderLeft::
# 399 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 400 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 401 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 402 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 403 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 404 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 405 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 406 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 407 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 408 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_ApproachForBattleCharmanderMid::
# 409 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 410 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 411 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 412 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 413 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 414 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 415 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 416 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 417 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_ApproachForBattleCharmanderRight::
# 418 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 419 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 420 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 421 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 422 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 423 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 424 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 425 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaur::
# 426 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 1, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaurLeft
# 427 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 2, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaurMid
# 428 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_TEMP_2, 3, PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaurRight
# 429 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 430 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 431 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaurLeft::
# 432 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleBulbasaurLeft
# 433 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 434 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleBulbasaur
# 435 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 436 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 437 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaurMid::
# 438 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleBulbasaurMid
# 439 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 440 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleBulbasaur
# 441 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 442 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 443 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalApproachForBattleBulbasaurRight::
# 444 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleBulbasaurRight
# 445 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 446 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalBattleBulbasaur
# 447 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 448 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 449 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalBattleBulbasaur::
# 450 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	trainerbattle_earlyrival TRAINER_RIVAL_OAKS_LAB_BULBASAUR, RIVAL_BATTLE_TUTORIAL, PalletTown_ProfessorOaksLab_Text_RivalDefeat, Text_RivalVictory
# 451 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_EndRivalBattle
# 452 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 453 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 454 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleBulbasaurLeft::
# 455 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 456 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 457 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 458 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 459 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 460 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 461 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 462 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleBulbasaurMid::
# 463 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 464 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 465 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 466 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 467 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 468 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 469 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalApproachForBattleBulbasaurRight::
# 470 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 471 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 472 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 473 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 474 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 475 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_EndRivalBattle::
# 476 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	special HealPlayerParty
# 477 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalGoToughenMyMon
# 478 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 479 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_RIVAL_EXIT, 0
# 480 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_TEMP_2, 1, PalletTown_ProfessorOaksLab_EventScript_RivalExitAfterBattleLeft
# 481 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_TEMP_2, 2, PalletTown_ProfessorOaksLab_EventScript_RivalExitAfterBattleMid
# 482 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_TEMP_2, 3, PalletTown_ProfessorOaksLab_EventScript_RivalExitAfterBattleRight
# 483 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_RIVAL
# 484 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playse SE_EXIT
# 485 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	fadedefaultbgm
# 486 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 4
# 487 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_BEAT_RIVAL_IN_OAKS_LAB
# 488 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
# 489 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 490 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 491 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalExitAfterBattleLeft::
# 492 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalExitAfterBattleLeft
# 493 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerWatchRivalExitAfterBattle
# 494 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_RIVAL
# 495 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 496 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 497 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalExitAfterBattleMid::
# 498 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalExitAfterBattleMid
# 499 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerWatchRivalExitAfterBattle
# 500 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_RIVAL
# 501 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 502 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 503 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalExitAfterBattleRight::
# 504 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalExitAfterBattleRight
# 505 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerWatchRivalExitAfterBattleRight
# 506 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_RIVAL
# 507 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 508 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 509 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalExitAfterBattleLeft::
# 510 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 511 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 512 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 513 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 514 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 515 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 516 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 517 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 518 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 519 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalExitAfterBattleRight::
# 520 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 521 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 522 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 523 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 524 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 525 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 526 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 527 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 528 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 529 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalExitAfterBattleMid::
# 530 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 531 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 532 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 533 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 534 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 535 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 536 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 537 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 538 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 539 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 540 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_PlayerWatchRivalExitAfterBattle::
# 541 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 542 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 543 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_right
# 544 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 545 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 546 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 547 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 548 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_PlayerWatchRivalExitAfterBattleRight::
# 549 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 550 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 551 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_left
# 552 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 553 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 554 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 555 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 556 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Rival::
# 557 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 558 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 559 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 3, PalletTown_ProfessorOaksLab_EventScript_RivalChoseStarter
# 560 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 2, PalletTown_ProfessorOaksLab_EventScript_RivalWaitingForStarter
# 561 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalGrampsIsntAround
# 562 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 563 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 564 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 565 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalWaitingForStarter::
# 566 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalGoChoosePlayer
# 567 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 568 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 569 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 570 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalChoseStarter::
# 571 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalMyMonLooksTougher
# 572 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 573 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 574 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 575 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ProfOak::
# 576 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 577 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 578 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set SHOWED_OAK_COMPLETE_DEX, PalletTown_ProfessorOaksLab_EventScript_OakJustShownCompleteDex
# 579 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 9, PalletTown_ProfessorOaksLab_EventScript_RatePokedex
# 580 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 8, PalletTown_ProfessorOaksLab_EventScript_MonsAroundWorldWait
# 581 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PalletTown_ProfessorOaksLab_EventScript_TryStartNationalDexScene
# 582 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_CERULEAN_CITY_RIVAL, 1, PalletTown_ProfessorOaksLab_EventScript_RatePokedex
# 583 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 6, PalletTown_ProfessorOaksLab_EventScript_RatePokedexOrTryGiveBalls
# 584 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_ge VAR_MAP_SCENE_VIRIDIAN_CITY_MART, 1, PalletTown_ProfessorOaksLab_EventScript_ReceiveDexScene
# 585 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 4, PalletTown_ProfessorOaksLab_EventScript_OakBattleMonForItToGrow
# 586 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 3, PalletTown_ProfessorOaksLab_EventScript_OakCanReachNextTownWithMon
# 587 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakWhichOneWillYouChoose
# 588 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 589 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 590 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 591 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakJustShownCompleteDex::
# 592 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PokedexRating_Text_ThankYouMadeDreamReality
# 593 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 594 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 595 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 596 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakCanReachNextTownWithMon::
# 597 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakCanReachNextTownWithMon
# 598 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 599 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 600 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 601 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBattleMonForItToGrow::
# 602 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakBattleMonForItToGrow
# 603 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 604 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 605 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 606 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ReceiveDexScene::
# 607 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakHaveSomethingForMe
# 608 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_NEUTRAL
# 609 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playfanfare MUS_OBTAIN_TMHM
# 610 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	message PalletTown_ProfessorOaksLab_Text_DeliveredOaksParcel
# 611 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmessage
# 612 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitfanfare
# 613 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call EventScript_RestorePrevTextColor
# 614 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeitem ITEM_OAKS_PARCEL
# 615 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakCustomBallIOrdered
# 616 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_ENCOUNTER_RIVAL, 0
# 617 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalGramps
# 618 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 619 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterNorth
# 620 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterSouth
# 621 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterEastWest
# 622 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterEastWest
# 623 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	fadedefaultbgm
# 624 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalWhatDidYouCallMeFor
# 625 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 626 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 30
# 627 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playse SE_PIN
# 628 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_ExclamationMark
# 629 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 630 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_Delay48
# 631 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 632 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalSouth
# 633 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalEast
# 634 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalWest
# 635 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalNorth
# 636 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakHaveRequestForYouTwo
# 637 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 638 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskNorth
# 639 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskSouth
# 640 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskEast
# 641 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskWest
# 642 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakPokedexOnDesk
# 643 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 644 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 40
# 645 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakTakeTheseWithYou
# 646 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 647 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterUp
# 648 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 649 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_POKEDEX_1
# 650 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 10
# 651 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_POKEDEX_2
# 652 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 25
# 653 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverNorth
# 654 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverSouth
# 655 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverEast
# 656 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverWest
# 657 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 10
# 658 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_NEUTRAL
# 659 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playfanfare MUS_OBTAIN_KEY_ITEM
# 660 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	message PalletTown_ProfessorOaksLab_Text_ReceivedPokedexFromOak
# 661 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmessage
# 662 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitfanfare
# 663 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call EventScript_RestorePrevTextColor
# 664 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_SYS_POKEDEX_GET
# 665 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	special SetUnlockedPokedexFlags
# 666 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_POKEMON_CENTER_TEALA, 1
# 667 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakCatchMonsForDataTakeThese
# 668 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	giveitem_msg PalletTown_ProfessorOaksLab_Text_ReceivedFivePokeBalls, ITEM_POKE_BALL, 5
# 669 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakExplainCatching
# 670 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	famechecker FAMECHECKER_OAK, 1
# 671 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakCompleteMonGuideWasMyDream
# 672 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalLeaveItToMeGramps
# 673 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerNorth
# 674 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerSouth
# 675 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerEastWest
# 676 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerEastWest
# 677 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalTellSisNotToGiveYouMap
# 678 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 679 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playbgm MUS_RIVAL_EXIT, 0
# 680 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_RivalExitNorth
# 681 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_RivalExit
# 682 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_RivalExit
# 683 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_RivalExit
# 684 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject LOCALID_RIVAL
# 685 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	fadedefaultbgm
# 686 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 6
# 687 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_VIRIDIAN_CITY_MART, 2
# 688 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_VIRIDIAN_CITY_OLD_MAN, 1
# 689 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_RIVALS_HOUSE, 1
# 690 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_ROUTE22, 1
# 691 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 692 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 693 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 694 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverNorth::
# 695 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesOver
# 696 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 697 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 698 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 699 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverSouth::
# 700 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesOverSouth
# 701 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 702 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 703 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 704 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverEast::
# 705 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesOver
# 706 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_PlayerFaceOakForDexEast
# 707 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 708 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 709 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 710 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakBringDexesOverWest::
# 711 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakBringDexesOver
# 712 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 713 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 714 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 715 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_PlayerFaceOakForDexEast::
# 716 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 717 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 718 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_right
# 719 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 720 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 721 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakBringDexesOver::
# 722 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 723 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 724 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 725 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 726 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakBringDexesOverSouth::
# 727 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 728 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 729 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 730 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 731 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskNorth::
# 732 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakWalkToDesk
# 733 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 734 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 735 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 736 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskSouth::
# 737 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakWalkToDeskSouth
# 738 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDesk
# 739 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDesk
# 740 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_PROF_OAK
# 741 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 742 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 743 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskEast::
# 744 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakWalkToDesk
# 745 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDeskEast
# 746 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement LOCALID_PROF_OAK
# 747 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 748 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 749 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakWalkToDeskWest::
# 750 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakWalkToDesk
# 751 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 752 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 753 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 754 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDeskEast::
# 755 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 756 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 757 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 758 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 759 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 760 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_WatchOakWalkToDesk::
# 761 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 762 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 763 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_left
# 764 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 765 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 766 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakWalkToDesk::
# 767 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 768 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 769 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 770 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 771 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 772 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 773 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakWalkToDeskSouth::
# 774 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 775 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 776 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 777 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 778 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_right
# 779 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 780 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 781 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RatePokedexOrTryGiveBalls::
# 782 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_0x8004, 0
# 783 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	specialvar VAR_RESULT, GetPokedexCount
# 784 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	copyvar VAR_0x8008, VAR_0x8005
# 785 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	copyvar VAR_0x8009, VAR_0x8006
# 786 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	buffernumberstring STR_VAR_1, VAR_0x8008
# 787 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	buffernumberstring STR_VAR_2, VAR_0x8009
# 788 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_0x8009, 1, PalletTown_ProfessorOaksLab_EventScript_CheckIfPlayerNeedsBalls  @ Player only has starter
# 789 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RatePokedex
# 790 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 791 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 792 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RatePokedex::
# 793 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call PokedexRating_EventScript_RateInPerson
# 794 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set FLAG_OAK_SAW_DEX_COMPLETION, PalletTown_ProfessorOaksLab_EventScript_DexCompleted
# 795 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 796 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 797 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 798 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexCompleted::
# 799 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 800 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 40
# 801 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	message PokedexRating_Text_Wroooaaarrr
# 802 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmessage
# 803 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_NORTH, PalletTown_ProfessorOaksLab_EventScript_OakExcitedNorth
# 804 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_SOUTH, PalletTown_ProfessorOaksLab_EventScript_OakExcitedSouth
# 805 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_EAST, PalletTown_ProfessorOaksLab_EventScript_OakExcitedEast
# 806 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_eq VAR_FACING, DIR_WEST, PalletTown_ProfessorOaksLab_EventScript_OakExcitedWest
# 807 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FacePlayer
# 808 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 809 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 810 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 70
# 811 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PokedexRating_Text_ThankYouMadeDreamReality
# 812 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag SHOWED_OAK_COMPLETE_DEX
# 813 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 814 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 815 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 816 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakExcitedNorth::
# 817 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakExcitedNorth
# 818 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 819 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 820 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 821 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakExcitedSouth::
# 822 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakExcitedSouth
# 823 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 824 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 825 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 826 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakExcitedEast::
# 827 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakExcitedEast
# 828 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 829 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 830 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 831 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_OakExcitedWest::
# 832 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, PalletTown_ProfessorOaksLab_Movement_OakExcitedWest
# 833 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 834 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 835 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 836 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakExcitedNorth::
# 837 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_down
# 838 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_down
# 839 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_down
# 840 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_down
# 841 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_down
# 842 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_down
# 843 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 844 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 845 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakExcitedSouth::
# 846 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_up
# 847 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_up
# 848 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_up
# 849 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_up
# 850 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_up
# 851 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_up
# 852 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 853 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 854 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakExcitedEast::
# 855 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_left
# 856 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_left
# 857 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_left
# 858 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_left
# 859 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_left
# 860 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_left
# 861 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 862 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 863 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_OakExcitedWest::
# 864 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_right
# 865 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_right
# 866 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_right
# 867 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_right
# 868 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_fast_right
# 869 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_right
# 870 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 871 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 872 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
@ Unused
# 873 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_Search:
# 874 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 875 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 876 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 877 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_right
# 878 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 879 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 880 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 881 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_left
# 882 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 883 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 884 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 885 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 886 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 887 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 888 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 889 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_left
# 890 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 891 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 892 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 893 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_right
# 894 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 895 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 896 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 897 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_left
# 898 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 899 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 900 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
@ Unused
# 901 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_VerticalPacing:
# 902 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 903 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 904 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 905 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_down
# 906 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 907 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 908 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 909 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 910 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 911 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 912 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_TryStartNationalDexScene::
# 913 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call PokedexRating_EventScript_RateInPerson
# 914 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 915 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_lt VAR_0x8009, 60, PalletTown_ProfessorOaksLab_EventScript_DontStartNationalDexScene
# 916 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_unset FLAG_WORLD_MAP_ONE_ISLAND, PalletTown_ProfessorOaksLab_EventScript_DontStartNationalDexScene
# 917 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 30
# 918 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakFavorToAskYouPlayer
# 919 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_NationalDexScene
# 920 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 921 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 922 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DontStartNationalDexScene::
# 923 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 924 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 925 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 926 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_CheckIfPlayerNeedsBalls::
# 927 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_questlog EventScript_ReleaseEnd
# 928 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	special QuestLog_CutRecording
# 929 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set FLAG_OAK_SKIP_22_RIVAL_CHECK, PalletTown_ProfessorOaksLab_EventScript_MonsAroundWorldWait
# 930 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set FLAG_GOT_POKEBALLS_FROM_OAK_AFTER_22_RIVAL, PalletTown_ProfessorOaksLab_EventScript_PlayerAlreadyGotBalls
# 931 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	checkitem ITEM_POKE_BALL
# 932 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, PalletTown_ProfessorOaksLab_EventScript_PlayerOutOfBalls
# 933 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_MonsAroundWorldWait
# 934 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 935 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 936 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_PlayerOutOfBalls::
# 937 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_ge VAR_MAP_SCENE_ROUTE22, 2, PalletTown_ProfessorOaksLab_EventScript_GivePlayerMoreBalls
# 938 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_MonsAroundWorldWait
# 939 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 940 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 941 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_GivePlayerMoreBalls::
# 942 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakAddedNothingToPokedex
# 943 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	giveitem_msg PalletTown_ProfessorOaksLab_Text_ReceivedFivePokeBalls, ITEM_POKE_BALL, 5
# 944 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_GOT_POKEBALLS_FROM_OAK_AFTER_22_RIVAL
# 945 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 946 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 947 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 948 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_MonsAroundWorldWait::
# 949 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakMonsAroundWorldWait
# 950 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 951 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 952 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 953 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_PlayerAlreadyGotBalls::
# 954 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakComeSeeMeSometime
# 955 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 956 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 957 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 958 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterNorth::
# 959 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_RIVAL, 5, 10
# 960 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_RIVAL
# 961 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterNorth
# 962 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalEnter
# 963 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 964 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 965 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 966 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterEastWest::
# 967 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_RIVAL, 6, 10
# 968 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_RIVAL
# 969 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 970 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterEastWest
# 971 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalEnter
# 972 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 973 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 974 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 975 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalEnterSouth::
# 976 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setobjectxyperm LOCALID_RIVAL, 6, 10
# 977 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	addobject LOCALID_RIVAL
# 978 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 979 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalEnter
# 980 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 981 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 982 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 983 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalSouth::
# 984 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FacePlayer
# 985 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 986 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 15
# 987 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 988 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 989 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 990 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 991 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalWest::
# 992 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FacePlayer
# 993 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 994 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 15
# 995 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 996 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 997 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 998 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 999 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1000 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalEast::
# 1001 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FacePlayer
# 1002 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1003 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay 15
# 1004 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterRight
# 1005 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_WalkInPlaceFasterDown
# 1006 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1007 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1008 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1009 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerNorth::
# 1010 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, Common_Movement_FacePlayer
# 1011 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterLeft
# 1012 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1013 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1014 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1015 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerSouth::
# 1016 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, Common_Movement_WalkInPlaceFasterUp
# 1017 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 1018 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1019 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1020 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1021 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneRivalFacePlayerEastWest::
# 1022 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, Common_Movement_FacePlayer
# 1023 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterDown
# 1024 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1025 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1026 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1027 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalExitNorth::
# 1028 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterEastWest
# 1029 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalExit
# 1030 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1031 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1032 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1033 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalExit::
# 1034 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalExit
# 1035 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1036 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1037 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1038 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DexSceneOakFacePlayerAndRivalNorth::
# 1039 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, Common_Movement_WalkInPlaceFasterUp
# 1040 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1041 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1042 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1043 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterEastWest::
# 1044 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_4
# 1045 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 1046 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1047 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1048 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_WatchRivalEnterNorth::
# 1049 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_down
# 1050 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 1051 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 1052 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 1053 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 1054 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_16
# 1055 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	delay_8
# 1056 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_left
# 1057 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1058 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1059 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalEnter::
# 1060 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1061 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1062 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1063 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1064 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1065 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1066 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1067 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1068 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalExit::
# 1069 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1070 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1071 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1072 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1073 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1074 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1075 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1076 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1077 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_BulbasaurBall::
# 1078 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 1079 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 1080 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar PLAYER_STARTER_NUM, 0
# 1081 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar PLAYER_STARTER_SPECIES, SPECIES_LITTEN
# 1082 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar RIVAL_STARTER_SPECIES, SPECIES_CHARMANDER
# 1083 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar RIVAL_STARTER_ID, LOCALID_CHARMANDER_BALL
# 1084 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_ge VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 3, PalletTown_ProfessorOaksLab_EventScript_LastPokeBall
# 1085 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 2, PalletTown_ProfessorOaksLab_EventScript_ConfirmStarterChoice
# 1086 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_ThoseArePokeBalls
# 1087 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1088 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1089 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1090 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ConfirmStarterChoice::
# 1091 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_PROF_OAK, Common_Movement_FaceRight
# 1092 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1093 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	showmonpic PLAYER_STARTER_SPECIES, 10, 3
# 1094 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_MALE
# 1095 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq PLAYER_STARTER_NUM, 0, PalletTown_ProfessorOaksLab_EventScript_ConfirmBulbasaur
# 1096 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq PLAYER_STARTER_NUM, 1, PalletTown_ProfessorOaksLab_EventScript_ConfirmSquirtle
# 1097 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq PLAYER_STARTER_NUM, 2, PalletTown_ProfessorOaksLab_EventScript_ConfirmCharmander
# 1098 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1099 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1100 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ConfirmBulbasaur::
# 1101 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakChoosingBulbasaur, MSGBOX_YESNO
# 1102 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PalletTown_ProfessorOaksLab_EventScript_ChoseStarter
# 1103 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PalletTown_ProfessorOaksLab_EventScript_DeclinedStarter
# 1104 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1105 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1106 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ConfirmSquirtle::
# 1107 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakChoosingSquirtle, MSGBOX_YESNO
# 1108 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PalletTown_ProfessorOaksLab_EventScript_ChoseStarter
# 1109 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PalletTown_ProfessorOaksLab_EventScript_DeclinedStarter
# 1110 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1111 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1112 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ConfirmCharmander::
# 1113 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakChoosingCharmander, MSGBOX_YESNO
# 1114 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, PalletTown_ProfessorOaksLab_EventScript_ChoseStarter
# 1115 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PalletTown_ProfessorOaksLab_EventScript_DeclinedStarter
# 1116 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1117 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1118 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_DeclinedStarter::
# 1119 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	hidemonpic
# 1120 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1121 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1122 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1123 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ChoseStarter::
# 1124 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	hidemonpic
# 1125 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject VAR_LAST_TALKED
# 1126 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakThisMonIsEnergetic
# 1127 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call EventScript_RestorePrevTextColor
# 1128 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_SYS_POKEMON_GET
# 1129 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setflag FLAG_PALLET_LADY_NOT_BLOCKING_SIGN
# 1130 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	givemon PLAYER_STARTER_SPECIES, 5
# 1131 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	copyvar VAR_STARTER_MON, PLAYER_STARTER_NUM
# 1132 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	bufferspeciesname STR_VAR_1, PLAYER_STARTER_SPECIES
# 1133 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	message PalletTown_ProfessorOaksLab_Text_ReceivedMonFromOak
# 1134 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmessage
# 1135 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playfanfare MUS_OBTAIN_KEY_ITEM
# 1136 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitfanfare
# 1137 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox Text_GiveNicknameToThisMon, MSGBOX_YESNO
# 1138 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, YES, EventScript_GiveNicknameToStarter
# 1139 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_RESULT, NO, PalletTown_ProfessorOaksLab_EventScript_RivalPicksStarter
# 1140 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1141 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1142 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
EventScript_GiveNicknameToStarter::
# 1143 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_0x8004, 0
# 1144 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call EventScript_ChangePokemonNickname
# 1145 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalPicksStarter
# 1146 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1147 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1148 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalPicksStarter::
# 1149 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	closemessage
# 1150 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq PLAYER_STARTER_NUM, 0, PalletTown_ProfessorOaksLab_EventScript_RivalWalksToCharmander
# 1151 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq PLAYER_STARTER_NUM, 1, PalletTown_ProfessorOaksLab_EventScript_RivalWalksToBulbasaur
# 1152 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq PLAYER_STARTER_NUM, 2, PalletTown_ProfessorOaksLab_EventScript_RivalWalksToSquirtle
# 1153 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1154 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1155 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalWalksToCharmander::
# 1156 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalWalksToCharmander
# 1157 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1158 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalTakesStarter
# 1159 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1160 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1161 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalWalksToSquirtle::
# 1162 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalWalksToSquirtle
# 1163 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1164 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalTakesStarter
# 1165 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1166 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1167 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalWalksToBulbasaur::
# 1168 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement LOCALID_RIVAL, PalletTown_ProfessorOaksLab_Movement_RivalWalksToBulbasaur
# 1169 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1170 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto PalletTown_ProfessorOaksLab_EventScript_RivalTakesStarter
# 1171 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1172 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1173 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RivalTakesStarter::
# 1174 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_MALE
# 1175 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_RivalIllTakeThisOneThen
# 1176 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	removeobject RIVAL_STARTER_ID
# 1177 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	textcolor NPC_TEXT_COLOR_NEUTRAL
# 1178 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	bufferspeciesname STR_VAR_1, RIVAL_STARTER_SPECIES
# 1179 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	message PalletTown_ProfessorOaksLab_Text_RivalReceivedMonFromOak
# 1180 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmessage
# 1181 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	playfanfare MUS_OBTAIN_KEY_ITEM
# 1182 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitfanfare
# 1183 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 3
# 1184 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	call_if_set FLAG_OPENED_START_MENU, PalletTown_ProfessorOaksLab_EventScript_ReadyEndSignLadyScene
# 1185 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1186 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1187 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1188 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_ReadyEndSignLadyScene::
# 1189 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar VAR_MAP_SCENE_PALLET_TOWN_SIGN_LADY, 1
# 1190 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	return
# 1191 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1192 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalWalksToCharmander::
# 1193 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1194 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1195 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1196 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1197 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1198 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1199 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1200 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_up
# 1201 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1202 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1203 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalWalksToSquirtle::
# 1204 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1205 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1206 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1207 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1208 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1209 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 1210 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1211 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1212 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_Movement_RivalWalksToBulbasaur::
# 1213 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
# 1214 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1215 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1216 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_right
# 1217 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_in_place_faster_up
# 1218 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	step_end
# 1219 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1220 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_SquirtleBall::
# 1221 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 1222 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 1223 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar PLAYER_STARTER_NUM, 1
# 1224 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar PLAYER_STARTER_SPECIES, SPECIES_SQUIRTLE
# 1225 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar RIVAL_STARTER_SPECIES, SPECIES_BULBASAUR
# 1226 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar RIVAL_STARTER_ID, LOCALID_BULBASAUR_BALL
# 1227 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_ge VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 3, PalletTown_ProfessorOaksLab_EventScript_LastPokeBall
# 1228 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 2, PalletTown_ProfessorOaksLab_EventScript_ConfirmStarterChoice
# 1229 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_ThoseArePokeBalls
# 1230 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1231 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1232 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1233 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_CharmanderBall::
# 1234 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 1235 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 1236 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar PLAYER_STARTER_NUM, 2
# 1237 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar PLAYER_STARTER_SPECIES, SPECIES_CHARMANDER
# 1238 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar RIVAL_STARTER_SPECIES, SPECIES_SQUIRTLE
# 1239 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	setvar RIVAL_STARTER_ID, LOCALID_SQUIRTLE_BALL
# 1240 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_ge VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 3, PalletTown_ProfessorOaksLab_EventScript_LastPokeBall
# 1241 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_eq VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 2, PalletTown_ProfessorOaksLab_EventScript_ConfirmStarterChoice
# 1242 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_ThoseArePokeBalls
# 1243 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1244 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1245 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1246 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_LastPokeBall::
# 1247 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OaksLastMon
# 1248 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1249 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1250 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1251 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Aide1::
# 1252 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 1253 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 1254 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PalletTown_ProfessorOaksLab_EventScript_Aide1GameClear
# 1255 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_StudyAsOaksAide
# 1256 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1257 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1258 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1259 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Aide1GameClear::
# 1260 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	famechecker FAMECHECKER_OAK, 5
# 1261 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakIsGoingToHaveRadioShow
# 1262 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1263 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1264 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1265 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Aide2::
# 1266 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 1267 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 1268 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_set FLAG_SYS_GAME_CLEAR, PalletTown_ProfessorOaksLab_EventScript_Aide2GameClear
# 1269 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_StudyAsOaksAide
# 1270 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1271 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1272 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1273 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Aide2GameClear::
# 1274 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	famechecker FAMECHECKER_DAISY, 0
# 1275 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_DaisyWillGroomMons
# 1276 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1277 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1278 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1279 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Aide3::
# 1280 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lock
# 1281 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	faceplayer
# 1282 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	famechecker FAMECHECKER_OAK, 2
# 1283 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_OakIsAuthorityOnMons
# 1284 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	release
# 1285 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1286 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1287 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Pokedex::
# 1288 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_BlankEncyclopedia, MSGBOX_NPC
# 1289 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1290 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1291 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_Computer::
# 1292 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_EmailMessage, MSGBOX_SIGN
# 1293 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1294 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1295 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_LeftSign::
# 1296 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_PressStartToOpenMenu, MSGBOX_SIGN
# 1297 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1298 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1299 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RightSign::
# 1300 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 1301 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	goto_if_ge VAR_MAP_SCENE_PALLET_TOWN_PROFESSOR_OAKS_LAB, 6, PalletTown_ProfessorOaksLab_EventScript_RightSignAlt
# 1302 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_SaveOptionInMenu
# 1303 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
# 1304 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end
# 1305 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"

# 1306 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
PalletTown_ProfessorOaksLab_EventScript_RightSignAlt::
# 1307 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_ProfessorOaksLab_Text_AllMonTypesHaveStrongAndWeakPoints
# 1308 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
# 1309 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	end

PalletTown_NoMons::
# 1313 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	lockall
# 1314 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	msgbox PalletTown_NoMons_Text_0
# 1315 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	applymovement OBJ_EVENT_ID_PLAYER, StopPlayer
# 1316 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	waitmovement 0
# 1317 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	releaseall
	return


# 1319 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
StopPlayer:
# 1320 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	walk_down
	step_end

PalletTown_NoMons_Text_0:
# 1314 "data/maps/PalletTown_ProfessorOaksLab/scripts.pory"
	.string "Wait... i should not go out yet\n I dont have a mon!$"
