# 1 "data/maps/Route1/scripts.pory"

# 2 "data/maps/Route1/scripts.pory"
Route1_MapScripts::
# 3 "data/maps/Route1/scripts.pory"
	.byte 0
# 4 "data/maps/Route1/scripts.pory"

# 5 "data/maps/Route1/scripts.pory"
Route1_EventScript_MartClerk::
# 6 "data/maps/Route1/scripts.pory"
	lock
# 7 "data/maps/Route1/scripts.pory"
	faceplayer
# 8 "data/maps/Route1/scripts.pory"
	goto_if_set FLAG_GOT_POTION_ON_ROUTE_1, Route1_EventScript_AlreadyGotPotion
# 9 "data/maps/Route1/scripts.pory"
	msgbox Route1_Text_WorkAtPokeMartTakeSample
# 10 "data/maps/Route1/scripts.pory"
	textcolor NPC_TEXT_COLOR_NEUTRAL
# 11 "data/maps/Route1/scripts.pory"
	checkitemspace ITEM_POTION
# 12 "data/maps/Route1/scripts.pory"
	goto_if_eq VAR_RESULT, FALSE, EventScript_BagIsFull
# 13 "data/maps/Route1/scripts.pory"
	bufferitemname STR_VAR_2, ITEM_POTION
# 14 "data/maps/Route1/scripts.pory"
	playfanfare MUS_LEVEL_UP
# 15 "data/maps/Route1/scripts.pory"
	message Text_ObtainedTheX
# 16 "data/maps/Route1/scripts.pory"
	waitmessage
# 17 "data/maps/Route1/scripts.pory"
	waitfanfare
# 18 "data/maps/Route1/scripts.pory"
	additem ITEM_POTION
# 19 "data/maps/Route1/scripts.pory"
	msgbox Route1_Text_PutPotionAway
# 20 "data/maps/Route1/scripts.pory"
	call EventScript_RestorePrevTextColor
# 21 "data/maps/Route1/scripts.pory"
	setflag FLAG_GOT_POTION_ON_ROUTE_1
# 22 "data/maps/Route1/scripts.pory"
	release
# 23 "data/maps/Route1/scripts.pory"
	end
# 24 "data/maps/Route1/scripts.pory"

# 25 "data/maps/Route1/scripts.pory"
Route1_EventScript_AlreadyGotPotion::
# 26 "data/maps/Route1/scripts.pory"
	msgbox Route1_Text_ComeSeeUsIfYouNeedPokeBalls
# 27 "data/maps/Route1/scripts.pory"
	release
# 28 "data/maps/Route1/scripts.pory"
	end
# 29 "data/maps/Route1/scripts.pory"

# 30 "data/maps/Route1/scripts.pory"

# 31 "data/maps/Route1/scripts.pory"
Route1_EventScript_RouteSign::
# 32 "data/maps/Route1/scripts.pory"
	msgbox Route1_Text_RouteSign, MSGBOX_SIGN
# 33 "data/maps/Route1/scripts.pory"
	end

Route1_EventScript_Boy::
# 38 "data/maps/Route1/scripts.pory"
	goto_if_set ! has_taken_kid_candy, Route1_EventScript_Boy_1
# 50 "data/maps/Route1/scripts.pory"
	msgbox Route1_EventScript_Boy_Text_2, MSGBOX_AUTOCLOSE
	return

Route1_EventScript_Boy_1:
# 39 "data/maps/Route1/scripts.pory"
	msgbox kid_candy_txt, MSGBOX_YESNO
# 40 "data/maps/Route1/scripts.pory"
	compare VAR_RESULT, YES
	goto_if_eq Route1_EventScript_Boy_4
# 45 "data/maps/Route1/scripts.pory"
	compare VAR_RESULT, NO
	goto_if_eq Route1_EventScript_Boy_5
	return

Route1_EventScript_Boy_4:
# 41 "data/maps/Route1/scripts.pory"
	giveitem ITEM_RARE_CANDY, 20
# 42 "data/maps/Route1/scripts.pory"
	setflag has_taken_kid_candy
# 43 "data/maps/Route1/scripts.pory"
	msgbox Route1_EventScript_Boy_Text_0, MSGBOX_AUTOCLOSE
	return

Route1_EventScript_Boy_5:
# 46 "data/maps/Route1/scripts.pory"
	msgbox Route1_EventScript_Boy_Text_1, MSGBOX_AUTOCLOSE
	return


girl_trainer_btl::
# 61 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl
# 62 "data/maps/Route1/scripts.pory"
	msgbox girl_trainer_btl_Text_0, MSGBOX_AUTOCLOSE
	return


girl_not_so_fast::
# 65 "data/maps/Route1/scripts.pory"
	goto_if_unset FLAG_0x501, girl_not_so_fast_1
# 77 "data/maps/Route1/scripts.pory"
	goto_if_set FLAG_0x501, girl_not_so_fast_2
	return

girl_not_so_fast_1:
# 66 "data/maps/Route1/scripts.pory"
	setflag FLAG_0x501
# 67 "data/maps/Route1/scripts.pory"
	lockall
# 68 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_exc
# 69 "data/maps/Route1/scripts.pory"
	playse SE_PIN
# 70 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 71 "data/maps/Route1/scripts.pory"
	delay 48
# 72 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_mvnt
# 73 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 74 "data/maps/Route1/scripts.pory"
	msgbox girl_not_so_fast_Text_0
# 75 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY_REMATCH, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl, run_mvnt_on_girl
	return

girl_not_so_fast_2:
# 78 "data/maps/Route1/scripts.pory"
	releaseall
	return


# 81 "data/maps/Route1/scripts.pory"
girl_not_so_fast_mvnt:
# 82 "data/maps/Route1/scripts.pory"
	walk_left
# 82 "data/maps/Route1/scripts.pory"
	walk_left
# 82 "data/maps/Route1/scripts.pory"
	walk_left
# 82 "data/maps/Route1/scripts.pory"
	walk_left
# 82 "data/maps/Route1/scripts.pory"
	walk_left
# 83 "data/maps/Route1/scripts.pory"
	face_up
# 84 "data/maps/Route1/scripts.pory"
	walk_up
# 84 "data/maps/Route1/scripts.pory"
	walk_up
# 84 "data/maps/Route1/scripts.pory"
	walk_up
	step_end

# 86 "data/maps/Route1/scripts.pory"
girl_not_so_fast_exc:
# 87 "data/maps/Route1/scripts.pory"
	emote_exclamation_mark
	step_end

# 90 "data/maps/Route1/scripts.pory"
girl_leave_alone_mvnt:
# 91 "data/maps/Route1/scripts.pory"
	face_left
# 92 "data/maps/Route1/scripts.pory"
	walk_left
# 93 "data/maps/Route1/scripts.pory"
	face_down
	step_end

run_mvnt_on_girl::
# 96 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_leave_alone_mvnt
# 97 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 98 "data/maps/Route1/scripts.pory"
	releaseall
	return


Rival_battle_rt_1::
# 107 "data/maps/Route1/scripts.pory"
	playse SE_PIN
# 108 "data/maps/Route1/scripts.pory"
	setvar fought_rvl_rt_one, 1
# 109 "data/maps/Route1/scripts.pory"
	setvar VAR_MAP_SCENE_ROUTE22, 2
# 110 "data/maps/Route1/scripts.pory"
	call_if_eq VAR_STARTER_MON, 0, rival_btl_sobble
# 111 "data/maps/Route1/scripts.pory"
	call_if_eq VAR_STARTER_MON, 1, rival_btl_litten
# 112 "data/maps/Route1/scripts.pory"
	call_if_eq VAR_STARTER_MON, 2, rival_btl_sprigatito
	return


rival_btl_sobble::
# 115 "data/maps/Route1/scripts.pory"
	trainerbattle_single rt_1_rvl_0, rvl_start_btl, rvl_end_btl
# 116 "data/maps/Route1/scripts.pory"
	msgbox rival_btl_sobble_Text_0, MSGBOX_AUTOCLOSE
	return


rival_btl_litten::
# 119 "data/maps/Route1/scripts.pory"
	trainerbattle_single rt_1_rvl_1, rvl_start_btl, rvl_end_btl
# 120 "data/maps/Route1/scripts.pory"
	msgbox rival_btl_sobble_Text_0, MSGBOX_AUTOCLOSE
	return


rival_btl_sprigatito::
# 123 "data/maps/Route1/scripts.pory"
	trainerbattle_single rt_1_rvl_2, rvl_start_btl, rvl_end_btl
# 124 "data/maps/Route1/scripts.pory"
	msgbox rival_btl_sobble_Text_0, MSGBOX_AUTOCLOSE
	return


rvl_one::
# 127 "data/maps/Route1/scripts.pory"
	applymovement 4, girl_not_so_fast_exc
# 128 "data/maps/Route1/scripts.pory"
	call Rival_battle_rt_1
	return


rvl_two::
# 131 "data/maps/Route1/scripts.pory"
	applymovement 4, girl_not_so_fast_exc
# 132 "data/maps/Route1/scripts.pory"
	applymovement 4, left_one
# 133 "data/maps/Route1/scripts.pory"
	call Rival_battle_rt_1
	return


rvl_three::
# 136 "data/maps/Route1/scripts.pory"
	applymovement 4, girl_not_so_fast_exc
# 137 "data/maps/Route1/scripts.pory"
	applymovement 4, left_two
# 138 "data/maps/Route1/scripts.pory"
	call Rival_battle_rt_1
	return


# 140 "data/maps/Route1/scripts.pory"
left_one:
# 141 "data/maps/Route1/scripts.pory"
	walk_left
	step_end

# 143 "data/maps/Route1/scripts.pory"
left_two:
# 144 "data/maps/Route1/scripts.pory"
	walk_left
# 144 "data/maps/Route1/scripts.pory"
	walk_left
	step_end

girl_not_so_fast_two::
# 147 "data/maps/Route1/scripts.pory"
	goto_if_unset girl_rt_one_battle_two, girl_not_so_fast_two_1
# 159 "data/maps/Route1/scripts.pory"
	goto_if_set girl_rt_one_battle_two, girl_not_so_fast_two_2
	return

girl_not_so_fast_two_1:
# 148 "data/maps/Route1/scripts.pory"
	setflag girl_rt_one_battle_two
# 149 "data/maps/Route1/scripts.pory"
	lockall
# 150 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_exc
# 151 "data/maps/Route1/scripts.pory"
	playse SE_PIN
# 152 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 153 "data/maps/Route1/scripts.pory"
	delay 48
# 154 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_mvnt_two
# 155 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 156 "data/maps/Route1/scripts.pory"
	msgbox girl_not_so_fast_two_Text_0, MSGBOX_AUTOCLOSE
# 157 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY_REMATCH_TWO, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl, run_mvnt_on_girl
	return

girl_not_so_fast_two_2:
# 160 "data/maps/Route1/scripts.pory"
	releaseall
	return


# 163 "data/maps/Route1/scripts.pory"
girl_not_so_fast_mvnt_two:
# 164 "data/maps/Route1/scripts.pory"
	face_up
# 165 "data/maps/Route1/scripts.pory"
	walk_up
# 166 "data/maps/Route1/scripts.pory"
	face_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 167 "data/maps/Route1/scripts.pory"
	walk_right
# 168 "data/maps/Route1/scripts.pory"
	face_up
# 169 "data/maps/Route1/scripts.pory"
	walk_up
# 169 "data/maps/Route1/scripts.pory"
	walk_up
# 169 "data/maps/Route1/scripts.pory"
	walk_up
	step_end

Route1_EventScript_Boy_Text_0:
# 43 "data/maps/Route1/scripts.pory"
	.string "Use them wisely.$"

Route1_EventScript_Boy_Text_1:
# 46 "data/maps/Route1/scripts.pory"
	.string "Ok then.$"

Route1_EventScript_Boy_Text_2:
# 50 "data/maps/Route1/scripts.pory"
	.string "Make sure to use those well.$"

girl_trainer_btl_Text_0:
# 62 "data/maps/Route1/scripts.pory"
	.string "You beat me fair and square.$"

girl_not_so_fast_Text_0:
# 74 "data/maps/Route1/scripts.pory"
	.string "Hey lets do a rematch\n>:)$"

rival_btl_sobble_Text_0:
# 116 "data/maps/Route1/scripts.pory"
	.string "Good Game$"

girl_not_so_fast_two_Text_0:
# 156 "data/maps/Route1/scripts.pory"
	.string "Hey lets do another rematch\n>:)$"

intro_txt_girl_trainer_btl::
# 54 "data/maps/Route1/scripts.pory"
	.string "You're toast if you didnt heal!$"

lose_text_girl_trainer_btl::
# 57 "data/maps/Route1/scripts.pory"
	.string "Oh i didnt expect that!$"

rvl_start_btl::
# 100 "data/maps/Route1/scripts.pory"
	.string "Fight me loser$"

rvl_end_btl::
# 103 "data/maps/Route1/scripts.pory"
	.string "HOW did YOU beat ME!$"
