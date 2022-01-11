///@description use_item(index)
///@arg index

if(global.Spot[argument[0]] != 1)
{
	switch(global.Spot[argument[0]])
	{
		case SQuestionMarkPotionIcon:
			if(global.spells < global.maxspells)
			{
				if(not instance_exists(OQuestionMarkPotionEffects))
				{
					instance_create_layer(x, y, "Player", OQuestionMarkPotionEffects);
					if(global.howmany[argument[0]] > 1) {global.howmany[argument[0]]--;} 
					else{global.Spot[argument[0]] = -1; global.howmany[argument[0]] = 0;}
				}
			}
			break;
			
		case SNoDamage2:
			if(global.spells < global.maxspells)
			{
				if(not instance_exists(ONoDamage2Effects))
				{
					instance_create_layer(x, y, "Player", ONoDamage2Effects);
					if(global.howmany[argument[0]] > 1) {global.howmany[argument[0]]--;} 
					else{global.Spot[argument[0]] = -1; global.howmany[argument[0]] = 0;}
				
				}
			}
			break;
			
		case SHealthPotion:
			if(global.spells < global.maxspells)
			{
				if(not instance_exists(OHealthPotionEffects))
				{				
					if(OPlayer.hp != OPlayer.maxhp)
					{
						instance_create_layer(x, y, "Player", OHealthPotionEffects);
						if(global.howmany[argument[0]] > 1) {global.howmany[argument[0]]--;} 
						else{global.Spot[argument[0]] = -1; global.howmany[argument[0]] = 0;}
					}
				}
			}
			break;
			
			
		case SWallBreakerDrink:
			if(global.spells < global.maxspells)
			{
				if(not instance_exists(OWallBreakerDrink))
				{
					instance_create_layer(x, y, "Player", OWallBreakerDrinkEffects);
				
					if(global.howmany[argument[0]] > 1) {global.howmany[argument[0]]--;}
					else{global.Spot[argument[0]] = -1; global.howmany[argument[0]] = 0;}	
				}
			}
			break;
	}
}