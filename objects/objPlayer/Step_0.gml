#region //get player Input

if(hasControl){
	//Player moviment
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
	key_jump2 = keyboard_check(ord("W"));

	//controlle personalization
	if(key_left || key_right || key_jump || key_jump2){
		controller = 0;
	}
	if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0, gp_axislh),0);
		controller  = 1;
	}

	if (gamepad_button_check_pressed(0,gp_shoulderr)){
		key_jump = 1;
		controller  = 1;
	}
	
}
else{
	key_left = 0
	key_right = 0
	key_jump = 0
	key_jump2 = 0
}
#endregion

//calculate movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

canJump -= 1
if((canJump > 0) && (key_jump || key_jump2)){
	vsp = -8
	canJump = 0
}

//horizontaal collision
if(place_meeting(x + hsp, y, objWall)){ 
	while (!place_meeting(x + sign(hsp), y, objWall)){
		x = x + sign(hsp)
	}
	hsp = 0
}
x = x + hsp;

//Vertical collision

if(place_meeting(x, y + vsp, objWall)){
	while (!place_meeting(x, y + sign(vsp), objWall)){
		y = y + sign(vsp)
	}
	vsp = 0
}
y = y + vsp;

//animation
if(!place_meeting(x, y + 2, objWall)){ //checar colisão com o chão, encontrar melhor tratativa
	// off the floor
	sprite_index = sprPlayerA;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1 else image_index = 0

} 
else {
	canJump = 6
	// on the floor
	if(sprite_index == sprPlayerA){
		audio_sound_pitch(snLanding, choose(0.8, 1, 1.2))
		audio_play_sound(snLanding, 5, false)
	}
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sprPlayer;
	}
	else{
		sprite_index = sprPlayerR;
	}
}

if(hsp !=0) image_xscale = sign(hsp)
