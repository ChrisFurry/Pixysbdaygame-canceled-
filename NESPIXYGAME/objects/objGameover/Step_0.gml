/// @description Insert description here
// You can write your code in this editor
switch(routine){
	default:
		fucktext = lerp(fucktext,-32,0.1);
		timer ++;
		if(timer > (60 * 8) || keyboard_check_pressed(vk_enter)){
			routine = 1;
			timer = 0;
		}
		break;
	case 1:
		timer ++;
		if(timer > 60)room_restart();
		break;
}