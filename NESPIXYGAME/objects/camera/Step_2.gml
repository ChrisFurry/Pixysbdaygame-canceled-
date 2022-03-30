/// @description MoveCamera

x = objPlayer.x;
y = objPlayer.y;

x = clamp(x,game.screen.xscale / 2,room_width - (game.screen.xscale / 2));
y = clamp(y,game.screen.xscale / 2,room_height - (game.screen.yscale / 2));

camera_set_view_pos(view_camera[0],x - (game.screen.xscale / 2),y - (game.screen.yscale / 2));