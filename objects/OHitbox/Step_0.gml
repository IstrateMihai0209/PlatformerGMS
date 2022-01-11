/// @description Destroy imediat

lifetime--;

/*if(image_xscale < 5 and image_xscale > 0)
{
	image_xscale += 0.1;
}
if(image_xscale > -5 and image_xscale < 0)
{
	image_xscale -= 0.1;
}
*///sa tin minte ca arata interesant ptr ca ma gandeam sa fac in asa fel incat
///sunburnu sa creasca in xscale imediat cand e facut

if(lifetime <= 0)
{
	instance_destroy();
}

if(place_meeting(x, y, OWall))
{
	instance_destroy();
}

if(hit_something == false)
{
	audio_play_sound(SwordAttack, 1000, false);
}

x += movement * image_xscale;