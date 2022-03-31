function player_floor(){
	if(velY < 0){
		var collceil = [false,false];
		collceil = player_ceilingcollision(x,y,0,0,0);
		if(collceil[0]){
			var pX = x;
			var pY = y;
			pY = round(pY);
			repeat(16){ // MOVE BACK
				var check = player_ceilingcollision(pX,pY,0,-1,0);
				if(check[0]){
					collceil = check;
					pY ++;
				}else break;
			}
			y = round(pY); // Round and set
			velY = 0;
			ceiling_id = collceil[0];
			ceiling_type = collceil[1];
		}
		exit;
	}
	var collfloor = [false,false];
	collfloor = player_floorcollision(x,y,0,0,0);
	if(collfloor[0]){
		var pX = x;
		var pY = y - 16;
		for(var i = 0;i < 32 + height;i++){
			var check = player_floorcollision(pX,pY,0,1,0);
			if(check[0]){
				x = pX;
				y = pY;
				break;
			}
			pY ++;
		}
		grounded = true;
		floor_id = check[0];
		floor_type = check[1];
		if(floor_type == "Tile"){
			floor_mirror = tempTileData_Mirror;
			floor_flip = tempTileData_Flip;
		}
		angle = player_getangle(angle,floor_id,floor_type);
		if(status == player_status_jump)status = player_status_normal;
		velY = 0;
		exit;
	}
}