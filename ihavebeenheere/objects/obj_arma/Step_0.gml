//Posicionamiento de la pistola
if (instance_exists(Player_man)){
	x = Player_man.x + Player_man.hspeed + lengthdir_x(30,Player_man.dir-35);
	y = Player_man.y + Player_man.vspeed +lengthdir_y(30,Player_man.dir-35);
	
}

//Detectar disparos y creacion
if(mouse_check_button_pressed(mb_left) && Player_man.estado!=estados.jugador_disparar && balas>0){
	bala = instance_create_layer(x,y,"Instances",obj_bala);
	bala.direction = Player_man.dir;
	bala.speed = 10;
	balas--;
	
	//Establecer como estado del jugador en disparo
	Player_man.estado = estados.jugador_disparar;
	//Establecemos script a ejecutar
	Player_man.src = jugador_disparar;
	
}

