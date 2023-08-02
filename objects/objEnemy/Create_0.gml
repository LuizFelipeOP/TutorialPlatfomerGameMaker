if(hasWeapon){
	myGun = instance_create_layer(x, y, "Gun", objEGun)
	with(myGun){
		owner = other.id
	}
}else myGun = noone;
