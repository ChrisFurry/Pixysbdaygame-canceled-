/// @description pizzr
switch(state){
	default:
		if(objPlayer.ceiling_id == id && objPlayer.ceiling_type == "Object"){
			state = 1;
			global.pizzr += 100;
			var tex = instance_create_depth(x,y,0,objScoregottext);
			tex.giventext = "100";
			var eff = instance_create_depth(x + 8,y + 8,depth - 1,objEffect);
			eff.sprite_index = sprPizzrColl;
			eff.hspeed = 1;
			eff.vspeed = 1;
			var eff = instance_create_depth(x + 8,y + 8,depth - 1,objEffect);
			eff.sprite_index = sprPizzrColl;
			eff.hspeed = 1;
			eff.vspeed = -1;
			var eff = instance_create_depth(x + 8,y + 8,depth - 1,objEffect);
			eff.sprite_index = sprPizzrColl;
			eff.hspeed = -1;
			eff.vspeed = 1;
			var eff = instance_create_depth(x + 8,y + 8,depth - 1,objEffect);
			eff.sprite_index = sprPizzrColl;
			eff.hspeed = -1;
			eff.vspeed = -1;
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