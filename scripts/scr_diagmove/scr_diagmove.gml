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

x += hspd * diag_const;
y += vspd * diag_const;