/// @description Draw Stuff
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale * dir,image_yscale,image_angle,image_blend,image_alpha);
draw_set_color(c_green);
draw_set_alpha(0.4);
draw_rectangle(x - width,y - height,x + width,y + height,false);
draw_set_color(c_red);
draw_rectangle(x - hitWid,y - hitHei + hitY,x + hitWid,y + hitHei + hitY,false);
draw_set_color(c_white);
draw_set_alpha(1);