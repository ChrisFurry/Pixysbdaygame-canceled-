function player_control(){
	var input_hor = input.right - input.left;
	var maxspd = walkvel;
	var accspd = accel;
	if(input.b){
		maxspd = runvel;
		accspd = accelrun;
	}
	
	if(input_hor != 0){
		if(input_hor == sign(velX))dir = input_hor;
		
		if((input_hor == sign(velX) && abs(velX) < maxspd) || velX == 0)velX += accel * input_hor;
		if((input_hor != sign(velX)) && velX != 0)velX += decelskid * input_hor;
		if(abs(velX) > maxspd)velX = max(abs(velX) - decel,maxspd) * sign(velX);
	}else{
		velX = max(abs(velX) - decel,0) * sign(velX);
	}
	
	if(velX == 0){
		nextAni = playerAni.idle;
	}else if(abs(velX) < runvel){
		nextAni = playerAni.walk;
	}else{
		nextAni = playerAni.run;
	}
}