function player_getangle(angle,floor_id,floor_type){
	// Get angle from an object
	if(floor_id && floor_type == "Object"){
		return 0;
	}
	// Get angle from tile
	if(floor_id && floor_type == "Tile"){
		var temp0 = floor_id >= game.tileangle[floor_id];
		// If square.. Return your angle rounded to the nearest 90 degree
		if(temp0 == 0)return 0;
		if(floor_flip)temp0 = (540 - temp0) mod 360;
		if(floor_mirror)temp0 = 360 - temp0;
		return temp0;
	}
}