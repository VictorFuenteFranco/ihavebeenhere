repeat(irandom_range(7,10)){
	var rand_x = irandom_range(-4,4);
	var rand_y = irandom_range(-4,4);
	
	instance_create_layer(x+rand_x,y+rand_y,"Player",obj_ataque_zombie);
	
}