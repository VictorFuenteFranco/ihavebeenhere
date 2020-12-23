///Variabels
randomize();
dir = random(360);
v = 0;
radio_persecucion = 200;
radio_ataque = 55;
perseguir = true;

///Estados 
enum estadoz{
	zombie_movimiento,
	zombie_persecucion,
	zombie_atacar
}
estado=estadoz.zombie_movimiento;
src_z = zombie_movimiento;
