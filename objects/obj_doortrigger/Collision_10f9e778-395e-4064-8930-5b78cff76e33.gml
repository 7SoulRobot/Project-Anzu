/// @description Secret Room Trigger
// Go to the secret room
// Enter secret room if E is pressed while on door trigger
if keyboard_check(ord("E"))
{
	audio_stop_sound(msc_night_prowler);
	room_goto(1);
}
