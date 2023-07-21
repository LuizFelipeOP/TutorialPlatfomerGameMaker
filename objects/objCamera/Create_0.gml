/// @description Camera

cam = view_camera[0]
follow = objPlayer
view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5
xTo = xstart
yTo = ystart

buff = 32;
shake_lengh = 0
shake_magnitude = 0;
shake_remain = 0;

mountainLayer = layer_get_id("Mountains")
treesLayer = layer_get_id("Trees")