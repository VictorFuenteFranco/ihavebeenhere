if(keyboard_check_pressed(ord("F")) and pFull==false){
	window_set_fullscreen(true);pFull=true;
}else if(keyboard_check_pressed(ord("F")) and pFull==true){
	window_set_fullscreen(false);pFull=false;
}