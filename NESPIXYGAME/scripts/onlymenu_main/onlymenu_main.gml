function onlymenu_main(){
	if(!variable_instance_exists(id,"menuopt"))menuopt = 0;
	
	var key_vir = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	var middleofscreenx = game.screen.xscale / 2;
	var middleofscreeny = game.screen.yscale / 2;
	
	menuopt += key_vir;
	if(menuopt < 0)menuopt = 2;
	if(menuopt > 2)menuopt = 0;
	
	if(keyboard_check_pressed(vk_enter)){
		switch(menuopt){
			case 0:
				global.catblock = false;
				room_goto(rmFullGame);
				break;
			case 1:
				controlsnumb = 0;
				controlstruct = {
					up: vk_up,
					down: vk_down,
					left: vk_left,
					right: vk_right,
					a: ord("Z"),
					b: ord("X"),
				}
				curr_script = onlymenu_controls;
				break;
			case 2:
				game_end();
				break;
		}
	}
	
	// Draw stuff
	draw_sprite_ext(sprFunnySprite,0,-32,0,1,1,0,c_white,0.025);
	draw_set_font(fntPressStartPlayer2);
	draw_set_halign(fa_center);
	draw_text(middleofscreenx,0,"Autumn's pizzr\nadventure\n\nBy ChrisFurry");
	draw_set_color(c_white);
	if(menuopt == 0)draw_set_color(c_yellow);
	draw_text(middleofscreenx,middleofscreeny - 16,"Start");
	draw_set_color(c_white);
	if(menuopt == 1)draw_set_color(c_yellow);
	draw_text(middleofscreenx,middleofscreeny,"Controls");
	draw_set_color(c_white);
	if(menuopt == 2)draw_set_color(c_red);
	draw_text(middleofscreenx,middleofscreeny + 16,"Quit");
	draw_set_color(c_dkgrey);
	draw_text(middleofscreenx,middleofscreeny * 2 - 8,"Once you start you can't go back");
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_font(-1);
}