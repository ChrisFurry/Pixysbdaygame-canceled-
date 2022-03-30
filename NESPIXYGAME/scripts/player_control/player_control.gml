function player_control(){
	var input_hor = input.right - input.left;
	var maxspd = walkvel;
	var accspd = accel;
	if(input.b){
		maxspd = runvel;
		accspd = accelrun;
	}
	
	if(input_hor != 0 && !crouching){
		if(input_hor == sign(intertia))dir = input_hor;
		
		if((input_hor == sign(intertia) && abs(intertia) < maxspd) || intertia == 0)intertia += accel * input_hor;
		if((input_hor != sign(intertia)) && intertia != 0)intertia += decelskid * input_hor;
		if(abs(intertia) > maxspd)intertia = max(abs(intertia) - decel,maxspd) * sign(intertia);
	}else{
		intertia = max(abs(intertia) - decel,0) * sign(intertia);
	}
	
	if(intertia == 0){
		nextAni = playerAni.idle;
	}else if(abs(intertia) < runvel){
		nextAni = playerAni.walk;
	}else{
		nextAni = playerAni.run;
	}
}