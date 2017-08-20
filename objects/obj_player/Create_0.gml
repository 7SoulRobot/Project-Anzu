/// @description Variables
// Set variables
hspd = 0;
vspd = 0;
defaultspd = 5;
diag_const = 0.707;
runspd = 12;
sneakspd = 2;
max_spd = defaultspd;
accel = 1;
fric = 0.15;

// Scale variables
xscale = image_xscale;
yscale = image_yscale;
squish = 0.8;
stretch = 1.2;
jiggle_spd = .25;

// Wiggle cooldown
wiggle_cooldown = room_speed/2;
alarm[0] = -1;

// Create sound emitter
snd_emit = audio_emitter_create();

// Map the keys
keyboard_set_map(vk_right, ord("D"));
keyboard_set_map(vk_left, ord("A"));
keyboard_set_map(vk_up, ord("W"));
keyboard_set_map(vk_down, ord("S"));