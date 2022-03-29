function player_move(){
	// Fixed point code
	var fixedto = 4096;
	x *= fixedto;
	y *= fixedto;
	x += velX;
	y += velY;
	x = floor(floor(x) / fixedto);
	y = floor(floor(y) / fixedto);
}