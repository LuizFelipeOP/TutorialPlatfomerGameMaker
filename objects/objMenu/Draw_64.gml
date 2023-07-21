/// @description Draw menu

draw_set_font(fMenu)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)

for(var i = 0; i < menu_itens; i++){
  var col = c_gray
  var offset = 2
  var txt = menu[i]
  if(menu_cursor == i){
	txt = string_insert("> ", txt, 0)
	var col = c_white
  }
  var xx = menu_x - 5;
  var yy = menu_y - (menu_itemHeigth * (i * 1.5))
  draw_set_color(c_black);
  
  draw_text(xx - offset,yy,txt)
  draw_text(xx + offset,yy,txt)
  draw_text(xx,yy - offset,txt)
  draw_text(xx,yy + offset,txt)
  
  draw_set_color(col)
  draw_text(xx,yy,txt)
}   