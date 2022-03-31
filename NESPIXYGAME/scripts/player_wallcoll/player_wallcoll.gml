function player_wallcoll(){
	var collwall = player_wallcollision(x + (velX),y + (velY),0,0,0,sign(velX));
	if(collwall[0]){
		var pX = x;
		var pY = y;
		pX = round(pX);
		//pY = round(pY);
		repeat(16){ // MOVE BACK
			var check = player_wallcollision(pX,pY,sign(velX),velY,0,sign(velX));
			if(check[0]){
				pX -= sign(velX);
			}else break;
		}
		repeat(16){ // MOVE FORWARD
			var check = player_wallcollision(pX,pY,sign(velX),velY,0,sign(velX));
			if(!check[0]){
				pX += sign(velX);
			}else break;
		}
		x = round(pX); // Round and set
		wall_id = collwall[0];
		wall_type = collwall[1];
		velX = 0;
	}
}