/// @desc controll menu itens

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed

//keyboard controls
if(menu_control){
	if(keyboard_check_pressed(vk_up) || keyboard_check(ord("W"))){
		menu_cursor++
		if(menu_cursor >= menu_itens) menu_cursor = 0
	}
	if(keyboard_check_pressed(vk_down) || keyboard_check(ord("S"))){
		menu_cursor--
		if(menu_cursor < 0) menu_cursor = menu_itens - 1
	}
	if(keyboard_check_pressed(vk_enter)){
		ScreenShake(4,30)
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor
		menu_control = false
		audio_play_sound(snDeath, 10, false)
	}
	var mouse_y_gui = device_mouse_y_to_gui(0)
	var mouse_x_gui = device_mouse_x_to_gui(0)
	if(mouse_y_gui < menu_y) && (mouse_y_gui > menu_top) && (mouse_x_gui < menu_x + 1) && (mouse_x_gui > menu_x - (string_width(menu[2]) + 1)) {
		menu_cursor = (menu_y - mouse_y_gui) div(menu_itemHeigth * 1.5)
		if(mouse_check_button_pressed(mb_left)){
			ScreenShake(4,30)
			menu_x_target = gui_width + 200;
			menu_committed = menu_cursor
			menu_control = false
			audio_play_sound(snDeath, 10, false)
		}
	}
}  
	
if(menu_x > gui_width + 150) && (menu_committed != -1){
	switch (menu_committed){
		case 2: 
			default: 
				SlideTransition(TRANS_MODE.NEXT) break
		case 1: {
			if(!file_exists(SAVEFILE)){
				SlideTransition(TRANS_MODE.NEXT)
			}else{
				var file = file_text_open_read(SAVEFILE)
				var target = file_text_read_real(file)
				file_text_close(file)
				SlideTransition(TRANS_MODE.GOTO, target)
			}
		} break
		case 0: 
			game_end() break
	}
}