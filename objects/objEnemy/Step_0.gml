vsp = vsp + grv;

//dont walk off edges
if(grounded) && (afraidHeights) && (!place_meeting(x + hsp, y + 1, objWall)){
	hsp = -hsp
}

//horizontaal collision
if(place_meeting(x + hsp, y, objWall)){ 
	grounded = false
	while (!place_meeting(x + sign(hsp), y, objWall)){
		x = x + sign(hsp)
	}
	hsp = -hsp
}
x = x + hsp;

//Vertical collision
if(place_meeting(x, y + vsp, objWall)){
	grounded = true
	while (!place_meeting(x, y + sign(vsp), objWall)){
		y = y + sign(vsp)
	}
	vsp = 0
}
y = y + vsp;

//animation
if(!place_meeting(x, y+1, objWall)){ //checar colisão com o chão, encontrar melhor tratativa
	sprite_index = sprEnemyA;
	image_speed = 0;
	if(sign(vsp)) image_index = 0	
	if(!sign(vsp)) image_index = 1

} 
else {
	image_speed = 1;
	if(hsp == 0){
		sprite_index = sprEnemy;
	}
	else{
		sprite_index = sprEnemyR;
	}
}

if(hsp !=0) image_xscale = sign(hsp) * size
image_yscale = size