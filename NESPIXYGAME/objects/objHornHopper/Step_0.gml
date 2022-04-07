/// @description Insert description here
// You can write your code in this editor
image_index = 0;
if(velY < 0)image_index = 1;

x -= 2 * image_xscale;

if(rectangle_in_rectangle(objPlayer.x - objPlayer.hitWid,objPlayer.y - objPlayer.hitHei,objPlayer.x + objPlayer.hitWid,objPlayer.y + objPlayer.hitHei,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	if(objPlayer.velY > 0 && !grounded){
		instance_destroy();
	}else{
		objPlayer.hurt = true;
	}
}