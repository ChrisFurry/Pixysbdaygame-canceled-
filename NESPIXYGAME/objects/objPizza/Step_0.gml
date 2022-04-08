/// @description Insert description here
// You can write your code in this editor
var collected = false;

if(rectangle_in_rectangle(objPlayer.x - objPlayer.hitWid,objPlayer.y - objPlayer.hitHei,objPlayer.x + objPlayer.hitWid,objPlayer.y + objPlayer.hitHei,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	collected = true;
}

if(collected){
	global.pizzr += 10;
	var tex = instance_create_depth(x,y,0,objScoregottext);
		tex.giventext = "10";
	var eff = instance_create_depth(x,y,depth,objEffect);
	eff.sprite_index = sprPizzrColl;
	play_sound(sndChomp,2);
	instance_destroy();
}