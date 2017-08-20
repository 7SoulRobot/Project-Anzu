/// @description Draw player and rotate it
// draw player sprite
//var dir = point_direction(x, y, mouse_x, mouse_y);

// Make collisions change with angle
//image_angle = dir;

//Flip sprite when looking left
/*
var xscale = (mouse_x > x)*2-1;
var yscale = (mouse_y > y)*2-1;
*/



//Draw player
draw_sprite_ext(spr_player, 1, x, y, xscale, yscale, dir, image_blend, image_alpha);