///Variables jugador
vida_base=150;
vida = vida_base;
v = 4; //velocidad
poder_zombie = 5; 

///Estados del jugador
enum estados{
	jugador_parado,
	jugador_movimiento,
	jugador_disparar
}

estado = estados.jugador_parado;
src=jugador_parado;

///	Creamos los objetos del jugador
instance_create_layer(0,0,"Player",obj_arma);
instance_create_layer(0,0,"Player",obj_mirilla);