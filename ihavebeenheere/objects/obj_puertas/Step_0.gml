///Colisiones con jugador
//Si la hay colision y la puerta está cerrada
if(colision){
	if(open==false){
		image_speed=1;
		sprite_index = spr_puertas_open;
		if(image_index==5){image_speed=0;open=true;image_index=6}
	}
	//Si la hay colision y la puerta está abierta	
	if(open==true){sprite_index=cr_none;}

//Si NO hay colision y la apuerta esta abierta
/*}else if(!colision){
	if(open==false){sprite_index=spr_puertas_idle;}
	if(open==true){image_speed=1;sprite_index=spr_puertas_close; if(image_index==6){image_speed=0;open=false;}}
*/}
