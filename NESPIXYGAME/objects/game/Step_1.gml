/// @description Change Screen Size
if(screen.screensize){
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
	// Fuck you variable
	screen.screensize = false;
}