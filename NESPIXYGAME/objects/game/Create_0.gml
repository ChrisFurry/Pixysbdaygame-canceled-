/// @description INIT
global.pizzr = 0;
global.catblock = false;
global.gameDebug = false;
checkpointPizzr = 0;
gotcheckpoint = 0;
checkpointx = 0;
checkpointy = 0;
// Input
key = {
	up: vk_up,
	down: vk_down,
	left: vk_left,
	right: vk_right,
	a: ord("Z"),
	b: ord("X"),
}

// Screen System
screen = {
	xscale: 256,
	yscale: 240,
	size: 2,
	screensize: false
}
tileangle = [
0,0,45,22.5,22.5
]
// Sounds
soundchannel = [-1,-1,-1,-1];
// Set up screen
// Change View (Just in case)
view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0],screen.xscale,screen.yscale);
view_wport[0] = screen.xscale;
view_hport[0] = screen.yscale;
// Application Surface
surface_resize(application_surface,screen.xscale,screen.yscale);
// Window Size
var windowPrevW = window_get_width();
var windowPrevH = window_get_height();
var windowNewW = screen.xscale * screen.size;
var windowNewH = screen.yscale * screen.size;
window_set_size(windowNewW,windowNewH);
var windowPosX = window_get_x();
var windowPosY = window_get_y();
window_set_position(windowPosX + ((windowPrevW - windowNewW) / 2),windowPosY + ((windowPrevH - windowNewH) / 2));