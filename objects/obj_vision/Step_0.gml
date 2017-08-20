/// @description Rotate the cone and change colors
// Moves object around enemy
var dir = point_direction(x, y, mouse_x, mouse_y);
image_angle = dir;


//Change cone to red when contacting player
if place_meeting(x, y, obj_player)
{
	image_blend = c_red;
}
else image_blend = c_white;

//Stick with enemy
x = owner.x;
y = owner.y;

