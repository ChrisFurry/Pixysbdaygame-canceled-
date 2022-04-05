/// @description Room Start
if(room == rmInit){
	//screen.screensize = true;
	room_goto(rmOnlyMenu);
}
screen.screensize = true;

// Check for player stuff
if(instance_exists(objPlayerSpawn)){
	instance_create_depth(objPlayerSpawn.x,objPlayerSpawn.y,10,objPlayer);
	instance_create_depth(0,0,0,camera);
	global.pizzr = 0;
	if(gotcheckpoint){
		objPlayer.x = checkpointx;
		objPlayer.y = checkpointy;
		global.pizzr = checkpointPizzr;
	}
	camera.cam.x = objPlayer.x - screen.xscale / 2;
	camera.cam.y = objPlayer.y - screen.yscale / 2;
	
	camera.cam.x = clamp(camera.cam.x,camera.camlock.l,camera.camlock.r - screen.xscale);
	camera.cam.y = clamp(camera.cam.y,camera.camlock.u,camera.camlock.d - screen.yscale);
}