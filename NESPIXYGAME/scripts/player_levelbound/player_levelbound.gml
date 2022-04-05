function player_levelbound(){
	if(x < camera.camlock.l){
		velX = 0;
		x = camera.camlock.l;
	}
	if(x > camera.camlock.r){
		velX = 0;
		x = camera.camlock.r;
	}
	if(y >= camera.camlock.d){
		hurt = true;
		y = camera.camlock.d;
	}
}