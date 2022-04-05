/// @description Insert description here
// You can write your code in this editor
var collected = false;

if(point_in_rectangle(objPlayer.x,objPlayer.y,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	collected = true;
}

if(collected){
	global.pizzr ++;
	instance_destroy();
}