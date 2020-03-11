/// @description Insert description here
// You can write your code in this editor
/*
if (instance_exists(obj_player1) && instance_exists(obj_player2))
{
	if (obj_player1.y < obj_player2.y)
	{
		if (obj_player1.y > defaultY)
		{
			y = defaultY;
		}
		else {
			y = obj_player1.y;
		}		
	}
	else
	{
		if (obj_player2.y > defaultY)
		{
			y = defaultY;
		}
		else
		{
			y = obj_player2.y;
		}
	}
}
else if (instance_exists(obj_player1))
{
	if (obj_player1.y > defaultY)
		{
			y = defaultY;
		}
		else {
			y = obj_player1.y;
		}
}
else if (instance_exists(obj_player2))
{
	if (obj_player2.y > defaultY)
		{
			y = defaultY;
		}
		else
		{
			y = obj_player2.y;
		}
	
}
else if (!instance_exists(obj_player1) && !instance_exists(obj_player2))
{
		y = defaultY;
}
*/
if (instance_exists(playerFollowing))
{
	if (playerFollowing.y > defaultY)
		{
			y = defaultY;
		}
		else {
			y = playerFollowing.y;
		}
}
y = clamp(y, 0, defaultY);

targetx = x -  (camera_get_view_width(view_camera[cameraNumber]) / 2);
targety = y - (camera_get_view_height(view_camera[cameraNumber]) / 2);
//currentx = camera_get_view_x(view_camera[0]);
currenty = camera_get_view_y(view_camera[cameraNumber]);

camera_set_view_pos(view_camera[cameraNumber], targetx, targety * 0.2 +currenty * 0.8);
//camera_set_view_pos(view_camera[cameraNumber], (camera_get_view_width(view_camera[cameraNumber]) / 2), targety * 0.2 +currenty * 0.8);
/*
targetx = x - (camera_get_view_width(view_camera[0]) / 2);
targety = y - (camera_get_view_height(view_camera[0]) / 2);
currentx = camera_get_view_x(view_camera[0]);
currenty = camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0], targetx * 0.2 +currentx * 0.8, targety * 0.2 +currenty * 0.8);