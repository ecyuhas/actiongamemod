/// @description Insert description here
// You can write your code in this editor
left = xx - 48;
top = yy - 32;
right = xx + 48;
bottom = yy + 32;
mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate

if (mousex <= right && mousey >= top && mousex >= left && mousey <= bottom)
{
	subimg = 1;
	if (mouse_check_button_pressed(mb_left))
	{
		if (text != "FINISH" && text != "QUIT")
		{
			global.roundNumber++;
			room_restart();
		}
		else if (text == "FINISH")
		{
			room_goto_next();
		}
		else if (text == "QUIT")
		{
			room_goto(0);
		}
	}
}
else
{
	subimg = 0;
}