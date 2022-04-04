function player_routine_dead(){
	nextAni = playerAni.dead;
	velX = 0;
	player_animate();
	player_move();
	velY += grav;
}