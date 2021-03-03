//Posicionamiento de la pistola
if (instance_exists(Player_man)){
	x = Player_man.x + Player_man.hspeed + lengthdir_x(45,Player_man.dir-25);
	y = Player_man.y + Player_man.vspeed + lengthdir_y(45,Player_man.dir-23);
	
}

//Detectar disparos y creacion
if(mouse_check_button_pressed(mb_left) && Player_man.estado!=estados.jugador_disparar && balas>0){
	bala = instance_create_layer(x,y,"Player",obj_bala);
	bala.direction = Player_man.dir;
	bala.speed = 10;
	balas--;
	
	//Establecer como estado del jugador en disparo
	Player_man.estado = estados.jugador_disparar;
	//Establecemos script a ejecutar
	Player_man.src = jugador_disparar;
	
}

