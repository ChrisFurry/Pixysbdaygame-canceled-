function player_anglepos(){
	// Lock to ground
	if(floor_id){
		if(instance_exists(floor_id) && floor_type == "Object" || floor_id && floor_type == "Tile"){
			var pY = y - 16;
			for(var i = 0;i < 32;i++){
				var check = player_floorcollision(x,pY,0,1,0);
				if(check[0]){
					y = pY;
					y = floor(y);
					break;
				}
				pY ++;
			}
			floor_id = check[0];
			if(floor_id){
				floor_type = check[1];
				if(floor_type == "Tile"){
					floor_mirror = tempTileData_Mirror;
					floor_flip = tempTileData_Flip;
				}
				angle = player_getangle(angle,floor_id,floor_type);
				//angle_fake = angle;
				//sensor_angle = angle_wrap(round(angle / 90) * 90);
			}else{
				grounded = false;
				floor_id = false;
				floor_type = "None";
			}
		}else{
			grounded = false;
			floor_id = false;
			floor_type = "None";
		}
	}else{
		grounded = false;
		floor_id = false;
		floor_type = "None";
	}
	if(!grounded){
		status = player_status_jump;
	}
}