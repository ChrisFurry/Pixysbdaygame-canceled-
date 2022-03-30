function player_input(){
	var input;
	input = {
		up: keyboard_check(game.key.up),
		down: keyboard_check(game.key.down),
		left: keyboard_check(game.key.left),
		right: keyboard_check(game.key.right),
		a: keyboard_check(game.key.a),
		b: keyboard_check(game.key.b),
		up2: keyboard_check_pressed(game.key.up),
		down2: keyboard_check_pressed(game.key.down),
		left2: keyboard_check_pressed(game.key.left),
		right2: keyboard_check_pressed(game.key.right),
		a2: keyboard_check_pressed(game.key.a),
		b2: keyboard_check_pressed(game.key.b),
	}
	return input;
}