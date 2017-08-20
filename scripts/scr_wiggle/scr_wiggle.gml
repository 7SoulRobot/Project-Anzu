// Makes the sprite "wiggle"
xscale = lerp(image_xscale, image_xscale * squish, jiggle_spd);
yscale = lerp(image_yscale, image_yscale * stretch, jiggle_spd);
alarm[0] = wiggle_cooldown;