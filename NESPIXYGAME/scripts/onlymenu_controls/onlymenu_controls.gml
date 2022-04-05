function onlymenu_controls(){
	var controlpressed = -1;
	if(keyboard_check_pressed(vk_escape)){
		curr_script = onlymenu_main;
	}
	if(keyboard_key != 0 && keyboard_key != vk_escape && keyboard_key != vk_enter && keyboard_check_pressed(keyboard_key)){
		controlpressed = keyboard_key;
	}
	if(controlpressed){
		switch(controlsnumb){
			case 0:
				controlstruct.up = controlpressed;
				break;
			case 1:
				controlstruct.down = controlpressed;
				break;
			case 2:
				controlstruct.left = controlpressed;
				break;
			case 3:
				controlstruct.right = controlpressed;
				break;
			case 4:
				controlstruct.a = controlpressed;
				break;
			case 5:
				controlstruct.b = controlpressed;
				game.key = controlstruct;
				curr_script = onlymenu_main;
				break;
		}
		controlsnumb ++;
	}
	// Draw Code
	// Draw stuff
	var middleofscreenx = game.screen.xscale / 2;
	var middleofscreeny = game.screen.yscale / 2;
	draw_sprite_ext(sprFunnySprite,0,-32,0,1,1,0,c_white,0.025);
	draw_set_font(fntPressStartPlayer2);
	draw_set_halign(fa_center);
	draw_text(middleofscreenx,0,"CONTROL EDIT");
	switch(controlsnumb){
		case 0:
			draw_text(middleofscreenx,middleofscreeny,"Up (default Up)");
			break;
		case 1:
			draw_text(middleofscreenx,middleofscreeny,"Down (default Down)");
			break;
		case 2:
			draw_text(middleofscreenx,middleofscreeny,"Left (default Left)");
			break;
		case 3:
			draw_text(middleofscreenx,middleofscreeny,"Right (default Right)");
			break;
		case 4:
			draw_text(middleofscreenx,middleofscreeny,"A (default Z)");
			break;
		case 5:
			draw_text(middleofscreenx,middleofscreeny,"B (default X)");
			break;
	}
	draw_set_color(c_dkgrey);
	draw_text(middleofscreenx,middleofscreeny * 2 - 16,"Controls don't affect menu");
	draw_text(middleofscreenx,middleofscreeny * 2 - 8,"Controls don't save on restart");
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_font(-1);
}