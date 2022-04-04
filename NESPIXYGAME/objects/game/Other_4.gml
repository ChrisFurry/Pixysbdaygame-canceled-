/// @description Room Start
if(room == rmInit){
	//screen.screensize = true;
	room_goto(rmFullGame);
}
screen.screensize = true;

// Check for player stuff
if(instance_exists(objPlayerSpawn)){
	if(instance_exists(objPlayer)){
		objPlayer.x = objPlayerSpawn.x;
		objPlayer.y = objPlayerSpawn.y;
	}else{
		instance_create_depth(objPlayerSpawn.x,objPlayerSpawn.y,10,objPlayer);
		instance_create_depth(0,0,0,camera);
	}
}