/// @description Insert description here
// You can write your code in this editor

if(!flicker)
{
	image_speed = 0;
if (position_meeting(mouse_x, mouse_y, self))
{
	image_index = 1;
	
if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(mouse_x, mouse_y, self))
	{
		if (instance_exists(obj_playOptions))
		{
			with (obj_playOptions)
			{
				instance_destroy();
			}
		}
		else
	{
		var ySpacing = sprite_get_height(spr_playOptions);
		var totalY = y - ySpacing;
		for (var i = 0; i < ds_list_size(menuList); i ++)
		{
			var item = instance_create_layer(x, totalY, "Instances", obj_playOptions);
			item.text = ds_list_find_value(menuList, i);
			totalY -= ySpacing;
		}
	}
	
	}
	else {
		if (!position_meeting(mouse_x, mouse_y, obj_playOptions))
		{
				if (instance_exists(obj_playOptions))
			{
				with (obj_playOptions)
				{
					instance_destroy();
				}
			}
		}
	}
	
	
	
}
}
else
{
	image_index = 0;
}
}
else if (flicker)
{
	image_speed = .5;
}