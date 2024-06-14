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
Route1_EventScript_Boy::
# 31 "data/maps/Route1/scripts.pory"
	msgbox Route1_Text_CanJumpFromLedges, MSGBOX_NPC
# 32 "data/maps/Route1/scripts.pory"
	end
# 33 "data/maps/Route1/scripts.pory"

# 34 "data/maps/Route1/scripts.pory"
Route1_EventScript_RouteSign::
# 35 "data/maps/Route1/scripts.pory"
	msgbox Route1_Text_RouteSign, MSGBOX_SIGN
# 36 "data/maps/Route1/scripts.pory"
	end

girl_trainer_btl::
# 40 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl
	return


girl_not_so_fast::
# 50 "data/maps/Route1/scripts.pory"
	lockall
# 51 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_not_so_fast_mvnt
# 52 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 53 "data/maps/Route1/scripts.pory"
	msgbox girl_not_so_fast_Text_0
# 54 "data/maps/Route1/scripts.pory"
	trainerbattle_single ROUTE1_EMILY, intro_txt_girl_trainer_btl, lose_text_girl_trainer_btl
# 55 "data/maps/Route1/scripts.pory"
	msgbox girl_not_so_fast_Text_1
# 56 "data/maps/Route1/scripts.pory"
	applymovement 3, girl_leave_alone
# 57 "data/maps/Route1/scripts.pory"
	waitmovement 3
# 58 "data/maps/Route1/scripts.pory"
	releaseall
	return


# 60 "data/maps/Route1/scripts.pory"
girl_not_so_fast_mvnt:
# 61 "data/maps/Route1/scripts.pory"
	walk_left
# 61 "data/maps/Route1/scripts.pory"
	walk_left
# 61 "data/maps/Route1/scripts.pory"
	walk_left
# 61 "data/maps/Route1/scripts.pory"
	walk_left
# 61 "data/maps/Route1/scripts.pory"
	walk_left
# 62 "data/maps/Route1/scripts.pory"
	face_up
# 63 "data/maps/Route1/scripts.pory"
	walk_up
# 63 "data/maps/Route1/scripts.pory"
	walk_up
# 63 "data/maps/Route1/scripts.pory"
	walk_up
	step_end

# 65 "data/maps/Route1/scripts.pory"
girl_leave_alone:
# 66 "data/maps/Route1/scripts.pory"
	face_left
# 67 "data/maps/Route1/scripts.pory"
	walk_left
# 68 "data/maps/Route1/scripts.pory"
	face_down
	step_end

girl_not_so_fast_Text_0:
# 53 "data/maps/Route1/scripts.pory"
	.string "Hey not so fast lets do a rematch >:)$"

girl_not_so_fast_Text_1:
# 55 "data/maps/Route1/scripts.pory"
	.string "fr again come on i thought i had you!$"

intro_txt_girl_trainer_btl::
# 43 "data/maps/Route1/scripts.pory"
	.string "You're toast if you didnt heal!$"

lose_text_girl_trainer_btl::
# 46 "data/maps/Route1/scripts.pory"
	.string "Oh i didnt expect that!$"
