/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
	
	if (mouse_check_button_pressed(mb_left))
	{
		if (obj_menu.text != "Choose...")
		{
			/*nextLevel = room_add();
			room_assign(nextLevel, rm_levelBASE);
			room_set_height(nextLevel, 1020 + (150 + global.roundNumber));
			room_instance_add(nextLevel, 0, 0, obj_gameManager);
			room_instance_add(nextLevel, 80, 1020 + (150 + global.roundNumber) - 150, obj_endCloud);
			room_set_view_enabled(nextLevel, true);
			room_goto(nextLevel);*/
			room_goto_next();
		}
		else 
		{
			obj_menu.flicker = true;
			alarm[0] = .5 * room_speed;
		}
	}
}
else
{
	image_index = 0;
}
