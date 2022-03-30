function player_jump_move(){
	var input_hor = input.right - input.left;
	var maxspd = walkvel;
	if(input.b){
		maxspd = runvel;
	}
	if(input_hor != 0){
		dir = input_hor;
		if((velX * input_hor) < maxspd)velX += ((accel * 2) * input_hor);
	}
}