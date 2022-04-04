/// @description Insert description here
// You can write your code in this editor
switch(state){
	default:
		if(objPlayer.ceiling_id == id && objPlayer.ceiling_type == "Object"){
			state = 1;
		}
		break;
	case 1:
		break;
}

bounce = min(bounce + velY,0);
velY += 0.5;
y = ystart + bounce;

if(objPlayer.ceiling_id == id && objPlayer.ceiling_type == "Object"){
	velY = -2;
}
image_index = state;