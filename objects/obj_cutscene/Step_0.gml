/// @description 
// Camera Control
/* camera_set_view_pos(view_camera[0],xpos,180);
xpos = max(xpos-0.3,0);
*/

// Changes alpha to fade in/out
if (!fadeout) a = max(a-0.005,0.1); else a = min(a+0.005,1);
