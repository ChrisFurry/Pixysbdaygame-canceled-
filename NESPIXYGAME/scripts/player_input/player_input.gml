function player_input(){
	var input,gamepadon,gamepad_right=0,gamepad_left=0,gamepad_up=0,gamepad_down=0,gamepad_a=0,gamepad_b=0;
	var gamepad_right2=0,gamepad_left2=0,gamepad_up2=0,gamepad_down2=0,gamepad_a2=0,gamepad_b2=0;
	var gp_num = gamepad_get_device_count();
	gamepadon = -1;
	for (var i = 0; i < gp_num; i++;)
	{
	    if gamepad_is_connected(i) gamepadon = i;
	}
	if(gamepad_is_connected(gamepadon)){
		var haxis = gamepad_axis_value(gamepadon, gp_axislh);
		var vaxis = gamepad_axis_value(gamepadon, gp_axislv);
		gamepad_a = gamepad_button_check(gamepadon,gp_face1);
		gamepad_a += gamepad_button_check(gamepadon,gp_face4);
		gamepad_b = gamepad_button_check(gamepadon,gp_face2);
		gamepad_b += gamepad_button_check(gamepadon,gp_face3);
		gamepad_right = gamepad_button_check(gamepadon,gp_padr);
		gamepad_left = gamepad_button_check(gamepadon,gp_padl);
		gamepad_up = gamepad_button_check(gamepadon,gp_padu);
		gamepad_down = gamepad_button_check(gamepadon,gp_padd);
		// Pressed
		gamepad_a2 = gamepad_button_check_pressed(gamepadon,gp_face1);
		gamepad_a2 += gamepad_button_check_pressed(gamepadon,gp_face4);
		gamepad_b2 = gamepad_button_check_pressed(gamepadon,gp_face2);
		gamepad_b2 += gamepad_button_check_pressed(gamepadon,gp_face3);
		gamepad_right2 = gamepad_button_check_pressed(gamepadon,gp_padr);
		gamepad_left2 = gamepad_button_check_pressed(gamepadon,gp_padl);
		gamepad_up2 = gamepad_button_check_pressed(gamepadon,gp_padu);
		gamepad_down2 = gamepad_button_check_pressed(gamepadon,gp_padd);
		
		// Joystick
		if(haxis > 0.5)gamepad_right = 1;
		if(haxis < -0.5)gamepad_left = 1;
		if(vaxis > 0.5)gamepad_down = 1;
		if(vaxis < -0.5)gamepad_up = 1;
	}
	input = {
		up: sign(keyboard_check(game.key.up) + gamepad_up),
		down: sign(keyboard_check(game.key.down) + gamepad_down),
		left: sign(keyboard_check(game.key.left) + gamepad_left),
		right: sign(keyboard_check(game.key.right) + gamepad_right),
		a: sign(keyboard_check(game.key.a) + gamepad_a),
		b: sign(keyboard_check(game.key.b) + gamepad_b),
		up2: sign(keyboard_check_pressed(game.key.up)+ gamepad_up2),
		down2: sign(keyboard_check_pressed(game.key.down)+ gamepad_down2),
		left2: sign(keyboard_check_pressed(game.key.left)+ gamepad_left2),
		right2: sign(keyboard_check_pressed(game.key.right)+ gamepad_right2),
		a2: sign(keyboard_check_pressed(game.key.a) + gamepad_a2),
		b2: sign(keyboard_check_pressed(game.key.b) + gamepad_b2),
	}
	return input;
}