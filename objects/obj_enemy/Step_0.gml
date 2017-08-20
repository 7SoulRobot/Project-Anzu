/// @description Move towards the player
// Move force
var dir = point_direction(x, y, obj_player.x, obj_player.y);
hspd = lengthdir_x(max_spd, dir);
vspd = lengthdir_y(max_spd, dir);

scr_move();
scr_movepush();

// Slow pushing speed when there is no collision
if !place_meeting(x, y, obj_enemy)
{
	hspd_push = lerp(hspd_push, 0, .1);
	vspd_push = lerp(vspd_push, 0, .1);
}

// Death
if hp <= 0
{
	instance_destroy();
}

// Wiggle the sprite
if alarm[0] <= 0
{
	scr_wiggle();
}

// Move back to normal scale
xscale = lerp(xscale, image_xscale, .025);
yscale = lerp(yscale, image_yscale, .025);