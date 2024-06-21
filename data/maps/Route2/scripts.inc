# 1 "data/maps/Route2/scripts.pory"

# 2 "data/maps/Route2/scripts.pory"
Route2_MapScripts::
# 3 "data/maps/Route2/scripts.pory"
	.byte 0

geo_btl::
# 6 "data/maps/Route2/scripts.pory"
	applymovement 7, exc
# 7 "data/maps/Route2/scripts.pory"
	playbgm SE_PIN, FALSE
# 8 "data/maps/Route2/scripts.pory"
	call btl
	return


# 10 "data/maps/Route2/scripts.pory"
exc:
# 11 "data/maps/Route2/scripts.pory"
	emote_exclamation_mark
	step_end

btl::
# 14 "data/maps/Route2/scripts.pory"
	trainerbattle_single geo_btl_rt_2, btl_Text_0, btl_Text_1
# 15 "data/maps/Route2/scripts.pory"
	msgbox btl_Text_2, MSGBOX_AUTOCLOSE
	return


DiglettsCaveSignRt2::
# 18 "data/maps/Route2/scripts.pory"
	lockall
# 19 "data/maps/Route2/scripts.pory"
	msgbox DiglettsCaveSignRt2_Text_0, MSGBOX_AUTOCLOSE
# 20 "data/maps/Route2/scripts.pory"
	releaseall
	return


btl_Text_0:
# 14 "data/maps/Route2/scripts.pory"
	.string "Hi hows it going sweety$"

btl_Text_1:
# 14 "data/maps/Route2/scripts.pory"
	.string "You found me out >:($"

btl_Text_2:
# 15 "data/maps/Route2/scripts.pory"
	.string "Goodluck you mid trainer$"

DiglettsCaveSignRt2_Text_0:
# 19 "data/maps/Route2/scripts.pory"
	.string "Digletts Shortcut$"
