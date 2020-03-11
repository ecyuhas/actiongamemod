/// @description Insert description here
// You can write your code in this editor

rand = choose(0, 1, 2);
	if (rand == 0)
	{
		arrayToUse = array0;
	}
	else if (rand == 1)
	{
		arrayToUse = array1;
	}
	else if (rand == 2)
	{
		arrayToUse = array2;
	}
	xPos = arrayToUse[cloudLevelToRepair, 0];
	yPos = arrayToUse[cloudLevelToRepair, 1];
	cloud = instance_create_layer(xPos, yPos, "Instances", obj_clouds);
	cloud.level = cloudLevelToRepair;
	alarmed = false;
	
/*
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
