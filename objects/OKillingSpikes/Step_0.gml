/// @description Kill Player 

if(place_meeting(x, y, OPlayer))
{
	OPlayer.hp = 0;
	audio_play_sound(SNSpikes, 50, false);
}