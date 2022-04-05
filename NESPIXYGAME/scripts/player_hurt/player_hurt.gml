function player_hurt(){
	if(!hurt)exit;
	routine = player_routine_dead;
	velY = -$A00;
	hurt = false;
	play_sound(sndDead,2);
}