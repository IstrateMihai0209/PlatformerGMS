///@desc Item_Check(item)
///@arg item

for(i = 0; i < global.ItemSlots; i++)
{
	if(global.Spot[i] == argument[0])
	{
		return 1;
	}
}
return 0;
	