/// @description Insert description here
// You can write your code in this editor
if(!object_is_active())exit;
image_index = 0;
if(velY < 0)image_index = 1;

x -= 1 * image_xscale;
y += velY;
velY += grav;

if(velY > 0 && collision_tile(x,y + 8,"CollTiles")){
	velY = -4;
}

if(rectangle_in_rectangle(objPlayer.x - objPlayer.hitWid,objPlayer.y - objPlayer.hitHei,objPlayer.x + objPlayer.hitWid,objPlayer.y + objPlayer.hitHei,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	if(objPlayer.velY > 0 && !objPlayer.grounded){
		global.pizzr += 100;
		objPlayer.velY = -$600;
		var tex = instance_create_depth(x,y,0,objScoregottext);
		tex.giventext = "100";
		var deb = instance_create_depth(x,y,0,objDebre);
		deb.sprite_index = sprHonkerDebre;
		deb.hspeed = 2 * sign(objPlayer.velX);
		deb.vspeed = -2;
		deb.gravity = 0.2;
		deb.image_xscale = image_xscale;
		instance_destroy();
	}else{
		objPlayer.hurt = true;
	}
}