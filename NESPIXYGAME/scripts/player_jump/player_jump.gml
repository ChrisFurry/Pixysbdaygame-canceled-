function player_jump(){
	if(!input.a2)exit;
	velY = -jumphigh;
	grounded = false;
	status = player_status_jump;
	play_sound(sndJump,2);
}