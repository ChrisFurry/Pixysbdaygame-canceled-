function player_routine_dead(){
	nextAni = playerAni.dead;
	velX = 0;
	player_animate();
	player_move();
	velY += grav;
	if(velY > 0 && y > camera.camlock.d + 64){
		routine = player_routine_nothing;
		camera.cam.followobject = -1;
		instance_create_depth(0,0,-1,objGameover);
	}
}