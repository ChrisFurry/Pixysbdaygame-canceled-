/// @description Insert description here
// You can write your code in this editor
var collected = false;

if(rectangle_in_rectangle(objPlayer.x - objPlayer.hitWid,objPlayer.y - objPlayer.hitHei,objPlayer.x + objPlayer.hitWid,objPlayer.y + objPlayer.hitHei,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	collected = true;
}

if(collected){
	global.pizzr ++;
	instance_destroy();
}