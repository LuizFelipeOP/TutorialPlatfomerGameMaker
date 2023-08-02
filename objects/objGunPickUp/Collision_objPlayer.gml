/// @desc equipar gun

global.has_gun = true
instance_create_layer(objPlayer.x, objPlayer.y, "Gun", objGun)
instance_destroy();