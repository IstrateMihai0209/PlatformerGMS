///@description dialog_show(dialog_num);
///@arg dialog_num

if(instance_exists(ODialog) and ODialog.convoIndex == 0 and ODialog.convoIndex == ODialog.convoDialogCount)
{
	if(ODialog.active != true)
	{
		ODialog.active = true;
		with(ODialog) {script_execute(argument[0]);}
	}
}