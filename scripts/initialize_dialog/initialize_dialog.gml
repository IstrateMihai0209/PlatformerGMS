///@description initialize_dialog();

padding = 450;

#region Outer Box

width = global.width - (padding * 1.3);
height = 200;
xOrigin = padding;
yOrigin = 10;

#endregion

#region Inner Box

border_size = 20;
inner_box_width = width - border_size;
inner_box_height = height - border_size;
inner_box_xOrigin = xOrigin + (border_size / 2);
inner_box_yOrigin = yOrigin + (border_size / 2);

#endregion

#region Dialog Display Properties

text_xOrigin = inner_box_xOrigin + 15;
text_yOrigin = inner_box_yOrigin + 25;

#endregion

#region Text

for(i = 0; i < 100; i++)
{
	dialog[i, 0] = -1;
	dialog[i, 1] = "";
}

#endregion

#region Useful Variables

active = false;
convoDialogCount = 0;
convoIndex = 0;
stringToDisplay = "";
currCharIndex = 1;

#endregion