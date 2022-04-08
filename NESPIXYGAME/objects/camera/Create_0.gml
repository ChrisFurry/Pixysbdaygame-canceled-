/// @description Insert description here
// You can write your code in this editor
cam = {
	x: 0,
	y: 0,
	target: {
		x: 0,
		y: 0,
	},
	speed: 16,
	movebackspd: 2,
	followobject: objPlayer,
	shake: {
		x: 0,
		y: 0,
	},
}
camlock = {
	u: 0,
	d: room_height,
	l: 0,
	r: room_width,
}
margin = {
	u: -16,
	d: 16,
	l: -16,
	r: 0,
}