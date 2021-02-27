///Estado inicial
var estado_inicial = estado;

/// Control de estadios
distancia = point_distance(x,y,Player_man.x,Player_man.y);
es_visible = !collision_line(x,y,Player_man.x,Player_man.y,obj_pared,false,false);
es_perseguible = perseguir and es_visible and (distancia <= radio_persecucion);
es_atacable = es_visible and (distancia <= radio_ataque);

if(es_atacable){
	estado=estadoz.zombie_atacar;
	src_z = zombie_atacar;
}else if(es_perseguible){
	estado=estadoz.zombie_persecucion;	
	src_z = zombie_persecucion;
}else{
	estado=estadoz.zombie_movimiento;
	src_z = zombie_movimiento;
}

///Reinicio de estado
if(estado != estado_inicial) image_index = 0;

///Ejecutamos scripts
script_execute(src_z);

///Colisiones con paredes
vh = lengthdir_x(v,dir);
vv = lengthdir_y(v,dir);
colision=false;

if(place_meeting(x+vh,y,obj_pared)){
	
	for(var i=0;i<abs(vh);i++){
		if(place_meeting(x+sign(vh),y,obj_pared)){
			break;
		}
		x += sign(vh);
	}
	colision=true;
}
if(place_meeting(x,y+vv,obj_pared)){
	for(var i=0;i<abs(vv);i++){
		if(place_meeting(x,y+sign(vv),obj_pared)){
			break;
		}
		y += sign(vv);
	}
	colision=true;
}

//Cuando detecte colision
if(colision){
	dir= direction + irandom_range(135,270);
	if(perseguir){
		perseguir = false;
		alarm[0] = room_speed*random_range(1,2);
	}
}


/// Movimiento final del Zombie
speed = v;
direction = dir;

///Colorear de rojo oscuro
var rojo_oscuro = make_color_rgb(155,017,030);
if(alarm[1]>-1){image_blend=rojo_oscuro;}else{image_blend=c_white;}


///Comprobar si muere el zombie
if(vida<=0){
	estado=estadoz.zombie_muerto; 
	script_execute(zombie_muerto); 
} 