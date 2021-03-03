/// Detectar colision zombie
//Le quitamos vida al zombie con el que colisiono la bala creada
with(other){
	if(estado!=estadoz.zombie_muerto){
		vida -= obj_bala.poder;
		image_blend=make_color_rgb(155,017,030);
		repeat(6){
			instance_create_layer(x,y,"Zombies",obj_sangre);
		}
		//Al colisionar, cambiar direccion hacia jugador
		dir = point_direction(x,y,Player_man.x,Player_man.y);
		
		
	}
}
instance_destroy();//destruimos la bala
