///Distancia maxima, borrar disparo
if(object_exists(Player_man)){
	dis = point_distance(x,y,Player_man.x,Player_man.y);
	if(dis > dis_max){
		instance_destroy();	
	}
}

///Colision con paredes
if(collision_line(x,y,x+hspeed,y+vspeed,obj_pared,false,false)){
	instance_destroy();
}

/// Detectar colision zombie
if(collision_line(x,y,x+hspeed,y+vspeed,Zombie,false,false)){
	instance_destroy();
	Zombie.vida-=poder;	
}
