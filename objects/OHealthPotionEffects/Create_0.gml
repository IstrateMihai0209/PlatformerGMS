/// @description Constructor

cooldown = 400;

width_position = 1000;
height_position = 8;
offset_value = 80;
global.offset += offset_value;
offset = global.offset;
global.spells++;

with(OPlayer)
{
	if(hp < (maxhp - 5)) {hp += 5;}
	else{hp = maxhp;}	
}