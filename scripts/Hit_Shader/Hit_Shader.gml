///@desc Hit_Shader(red, green, blue);
///@arg red
///@arg green
///@arg blue

red = argument0;
green = argument1;
blue = argument2;

draw_self();

if(flash>0)
{
	flash -= 0.05;
	shader_set(SHGreen);
	SHAlpha = shader_get_uniform(SHGreen, "alpha");
	ShRed = shader_get_uniform(SHGreen, "red");
	ShGreen = shader_get_uniform(SHGreen, "green");
	ShBlue = shader_get_uniform(SHGreen, "blue");
	shader_set_uniform_f(ShRed, red);
	shader_set_uniform_f(ShGreen, green);
	shader_set_uniform_f(ShBlue, blue);
	shader_set_uniform_f(SHAlpha, flash);
	draw_self();
	shader_reset();
}


