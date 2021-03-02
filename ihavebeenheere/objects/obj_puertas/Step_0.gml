colision=collision_circle(x+16,y+64,64,Player_man,false,false);

///Colisiones con jugador
//Si la hay colision y la puerta está cerrada
if(colision && open==false){
	image_speed=1;
	sprite_index = spr_puertas_open;
	if(image_index==5){image_speed=0;open=true;}
//Si la hay colision y la puerta está abierta	
}else if(colision && open==true){sprite_index=spr_puertas_open;image_index=5;
	
//Si NO hay colision y la apuerta esta abierta
}else if(!colision && open==true){
	image_speed=1;
	sprite_index=spr_puertas_close;
	if(image_index==5){image_speed=0;open=false;}
}else if(!colision && open==false){
	sprite_index=spr_puertas_idle;
}
