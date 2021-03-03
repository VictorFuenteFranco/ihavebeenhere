///Variabels
randomize();
dir = random(360);
v = 0;
radio_persecucion = 300;
radio_ataque = 55;
perseguir = true;
//vida zombie
vida_base=50;
vida=vida_base;

///Estados 
enum estadoz{
	zombie_movimiento,
	zombie_persecucion,
	zombie_atacar,
	zombie_muerto
}

estado=estadoz.zombie_movimiento;
src_z = zombie_movimiento;
