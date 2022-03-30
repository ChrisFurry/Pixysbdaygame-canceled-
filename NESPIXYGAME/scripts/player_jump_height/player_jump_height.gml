function player_jump_height(){
	if(!input.a){
		velY = max(velY,-jumplow);
	}
	
	if(velY < 0)nextAni = playerAni.jump;
	if(velY >= 0)nextAni = playerAni.fall;
}