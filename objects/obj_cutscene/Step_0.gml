/// @description 
// Camera Control
/* camera_set_view_pos(view_camera[0],xpos,180);
xpos = max(xpos-0.3,0);
*/

presse = 0;

// Changes alpha to fade in/out
if (!fadeout) a = max(a-0.005,0.1); else a = min(a+0.005,1);

// Adds 1 letter every 5 frames
let += 0.2;
if (alarm[0] = -1) && (let < string_length(str))
{
	audio_emitter_pitch(snd_emit, random_range(.8, 1.2))
	audio_play_sound_on(snd_emit, snd_blip, false, 0);
	alarm[0] = room_speed/(random_range(2,6));
}

// Copies from str to print
print = string_copy(str,1,let);

//Move to next line after set time
if (let > string_length(str)+10) && (next < array_length_1d(strings)-1)
{
	presse = 1;
	if (keyboard_check(ord("E")))
	{
		let = 0;
		next++;
		if (next == array_length_1d(strings)-1)
		{
			holdspace = 2;
		}
	}
}

// Sets str to hold next line
str = strings[next];

//Let's player end cutscene with space
if (keyboard_check_direct(vk_space))
{
	holdspace++;
}

if (holdspace > 80) /*|| (xpos < 100)*/ fadeout = 1;


if (a ==1) && (fadeout == 1) game_restart();