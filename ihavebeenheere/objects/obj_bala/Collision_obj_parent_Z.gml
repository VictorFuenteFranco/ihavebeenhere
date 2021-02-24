/// Detectar colision zombie
//Le quitamos vida al zombie con el que colisiono la bala creada
with(other){
	vida -= obj_bala.poder;
}

instance_destroy();//destruimos la bala