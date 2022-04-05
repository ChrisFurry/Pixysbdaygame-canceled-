/// @description Insert description here
// You can write your code in this editor
if(!hit && point_in_rectangle(objPlayer.x,objPlayer.y,bbox_left,bbox_top,bbox_right,bbox_bottom)){
	hit = true;
	game.gotcheckpoint = true;
	game.checkpointx = x;
	game.checkpointy = bbox_bottom - 8;
	game.checkpointPizzr = global.pizzr;
	instance_create_depth(objPlayer.x,objPlayer.y - 8,0,objCheckpointGot);
	objCheckpointGot.hspeed = 1;
	objCheckpointGot.vspeed = -6;
	objCheckpointGot.gravity = 0.3;
}