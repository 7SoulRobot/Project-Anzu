/// @description Move towards the player
//Random movement
randomdir = irandom_range(0, 4)
if alarm[1] <= 0
{
	switch (randomdir)
	{
		case 0:
			dir = point_direction(x, y, x, y);
			break;
		case 1:
			dir = point_direction(x, y, x, y - max_spd);
			break;
		case 2:
			dir = point_direction(x, y, x, y + max_spd);
			break;
		case 3:
			dir = point_direction(x, y, x - max_spd, y);
			break;
		case 4:
			dir = point_direction(x, y, x + max_spd, y);
			break;
	}
	alarm[1] = change_dir;
}

hspd = lengthdir_x(max_spd, dir);
vspd = lengthdir_y(max_spd, dir);

scr_move_enemy();
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
if ((hspd != 0 || vspd != 0) && alarm[0] <= 0)
{
	scr_wiggle();
}

// Move back to normal scale
xscale = lerp(xscale, image_xscale, .025);
yscale = lerp(yscale, image_yscale, .025);