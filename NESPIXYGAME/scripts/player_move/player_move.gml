function player_move(){
	// Fixed point code
	var fixedto = 256;
	x *= fixedto;
	y *= fixedto;
	x += velX;
	y += clamp(velY,-velYCap,velYCap);
	x = floor(x) / fixedto;
	y = floor(y) / fixedto;
}