///@desc Item_Pickup(item_icon, item, howmuch)
///@arg item_icon
///@arg item
///@arg howmuch

for(i = 0; i < global.ItemSlots; i++)
{	
	if(global.Spot[i] == argument[0])
	{
		global.Spot[i] = argument[0];
		global.howmany[i] += argument[2];
		return 1;
	}
	else
	{
		if(global.Spot[i] == -1)
		{
			global.Spot[i] = argument[0];
			global.howmany[i] = argument[2];
			return 1;
		}
	}
}
return 0;