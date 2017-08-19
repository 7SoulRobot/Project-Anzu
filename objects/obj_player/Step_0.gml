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

// Wiggle if moving
if ((hinput != 0 || vinput != 0)) && alarm[0] <= 0
{
	xscale = lerp(image_xscale, image_xscale * squish, jiggle_spd);
	yscale = lerp(image_yscale, image_yscale * stretch, jiggle_spd);
	alarm[0] = wiggle_cooldown;
}

//Check for diagonal movement and adjust speed
if (hinput != 0 && vinput != 0)
{
	x += hspd * diag_const;
	y += vspd * diag_const;
}
else
{
	x+=hspd;
	y+=vspd;
}


// Move back to normal scale
xscale = lerp(xscale, image_xscale, .025);
yscale = lerp(yscale, image_yscale, .025);
