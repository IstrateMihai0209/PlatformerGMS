///@description print_text(string1, string2,...)
///@arg string0
///@arg string1
///@arg string2
///@arg string3
///@arg string4
///@arg string5
///@arg string6
///@arg string7
///@arg string8
///@arg string9
///@arg string10
///@arg string11
///@arg string12
///@arg string13
///@arg string14

PrintText[0] = argument[0];

for(k = 1; k <= argument_count; k++)
{
	if(argument_count > k)
	{
		PrintText[k] = argument[k];
	}
}