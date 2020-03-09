/// @description Insert description here
// You can write your code in this editor



if (cloudStage == 0)
{
	sprite_index = spr_cloud2;
	image_index = 0;
	alarm[0] = 10;
	alarm[1] = 3 * room_speed;
}
if (cloudStage == 1)
{
	sprite_index = spr_cloud3;
	image_index = 0;
	alarm[0] = 10;
	alarm[1] = 3 * room_speed;
}
if (cloudStage == 2)
{
	sprite_index = spr_cloud4;
	image_index = 0;
	alarm[0] = 10;
}
cloudStage++;