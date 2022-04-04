/// @description MoveCamera

if(objPlayer.routine != player_routine_dead){ // Target code!
	cam.target.x = objPlayer.x;
	cam.target.y = objPlayer.y;
}else{
	camxoffset = 0;
}



camxoffset = clamp(camxoffset + (objPlayer.dir * 2),-64,64);

camera_set_view_pos(view_camera[0],x - (game.screen.xscale / 2),y - (game.screen.yscale / 2));