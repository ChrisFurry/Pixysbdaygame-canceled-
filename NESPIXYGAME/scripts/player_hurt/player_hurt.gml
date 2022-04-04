function player_hurt(){
	if(!hurt)exit;
	routine = player_routine_dead;
	velY = -$C00;
	hurt = false;
}