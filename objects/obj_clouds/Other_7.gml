/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_cloudsDestroy || sprite_index == spr_cloud2Destroy ||
	sprite_index == spr_cloud3Destroy || sprite_index == spr_cloud4Destroy)
	{
		global.arrayCloudLevelNeedCloud[level] = true;
		instance_destroy(self);	
	}