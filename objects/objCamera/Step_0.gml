/// @description Update camera

//update destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == objPlayerDead){
		x = xTo
		y = yTo
	}
}

// update object positio

x +=  (xTo - x) / 25
y +=  (yTo - y) / 25

x = clamp(x, view_w_half + buff, room_width - view_w_half - buff)
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff)
 
// screen shake
x += random_range(-shake_remain, shake_remain)
y += random_range(-shake_remain, shake_remain)
shake_remain = max(0, shake_remain - ((1/shake_lengh) * shake_magnitude))

//update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half)

if(mountainLayer){
	layer_x("Mountains", x/2)
}
if(treesLayer){
	layer_x("Trees", x/6)
}
if(room != Menu){
	layer_x("Background", x/2)
	layer_y("Background", y - 100)
}