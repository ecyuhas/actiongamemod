/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_clouds) <= cloudsMax)
{

		scr_createClouds(global.arraySec1, global.arraySec2, global.arraySec3);
if (instance_number(obj_clouds) < 15)
{
	repeat (15 - instance_number(obj_clouds))
	{
		scr_createClouds(global.arraySec1, global.arraySec2, global.arraySec3);
	}
}
	cloudsToHave++;
	alarm[0] = 10;
}
