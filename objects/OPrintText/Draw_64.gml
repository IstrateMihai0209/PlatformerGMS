///@description Draw Everything

draw_set_color(c_black);
draw_rectangle(0, 0, global.width, global.height, false);

draw_set_color(c_white);
draw_set_font(FPixelLarge);

draw_set_valign(fa_center);
draw_set_halign(fa_center);

draw_text(global.width / 2, global.height / 2, text);

draw_set_valign(noone);
draw_set_halign(noone);