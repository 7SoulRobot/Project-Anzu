/// @description Rotate the cone and change colors
// Moves object around enemy
direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = direction;

//Change cone to red when contacting player
if place_meeting(x, y, obj_player)
{
	image_blend = c_red;
}
else image_blend = c_white;