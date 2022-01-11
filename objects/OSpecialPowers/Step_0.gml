/// @description Active or inactive state

if(not instance_exists(OPlayer))
{
	exit;
}

if(OPlayerStats.CanSunburn == false)
{
	alpha = 0.5;
}
else{alpha = 1;}


if(OPlayerStats.CanFirespin == false)
{
	alphaOne = 0.5;
}
else{alphaOne = 1;}


if(OPlayerStats.angry == false)
{
	alphaTwo = 0.5;
}
else{alphaTwo = 1;}
