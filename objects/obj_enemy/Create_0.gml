/// @description Initialize Variables
// Set variables
hspd = 0;
vspd = 0;
defaultspd = 4;
max_spd = defaultspd;
diag_const = 0.707;

hspd_push = 0;
vspd_push = 0;
push_spd = max_spd/2;
hp = 1;

// Scale variables
xscale = image_xscale;
yscale = image_yscale;
squish = 0.8;
stretch = 1.2;
jiggle_spd = .25;

// Wiggle cooldown
wiggle_cooldown = room_speed/2;
alarm[0] = -1;

instance_create_layer(x, y, "Instances", obj_vision);