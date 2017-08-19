/// @description Initialize Variable
// Set variables
defaultspd = 4;
runspd = 10;
spd = defaultspd;
vision_alpha = .5;

// Scale variables
xscale = image_xscale;
yscale = image_yscale;

instance_create_layer(x, y, "Instances", obj_vision);