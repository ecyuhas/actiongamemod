/// @description Insert description here
// You can write your code in this editor


if (position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
if (mouse_check_button_pressed(mb_left))
{
	obj_menu.text = text;
	with (obj_playOptions)
	{
		instance_destroy();
	}
}
}
else
{
	image_index = 0;
}