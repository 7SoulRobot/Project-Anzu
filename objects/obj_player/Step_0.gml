/// Character Movement

spd = defaultspd;

var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

//Key Checks

if keyboard_check(vk_lshift)
{
	spd = runspd;
}


if keyboard_check(vk_lcontrol)
{
	spd = sneakspd;
}

if (right)
{
	hspd=spd;
}

if (left)
{
	hspd=-spd;
}

if (up)
{
	vspd=-spd;
}

if (down)
{
	vspd=spd;
}

//Friction

if (!right && !left)
{
	hspd = 0;
}

if (!up && !down)
{
	vspd = 0;
}

//Horizontal Collision

if(place_meeting(x+hspd,y,obj_solid))
{
	while(!place_meeting(x+sign(hspd),y,obj_solid))
	{
		x+=sign(hspd);
	}
	hspd = 0;
}

x+=hspd;

//Vertical Collision

if(place_meeting(x,y+vspd,obj_solid))
{
	while(!place_meeting(x,y+sign(vspd),obj_solid))
	{
		y+=sign(vspd);
	}
	vspd = 0;
}

y+=vspd;

