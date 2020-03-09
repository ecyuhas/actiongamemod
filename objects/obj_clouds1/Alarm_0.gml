/// @description Insert description here
// You can write your code in this editor

if (!collided)
{
if (cloudStage == 0)
{
	image = 0;
	image_index = image;
	sprite_index = spr_clouds;
	alarm[0] = stateTime;
}
if (cloudStage == 1)
{
	image = 0;
	image_index = image;
	sprite_index = spr_cloud2;
	alarm[0] = stateTime;
}
if (cloudStage == 2)
{
	image = 0;
	image_index = image;
	sprite_index = spr_cloud3;
	alarm[0] = stateTime;
}
if (cloudStage == 3)
{
	image = 0;
	image_index = image;
	sprite_index = spr_cloud4;
}
cloudStage++;
}
