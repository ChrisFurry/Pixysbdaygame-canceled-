/// @description Insert description here
// You can write your code in this editor
if(global.catblock){
	solid_floor = false;
	solid_walls = false;
	solid_ceiling = false;
	image_index = 1;
}else{
	solid_floor = true;
	solid_walls = true;
	solid_ceiling = false;
	image_index = 0;
}
if(objPlayer.floor_id == id && objPlayer.floor_type == "Object"){
	global.catblock = true;
	camera.cam.shake.y = 10;
}