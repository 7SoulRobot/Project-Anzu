//Horizontal Collision
if place_meeting(x+hspd_push,y,obj_solid)
{
	//Pixel perfect collision
	while !place_meeting(x+sign(hspd_push),y,obj_solid)
	{
		x+=sign(hspd_push);
	}
	hspd_push = 0;
}

//Vertical Collision
if place_meeting(x,y+vspd_push,obj_solid)
{
	//Pixel perfect collision
	while !place_meeting(x,y+sign(vspd_push),obj_solid)
	{
		y+=sign(vspd_push);
	}
	vspd_push = 0;
}

x+=hspd_push;
y+=vspd_push;