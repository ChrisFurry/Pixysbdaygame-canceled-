function player_levelbound(){
	if(x < 0){
		velX = 0;
		x = 0;
	}
	if(y >= room_height){
		hurt = true;
		y = room_height;
	}
}