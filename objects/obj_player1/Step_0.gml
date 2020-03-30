/// @description Insert description here
// You can write your code in this editor


if (dead && once)
{
	//global.player2Score++;
	once = false;
}

event_inherited();

/*
if (instance_exists(obj_player2))
{
if (y > obj_player2)
{
targetx = x - (camera_get_view_width(view_camera[0]) / 2);
targety = y - (camera_get_view_height(view_camera[0]) / 2);
currentx = camera_get_view_x(view_camera[0]);
currenty = camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0], targetx * 0.2 +currentx * 0.8, targety * 0.2 +currenty * 0.8);
}
}
else
{
	
}