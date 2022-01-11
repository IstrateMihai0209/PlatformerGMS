/// @description Draw Bool and Constructor

drawbool = false;

global.ItemSlots = 12;

xoffset = 88.75;
yoffset = 83.35;

for(i = 0; i < global.ItemSlots; i++)
{
	global.Spot[i] = -1;
}

for(coco = 0; coco < global.ItemSlots; coco++)
{
	global.howmany[coco] = 0;
}

Position = 0;

item_pickup(SHealthPotion, OHealthPotion, 9);