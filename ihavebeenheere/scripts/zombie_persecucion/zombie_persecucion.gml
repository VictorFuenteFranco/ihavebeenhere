function zombie_persecucion() {
	//Movimiento del zombie en persecucion
	sprite_index = spr_zombie_walk;
	image_speed = 0.7;
	v = 2;
	dir = point_direction(x,y,Player_man.x,Player_man.y);


}
