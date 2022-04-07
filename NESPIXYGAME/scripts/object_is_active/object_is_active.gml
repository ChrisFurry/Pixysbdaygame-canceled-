function object_is_active(){
	if(x + 32 > camera.cam.x && x - 32 < camera.cam.x + game.screen.xscale && (objPlayer.routine != player_routine_dead && objPlayer.routine != player_routine_nothing)){
		return true;
	}
	return false;
}