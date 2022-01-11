/// @description Draw The Inventory

if(drawbool == true and OTransition.percent == 0 and not instance_exists(OPrintText))
{
	draw_sprite(SInventory, 0, global.width / 2, global.height / 2);
	
	for(i = 0; i < global.ItemSlots; i++)
	{
		draw_set_font(FPixelLarge);
		if(i >= 0 and i <= 3)
		{
			for(a = 0; a < 4; a++)
			{
				if(global.Spot[i] != -1)
				{
					draw_sprite_ext(global.Spot[i], 0, global.width / 2.4 + (i * xoffset),
					global.height / 2.4, 
					3.75, 3.75, 0, noone, 1);
					if(global.howmany[i] > 10)
					{
						draw_text(global.width / 2.45 + (i * xoffset), global.height / 2.4, global.howmany[i]);
					}
					else
					{
						draw_text(global.width / 2.4 + (i * xoffset), global.height / 2.4, global.howmany[i]);
					}
				}
			}
			if(Position == i)
			{
				draw_sprite(SGUIItem1, 0, global.width / 2.38 + (i * xoffset), global.height / 2.44);
				if(global.Spot[Position] != -1)
				{
					draw_text(global.width / 4.15, global.height / 4.2, "     Press X to drop item");
				}
			}
		}
		
		if(i >= 4 and i <= 7)
		{
			for(b = 0; b < 4; b++) //4 to 8
			{
				if(global.Spot[i] != -1)
				{
					draw_sprite_ext(global.Spot[i], 0, global.width / 2.4 + (i - 4) * xoffset,
					global.height / 2.4 + yoffset, 
					3.75, 3.75, 0, noone, 1);
					if(global.howmany[i] > 10)
					{
						draw_text(global.width / 2.45 + (b * xoffset), global.height / 2.4 + yoffset, global.howmany[i]);
					}
					else
					{
						draw_text(global.width / 2.4 + (b * xoffset), global.height / 2.4 + yoffset, global.howmany[i]);
					}
				}
			}
			if(Position == i)
			{
				draw_sprite(SGUIItem1, 0, global.width / 2.38 + (i - 4) * xoffset,
				global.height / 2.43 + yoffset);
				if(global.Spot[Position] != -1)
				{
					draw_text(global.width / 4.2, global.height / 4.2, "      Press X to drop item");
				}
			}
		}
		
		if(i >= 8 and i <= 11)
		{
			for(c = 0; c < 4; c++) //8 to 12
			{
				if(global.Spot[i] != -1)
				{
					draw_sprite_ext(global.Spot[i], 0, global.width / 2.4 + (i - 8) * xoffset,
					global.height / 2.4 + (yoffset * 2), 
					3.75, 3.75, 0, noone, 1);
					if(global.howmany[i] > 10)
					{
						draw_text(global.width / 2.45 + (c * xoffset), global.height / 2.4 + (2 * yoffset), global.howmany[i]);
					}
					else
					{
						draw_text(global.width / 2.4 + (c * xoffset), global.height / 2.4 + (2 * yoffset), global.howmany[i]);
					}
				}
			}
			if(Position == i)
			{
				draw_sprite(SGUIItem1, 0, global.width / 2.38 + (i - 8) * xoffset,
				global.height / 2.43 + (yoffset * 2)); 
				if(global.Spot[Position] != -1)
				{
					draw_text(global.width / 4.2, global.height / 4.2, "      Press X to drop item");
				}
			}
		}
	}
	
	for(k = 0; k <= 11; k++)
	{
		draw_set_font(FPixelLarge);
		if(global.Spot[k] == SQuestionMarkPotionIcon and Position == k)
		{
			draw_text(global.width / 4.35, global.height / 8.8, "          '? Potion'\n\n   Unpredictable potion that\nmight help you or slow you down");
		}
		if(global.Spot[k] == SHealthPotion and Position == k)
		{
			draw_text(global.width / 4.35, global.height / 7.6, "        'Health Potion'\n\n           Adds 5 HP");
		}
		if(global.Spot[k] == SNoDamage2 and Position == k)
		{
			draw_text(global.width / 4.2, global.height / 7.6, "   'Untouchable Gold Armor'\n\n     No one can touch you");
		}
		if(global.Spot[k] = SWallBreakerDrink and Position == k)
		{
			draw_text(global.width / 4.15, global.height / 7.6, "    'Wall Breaking Drink'\n\nHelps you remove misplaced walls");
		}
	}
}

