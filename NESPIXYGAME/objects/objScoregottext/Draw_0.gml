/// @description Insert description here
// You can write your code in this editor
timer ++;
if(timer > 30)instance_destroy();
y --;
//draw_sprite_ext(sprFunnySprite,0,-32,0,1,1,0,c_white,0.025);
draw_set_font(fntPressStartPlayer2);
draw_set_halign(fa_center);
draw_text(x,y,giventext);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(-1);