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
	msgbox kid_candy_txt, MSGBOX_YESNO
# 39 "data/maps/Route1/scripts.pory"
	compare VAR_RESULT, YES
	goto_if_eq Route1_EventScript_Boy_1
# 43 "data/maps/Route1/scripts.pory"
	compare VAR_RESULT, NO
	goto_if_eq Route1_EventScript_Boy_2
	return

Route1_EventScript_Boy_1:
# 40 "data/maps/Route1/scripts.pory"
	giveitem ITEM_RARE_CANDY, 20
# 41 "data/maps/Route1/scripts.pory"
	msgbox Route1_EventScript_Boy_Text_0
	return

Route1_EventScript_Boy_2:
# 44 "data/maps/Route1/scripts.pory"
	msgbox Route1_EventScript_Boy_Text_1
	return


girl_trainer_btl::
# 55 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl
# 56 "data/maps/Route1/scripts.pory"
	msgbox girl_trainer_btl_Text_0, MSGBOX_AUTOCLOSE
	return


girl_not_so_fast::
# 59 "data/maps/Route1/scripts.pory"
	goto_if_unset FLAG_0x501, girl_not_so_fast_1
# 71 "data/maps/Route1/scripts.pory"
	goto_if_set FLAG_0x501, girl_not_so_fast_2
	return

girl_not_so_fast_1:
# 60 "data/maps/Route1/scripts.pory"
	setflag FLAG_0x501
# 61 "data/maps/Route1/scripts.pory"
	lockall
# 62 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_exc
# 63 "data/maps/Route1/scripts.pory"
	playse SE_PIN
# 64 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 65 "data/maps/Route1/scripts.pory"
	delay 48
# 66 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_mvnt
# 67 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 68 "data/maps/Route1/scripts.pory"
	msgbox girl_not_so_fast_Text_0
# 69 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY_REMATCH, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl, run_mvnt_on_girl
	return

girl_not_so_fast_2:
# 72 "data/maps/Route1/scripts.pory"
	releaseall
	return


# 75 "data/maps/Route1/scripts.pory"
girl_not_so_fast_mvnt:
# 76 "data/maps/Route1/scripts.pory"
	walk_left
# 76 "data/maps/Route1/scripts.pory"
	walk_left
# 76 "data/maps/Route1/scripts.pory"
	walk_left
# 76 "data/maps/Route1/scripts.pory"
	walk_left
# 76 "data/maps/Route1/scripts.pory"
	walk_left
# 77 "data/maps/Route1/scripts.pory"
	face_up
# 78 "data/maps/Route1/scripts.pory"
	walk_up
# 78 "data/maps/Route1/scripts.pory"
	walk_up
# 78 "data/maps/Route1/scripts.pory"
	walk_up
	step_end

# 80 "data/maps/Route1/scripts.pory"
girl_not_so_fast_exc:
# 81 "data/maps/Route1/scripts.pory"
	emote_exclamation_mark
	step_end

# 84 "data/maps/Route1/scripts.pory"
girl_leave_alone_mvnt:
# 85 "data/maps/Route1/scripts.pory"
	face_left
# 86 "data/maps/Route1/scripts.pory"
	walk_left
# 87 "data/maps/Route1/scripts.pory"
	face_down
	step_end

run_mvnt_on_girl::
# 90 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_leave_alone_mvnt
# 91 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 92 "data/maps/Route1/scripts.pory"
	releaseall
	return


Route1_EventScript_Boy_Text_0:
# 41 "data/maps/Route1/scripts.pory"
	.string "Use them wisely.$"

Route1_EventScript_Boy_Text_1:
# 44 "data/maps/Route1/scripts.pory"
	.string "Ok then.$"

girl_trainer_btl_Text_0:
# 56 "data/maps/Route1/scripts.pory"
	.string "You beat me fair and square.$"

girl_not_so_fast_Text_0:
# 68 "data/maps/Route1/scripts.pory"
	.string "Hey lets do a rematch\n>:)$"

intro_txt_girl_trainer_btl::
# 48 "data/maps/Route1/scripts.pory"
	.string "You're toast if you didnt heal!$"

lose_text_girl_trainer_btl::
# 51 "data/maps/Route1/scripts.pory"
	.string "Oh i didnt expect that!$"
