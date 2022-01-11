/// @description Wake up at signal

if(phase == Faza.Talking and sprite_index == STomasWakeUp)
{
	image_speed = 15;
	stop_player_control();
}

if(sprite_index == STomas)
{
	stop_player_control();
	dialog_show(3);
	if(ODialog.convoIndex == ODialog.convoDialogCount and ODialog.convoIndex != 0)
	{
		the_end = true;
	}
}

endgame_cutscene("Credits:\n\n- ansimuz \n\n- Alex's Assets\n\n- DavitMasia and CodeManuPro\n\n- Anokolisa)\n\n- rvros",
				"- Will Tice (Untied Games)\n\n- edermunizz\n\n- vnitti\n\n- aamatniekss");