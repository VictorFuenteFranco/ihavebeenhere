///Variabkes por fotograma
vv = 0; //Velocidad Vertical
vh = 0; //Velocidad Horizontal

//Variable Direccion/Distancia
dir = point_direction(x,y,mouse_x,mouse_y); //direccion vista jugador
dis = point_distance(x,y,mouse_x,mouse_y); //distancia entre el mouse y jugador

//Procesamos el movimiento
if(keyboard_check(ord("W"))) vv -= v;
if(keyboard_check(ord("S"))) vv += v;
if(keyboard_check(ord("A"))) vh -= v;
if(keyboard_check(ord("D"))) vh += v;

///Colisiones con paredes
if(place_meeting(x+vh,y,obj_pared)){
	for(var i=0;i<abs(vh);i++){
		if place_meeting(x+sign(vh),y,obj_pared){
			break;
		} x += sign(vh);
	
	}
	vh=0;
}
if(place_meeting(x,y+vv,obj_pared)){
	for(var i=0;i<abs(vv);i++){
		if(place_meeting(x,y+sign(vv),obj_pared)){
			break;
		}
		y += sign(vv);
	}
	vv=0;
}

///Colisiones con puertas
if(place_meeting(x+vh,y,obj_puertas)){
	for(var i=0;i<abs(vh);i++){
		if place_meeting(x+sign(vh),y,obj_puertas){
			break;
		} x += sign(vh);
	
	}
	vh=0;
}
if(place_meeting(x,y+vv,obj_puertas)){
	for(var i=0;i<abs(vv);i++){
		if(place_meeting(x,y+sign(vv),obj_puertas)){
			break;
		}
		y += sign(vv);
	}
	vv=0;
}

///Colisiones contra ataques zombie
repeat(instance_number(obj_ataque_zombie)){
	ataque_z = instance_place(x,y,obj_ataque_zombie);
	if(ataque_z){
		with(ataque_z){instance_destroy();}
		alarm[0]=room_speed/4
		vida -= poder_zombie;
	}
}

///Control de estados
if(estado!=estados.jugador_disparar){
	if(vh!=0 || vv!=0){estado=estados.jugador_movimiento;src=jugador_movimiento;}
	if(vh==0 && vv==0){estado=estados.jugador_parado;src=jugador_parado;}
}

///Control de ejecucion de scripts(por estado)
script_execute(src);

///Asignando variables finales
hspeed = vh;
vspeed = vv;

/// Colorear de rojo
if(alarm[0]>-1){image_blend = c_red;} else {image_blend = c_white;}

///Reinicio del juego si nos mata
if(vida<=0){room_restart();}


