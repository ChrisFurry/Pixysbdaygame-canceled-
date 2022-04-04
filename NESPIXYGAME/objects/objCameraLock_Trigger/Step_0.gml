/// @description Check if player has collided

if(point_in_rectangle(objPlayer.x,objPlayer.y,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	var struct = {
		u: 0,
		d: room_height,
		l: 0,
		r: room_width,
	}
	var foundid = -1;
	with(objCameraLock_Area)if(camera_id = other.camera_id)foundid = id;
	if(foundid != -1 && instance_exists(foundid)){
		struct = {
			u: foundid.bbox_top,
			d: foundid.bbox_bottom,
			l: foundid.bbox_left,
			r: foundid.bbox_right,
		}
	}
	camera.camlock = struct;
}