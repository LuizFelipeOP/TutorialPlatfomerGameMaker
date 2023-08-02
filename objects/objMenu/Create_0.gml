/// @desc GUI/vars/Menu setup

#macro SAVEFILE  "Save.sav"

gui_width = RES_W
gui_height = RES_H
gui_margin = 32

menu_x = gui_width + 200
menu_y = gui_height - gui_margin// + 200
menu_x_target = gui_width - gui_margin
menu_speed = 25 //lower is fastar (?)
menu_font = fMenu
menu_item_heigth = font_get_size(fMenu)
menu_committed = -1
menu_control = true

//menu[2] = "New Game"
//menu[1] = "Continue"
//menu[0] = "Quit"
menu = ["Quit", "Continue", "New Game"]

menu_itens = array_length(menu)
menu_top = menu_y - ((menu_item_heigth *  1.5) * menu_itens)
menu_cursor = 2