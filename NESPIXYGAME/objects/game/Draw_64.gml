/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objPlayer)){
	// Create font
	var nes = font_add_sprite_ext(sprNESNumbers,"0123456789",false,false);
	draw_set_font(nes);
	// Draw Text
	draw_text(8,8,global.pizzr);
	draw_set_halign(fa_right);
	draw_text(screen.xscale,screen.yscale - 8,fps);
	draw_set_halign(fa_left);
	// Remove font from memory
	draw_set_font(-1);
	font_delete(nes);
}