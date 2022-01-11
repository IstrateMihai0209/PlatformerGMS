///@desc Item_Drop(item)
///@arg item

for(i = 0; i < global.ItemSlots; i++)
{
	if(global.Spot[i] == argument[0])
	{
		switch(global.Spot[i])
		{
			case SQuestionMarkPotionIcon:
				repeat(global.howmany[i])
				{
					instance_create_layer(OPlayer.x, OPlayer.y, "Collectables", OQuestionMarkPotion);
				}
				break;
			case SNoDamage2:
				repeat(global.howmany[i])
				{
					instance_create_layer(OPlayer.x, OPlayer.y, "Collectables", ONoDamage2Collectable);
				}
				break;
			case SHealthPotion:
				repeat(global.howmany[i])
				{
					instance_create_layer(OPlayer.x, OPlayer.y, "Collectables", OHealthPotion);
				}
				break;
		}
		global.Spot[i] = -1;
		global.howmany[i] = 0;
		return 1;
	}
}
return 0;