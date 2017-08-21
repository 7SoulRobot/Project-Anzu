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
wiggle_cooldown = (room_speed*defaultspd)/max_spd;

//Horizontal Movement
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if hinput != 0
{
	hspd += hinput*accel;
	hspd = clamp(hspd, -max_spd, max_spd);
}
else
{
	hspd = lerp(hspd, 0, fric);
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
	vspd = lerp(vspd, 0, fric);
}

//Horizontal Collision
if place_meeting(x+hspd,y,obj_solid)
{
	//Pixel perfect collision
	while !place_meeting(x+sign(hspd),y,obj_solid)
	{
		x+=sign(hspd);
	}
	hspd = 0;
}

//Vertical Collision
if place_meeting(x,y+vspd,obj_solid)
{
	//Pixel perfect collision
	while !place_meeting(x,y+sign(vspd),obj_solid)
	{
		y+=sign(vspd);
	}
	vspd = 0;
}

//Check for diagonal movement and adjust speed
if (hinput != 0 && vinput != 0)
{
	scr_diagmove();
}
else
{
	scr_move();
}

// Wiggle if moving
if ((hinput != 0 || vinput != 0)) && alarm[0] <= 0
{
	audio_emitter_pitch(snd_emit, random_range(.8, 1.2))
	audio_play_sound_on(snd_emit, snd_bounce, false, 0);
	scr_wiggle();
}

// Move back to normal scale
xscale = lerp(xscale, image_xscale, .025);
yscale = lerp(yscale, image_yscale, .025);

// Temporary sprite facing code
if hinput < 0
{
 dir = 180;
}

if hinput > 0
{
	dir = 0;
}

if vinput < 0
{
	dir = 90;
}

if vinput > 0
{
	dir = 270;
}

if hinput < 0 && vinput < 0
{
	dir = 135;
}

if hinput < 0 && vinput > 0
{
	dir = 225;
}

if hinput > 0 && vinput < 0
{
	dir = 45;
}

if hinput > 0 && vinput > 0
{
	dir = 315;
}
