/// @description Insert description here
// You can write your code in this editor


if (collided)
{
	if (cloudStage <= 0)
	{
		sprite_index = spr_cloudsDestroy;
	}
	if (cloudStage == 1)
	{
		sprite_index = spr_cloud2Destroy;
	}if (cloudStage == 2)
	{
		sprite_index = spr_cloud3Destroy;
	}if (cloudStage >= 3)
	{
		sprite_index = spr_cloud4Destroy;
	}
	image_speed = 1;
}

if (image < 3)
{
	image++;
	image_index = image;
}