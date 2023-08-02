/// @desc Draw score

if(room != Menu) && (instance_exists(objPlayer)) && (global.kills > 0){
	kill_text_scale = max(kill_text_scale * 0.95, 1)
	DrawSetText(c_black, fMenu, fa_right, fa_top)
	draw_text_transformed(RES_W - 8, 12, string(global.kills) + " Kills", kill_text_scale,kill_text_scale, 0)
	draw_set_color(c_white)
	draw_text_transformed(RES_W - 10, 10, string(global.kills) + " Kills", kill_text_scale,kill_text_scale, 0)
}