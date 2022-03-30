function player_crouching(){
	if(grounded)crouching = input.down;
	if(crouching)nextAni = playerAni.crouch;
}