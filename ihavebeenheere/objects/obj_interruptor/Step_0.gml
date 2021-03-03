///Obtenemos la instacia del objeto puerta más cercana al interruptor
inst = instance_nearest(x,y,obj_puertas);

///Abrimos o cerramos la instancia de puerta más cercana
if(collision_rectangle(x,y,x+64,y+64,Player_man,false,false)){
	inst.colision=true;
}else{
	inst.colision = false;
}