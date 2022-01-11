/// @description Using Special Powers

if(CanFirespin == false)
{
	firespin_cooldown--;
}

if(CanSunburn == false)
{
	sunburn_cooldown--;
}

if(angry == true and angry_cooldown == max_angry)
{
	angry_cooldown--;
}

if(angry_cooldown <= 0 and OPlayer.state != "attack one")
{
	angry_cooldown = max_angry;
	angry = true;
}

if(angry_cooldown < max_angry and angry == false)
{
	CanGetAngry = false;
	angry_cooldown--;
}else{CanGetAngry = true;}

if(firespin_cooldown <= 0)
{
	CanFirespin = true;
	firespin_cooldown = max_firespin;
}

if(sunburn_cooldown <= 0)
{
	CanSunburn = true;
	sunburn_cooldown = max_sunburn;
}