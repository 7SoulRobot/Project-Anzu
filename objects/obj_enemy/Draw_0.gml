/// @description Draw enemy and rotate it
// draw enemy sprite
var dir = point_direction(x, y, mouse_x, mouse_y);

//Flip sprite when looking left
/*
var xscale = (mouse_x > x)*2-1;
var yscale = (mouse_y > y)*2-1;
*/



//Draw enemy
draw_sprite_ext(spr_enemy, 0, x, y, image_xscale, image_yscale, dir, image_blend, image_alpha);

