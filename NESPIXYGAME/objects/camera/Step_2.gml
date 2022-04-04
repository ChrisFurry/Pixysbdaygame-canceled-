/// @description MoveCamera

if(objPlayer.routine != player_routine_dead){
	x = objPlayer.x;
	y = objPlayer.y;
}else{
	camxoffset = 0;
}

x = clamp(x + camxoffset,game.screen.xscale / 2,room_width - (game.screen.xscale / 2));
y = clamp(y,game.screen.xscale / 2,room_height - (game.screen.yscale / 2));

camxoffset = clamp(camxoffset + (objPlayer.dir * 2),-64,64);

camera_set_view_pos(view_camera[0],x - (game.screen.xscale / 2),y - (game.screen.yscale / 2));