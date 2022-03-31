function player_status_jump(){
	player_jump_height();
	player_jump_move();
	player_wallcoll();
	player_crouching();
	player_move();
	velY += grav;
	player_floor();
}