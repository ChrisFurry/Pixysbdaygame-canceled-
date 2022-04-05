/// @description MoveCamera

if(instance_exists(cam.followobject) && cam.followobject != -1){ // Target code!
	cam.target.x += (game.screen.xscale / 2);
	cam.target.y += (game.screen.yscale / 2);
	// Margins
	cam.target.x = max(cam.target.x,cam.followobject.x - margin.r);
	cam.target.x = min(cam.target.x,cam.followobject.x - margin.l);
	cam.target.y = max(cam.target.y,cam.followobject.y - margin.d);
	cam.target.y = min(cam.target.y,cam.followobject.y - margin.u);
	
	cam.target.x -= (game.screen.xscale / 2);
	cam.target.y -= (game.screen.yscale / 2);
	
	cam.target.x = clamp(cam.target.x,camlock.l,camlock.r - game.screen.xscale);
	cam.target.y = clamp(cam.target.y,camlock.u,camlock.d - game.screen.yscale);
}else{
	//camxoffset = 0;
}
if(cam.x != cam.target.x){
	if(cam.x < cam.target.x)cam.x = min(cam.x + (cam.speed),round(cam.target.x));
	if(cam.x > cam.target.x)cam.x = max(cam.x - (cam.speed),round(cam.target.x));
}
if(cam.y != cam.target.y){
	if(cam.y < cam.target.y)cam.y = min(cam.y + (cam.speed),round(cam.target.y));
	if(cam.y > cam.target.y){
		if(cam.y + game.screen.yscale > camlock.d){
			cam.y = max(cam.y - (2),round(cam.target.y))
		}else{cam.y = max(cam.y - (cam.speed),round(cam.target.y))}
	}
}


//camxoffset = clamp(camxoffset + (objPlayer.dir * 2),-64,64);

camera_set_view_pos(view_camera[0],cam.x,cam.y);