/// @description Soft collide
// Pushes enemies away from each other
var dir = point_direction(other.x, other.y, x, y);
hspd_push += lengthdir_x(push_spd, dir);
vspd_push += lengthdir_y(push_spd, dir);

