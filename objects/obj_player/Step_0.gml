/// @description Character Movement

max_spd = defaultspd;
//Key Checks for Run/Sneak
if keyboard_check(vk_lshift)
{
	max_spd = runspd;
}

if keyboard_check(vk_lcontrol)
{
	max_spd = sneakspd;
}

//Diagnol Fix
var diag = 0;
if (hspd != 0 && vspd != 0)
{
	diag = 1;
}

if diag = 1
{
	max_spd = (max_spd * diag_const);
}

//Horizontal Movement
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if hinput != 0
{
	hspd += hinput*accel;
	hspd = clamp(hspd, -max_spd, max_spd);
}
else
{
	hspd = lerp(hspd, 0, .3);
}

//Vertical Movement
var vinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if vinput != 0
{
	vspd += vinput*accel;
	vspd = clamp(vspd, -max_spd, max_spd);
}
else
{
	vspd = lerp(vspd, 0, .3);
}

//Horizontal Collision
if place_meeting(x+hspd,y,obj_solid)
{
	while !place_meeting(x+sign(hspd),y,obj_solid)
	{
		x+=sign(hspd);
	}
	hspd = 0;
}

x+=hspd;

//Vertical Collision
if place_meeting(x,y+vspd,obj_solid)
{
	while !place_meeting(x,y+sign(vspd),obj_solid)
	{
		y+=sign(vspd);
	}
	vspd = 0;
}

y+=vspd;

