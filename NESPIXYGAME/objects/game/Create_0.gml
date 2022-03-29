/// @description INIT


// Screen System
screen = {
	xscale: 256,
	yscale: 240,
	size: 2,
	screensize: false
}
// Set up screen
view_enabled = true;
view_visible[0] = true;
view_wport[0] = screen.xscale;
view_hport[0] = screen.yscale;
camera_set_view_size(view_camera[0],screen.xscale,screen.yscale);
surface_resize(application_surface,screen.xscale,screen.yscale);
window_set_size(screen.xscale * screen.size,screen.yscale * screen.size);