/// @description INIT
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
// Height map for tiles
tileheightmap = [
[16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0],
[15,15,14,14,13,13,12,12,11,11,10,10,9,9,8,8],
[7,7,6,6,5,5,4,4,3,3,2,2,1,1,0,0],
]
tilewidthmap = [
[16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0],
[14,12,10,8,6,4,2,0,0,0,0,0,0,0,0,0],
[16,16,16,16,16,16,16,16,14,12,10,8,6,4,2,0],
]
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