/// @description Insert description here
// You can write your code in this editor

if (alarmed == false)
{
for (var i = 0; i < array_length_1d(global.arrayCloudLevelNeedCloud) - 1; i++)
{
	if (global.arrayCloudLevelNeedCloud[i] == true)
	{
		cloudLevelToRepair = i;
		alarm[0] = 10;
		//2 * room_speed;
		alarmed = true;
		global.arrayCloudLevelNeedCloud[i] = false;
		break;
	}
}
}