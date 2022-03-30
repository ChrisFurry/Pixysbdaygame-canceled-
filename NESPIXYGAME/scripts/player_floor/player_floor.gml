function player_floor(){
	if(velY < 0)exit;
	var groundedcode = function(sensx,obj){
		if(status == player_status_jump)status = player_status_normal;
		y = obj.bbox_top - height;
		velY = 0;
		grounded = true;
	}
	var floorL = player_coll_check_point(x - width,y + height,0);
	var floorR = player_coll_check_point(x + width,y + height,0);
	if(floorL){
		groundedcode(x - width,floorL);
	}else if(floorR){
		groundedcode(x + width,floorR);
	}
}