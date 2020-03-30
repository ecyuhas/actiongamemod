/// @description Insert description here
// You can write your code in this editor

mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate

if (mousex <= right && mousey >= top && mousex >= left && mousey <= bottom)
{
	subimg = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		global.roundNumber++;
		room_restart();
	}
}
else
{
	subimg = 0;
}