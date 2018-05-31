/// @description Soft collide
// Creates a soft collision with player
var dir = point_direction(other.x, other.y, x, y);
hspd_push += lengthdir_x(push_spd, dir);
vspd_push += lengthdir_y(push_spd, dir);
