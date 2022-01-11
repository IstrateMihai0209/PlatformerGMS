/// @description Deseneaza Puterile

special_powers_alpha_down();

if(ShowInv == true)
{	
	for(i = 0; i <= 2; i++)
	{
		draw_sprite(SGUIItem, 0, global.width / 2 + offset * i, global.height / 1.1);
	}
	
	/*for(j = 0; j <= 1; j++)
	{
		draw_sprite(SGUIItem, 0, global.width / 1.9 + offset * j, global.height / 1.2);
	}*/
	
	draw_sprite_ext(global.inventory[0], 0, global.width / 2 + offset * 0, global.height / 1.1, 1, 1, 0, noone, alpha);
	draw_sprite_ext(global.inventory[1], 0, global.width / 2 + offset * 1, global.height / 1.1, 1, 1, 0, noone, alphaOne);
	draw_sprite_ext(global.inventory[2], 0, global.width / 2 + offset * 2, global.height / 1.1, 1, 1, 0, noone, alphaTwo);
	draw_set_font(FPixelMedium);
	draw_text(global.width / 2.02 + offset * 0, global.height / 1.05, "M");
	draw_text(global.width / 2.02 + offset * 1, global.height / 1.05, "N");
	draw_text(global.width / 2.02 + offset * 2, global.height / 1.05, "J");
	
	//draw_sprite_ext(global.inventory[3], 0, global.width / 1.9, global.height / 1.2, 3.75, 3.75, 0, noone, alphaThree);
	draw_set_font(FPixel);
}

draw_set_alpha(1);