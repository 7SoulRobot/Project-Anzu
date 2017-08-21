/// @description Bars and fade
// Black bars
draw_sprite_ext(spr_pixel,0,0,0,1920,250,0,c_black,1);
draw_sprite_ext(spr_pixel,0,0,830,1920,250,0,c_black,1);

// Sets printing values
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_secret);
//Text Position
draw_text(960,895,print);

//Displays press E to continue
if (presse = 1)
{
	draw_set_alpha(scr_wave(0.2,0.8,3,0));
	draw_text(960,1000,"Press E to continue");
	draw_set_alpha(1);

}

if ((let > string_length(str)+60) && (holdspace >= 2))
{
	draw_set_alpha(scr_wave(0.2,0.8,3,0));
	draw_text(960,1000,"Hold space to exit");
	draw_set_alpha(1);
}

// Fade
draw_sprite_ext(spr_pixel,0,0,0,1920,1080,0,c_black,a);