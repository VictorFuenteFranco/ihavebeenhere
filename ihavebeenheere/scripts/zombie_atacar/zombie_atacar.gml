function zombie_atacar() {
	//Movimiento del zombie en persecucion
	sprite_index = spr_zombie_atacar;
	image_speed = 0.8;
	v = 0;
	dir = point_direction(x,y,Player_man.x,Player_man.y);

	if(image_index == 8){
		instance_create_layer(Player_man.x,Player_man.y,"Instances",obj_ataque_zombie);
	}

}
