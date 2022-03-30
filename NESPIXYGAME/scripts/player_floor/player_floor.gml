function player_floor(){
	if(velY < 0)exit;
	var groundedcode = function(obj){
		if(status == player_status_jump)status = player_status_normal;
		y = obj.bbox_top - height;
		velY = 0;
		grounded = true;
	}
	var floorL = collision_point(x - width,y + height,parSolid,true,true);
	var floorR = collision_point(x + width,y + height,parSolid,true,true);
	if(floorL){
		groundedcode(floorL);
	}else if(floorR){
		groundedcode(floorR);
	}
}