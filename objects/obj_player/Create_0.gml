/// @description Variables
// Set variables


hspd = 0;
vspd = 0;
accel = 1;
fric = 0.15;
defaultspd = 5;
runspd = 12;
sneakspd = 2;
max_spd = defaultspd;
diag_const = 0.707;

// Map the keys
keyboard_set_map(vk_right, ord("D"));
keyboard_set_map(vk_left, ord("A"));
keyboard_set_map(vk_up, ord("W"));
keyboard_set_map(vk_down, ord("S"));