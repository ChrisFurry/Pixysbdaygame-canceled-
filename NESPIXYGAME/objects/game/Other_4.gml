/// @description Room Start
if(room == rmInit){
	//screen.screensize = true;
	room_goto(rmTest);
}
view_enabled = true;
view_visible[0] = true;
view_wport[0] = screen.xscale;
view_hport[0] = screen.yscale;
camera_set_view_size(view_camera[0],screen.xscale,screen.yscale);

// Check for player stuff
if(instance_exists(objPlayerSpawn)){
	if(instance_exists(objPlayer)){
		objPlayer.x = objPlayerSpawn.x;
		objPlayer.y = objPlayerSpawn.y;
	}else{
		instance_create_depth(objPlayerSpawn.x,objPlayerSpawn.y,depth,objPlayer);
	}
}