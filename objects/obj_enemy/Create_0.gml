/// @description Initialize Variables
// Set variables
hspd = 0;
vspd = 0;
defaultspd = 2;
max_spd = defaultspd;
diag_const = 0.707;

hspd_push = 0;
vspd_push = 0;
push_spd = max_spd/2;
hp = 1;
randomdir = 0;
dir = irandom_range(0, 4);

// Scale variables
xscale = image_xscale;
yscale = image_yscale;
squish = 0.8;
stretch = 1.2;
jiggle_spd = .25;

// Wiggle cooldown
wiggle_cooldown = room_speed/(irandom_range(1,4));
alarm[0] = -1;

// Change direction cooldown
change_dir = room_speed*irandom_range(2, 5);
alarm[1] = -1;

instance_create_layer(x, y, "Instances", obj_vision);