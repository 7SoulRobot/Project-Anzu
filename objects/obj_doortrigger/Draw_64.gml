/// @description Button prompt for door
// Sets printing values
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_secret);

if place_meeting(x, y, obj_player)
{
	//Displays press E to continue
	draw_set_alpha(scr_wave(0.2,0.8,3,0));
	draw_text(900,64,"Press E to enter");
	draw_set_alpha(1);
}