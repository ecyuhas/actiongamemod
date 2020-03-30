/// @description Insert description here
// You can write your code in this editor

// Make end cloud
endCloud = instance_create_layer(80, room_height - ((4000 / global.maxRounds) * global.roundNumber), "Clouds", obj_endCloud);


alarmed = false;
cloudLevelToRepair = -1;
//startCloud = instance_create_layer(0, room_height - 25, "Instances", obj_startCloud);
global.arrayCloudLevelNeedCloud[0] = false;
for (var i = 0; i < 30; i++)
{
	global.arrayCloudLevelNeedCloud[i] = false;
}


verticalGap = 50 + (2*global.roundNumber);
levelsToHave = round((room_height - obj_endCloud.y) / verticalGap);
show_debug_message(string(levelsToHave));
array0[0,0] = 1;
for (var i = 0; i < 2; i++)
{
	for (var j = 0; j < levelsToHave; j++)
	{
		if (i == 0)
		{
			array0[j, i] = 50;
		}
		else 
		{
			array0[j, i] = room_height - (verticalGap * j);
		}
	}
}

array1[0,0] = 1;
for (var i = 0; i < 2; i++)
{
	for (var j = 0; j < levelsToHave; j++)
	{
		if (i == 0)
		{
			array1[j, i] = 100;
		}
		else 
		{
			array1[j, i] = room_height - (verticalGap * j);
		}
	}
}

array2[0,0] = 1;
for (var i = 0; i < 2; i++)
{
	for (var j = 0; j < levelsToHave; j++)
	{
		if (i == 0)
		{
			array2[j, i] = 150;
		}
		else 
		{
			array2[j, i] = room_height - (verticalGap * j);
		}
	}
}

// LET'S PLACE SOME CLOOOOOOOOUUUUUUUUUUUUDS!!!!

for (var c = 0; c < levelsToHave; c++)
{
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
	xPos = arrayToUse[c, 0];
	yPos = arrayToUse[c, 1];
	cloud = instance_create_layer(xPos, yPos, "Clouds", obj_clouds);
	cloud.level = c;
}


 /*
// LET'S PLACE SOME CLOOOOOOOOUUUUUUUUUUUUDS!!!!
cloudsToHave = 4;
cloudsMax = 25;

alarm[0] = room_speed * 4;

// CREATE CLOUD ARRAYS
// ARRAY SECTION 1
global.arraySec1[0, 0] = 1;
for (var i = 0; i < 2; i++)
{
	scr_createRows(global.arraySec1, i, 0, 6, 1);
	scr_createRows(global.arraySec1, i, 6, 12, 2);
	scr_createRows(global.arraySec1, i, 12, 18, 3);
	scr_createRows(global.arraySec1, i, 18, 24, 4);
	scr_createRows(global.arraySec1, i, 24, 30, 5);
	scr_createRows(global.arraySec1, i, 30, 36, 6);
}
show_debug_message(array_height_2d(global.arraySec1));
// ARRAY SECTION 2
global.arraySec2[0, 0] = 1;
for (var i = 0; i < 2; i++)
{
	scr_createRows(global.arraySec2, i, 0, 6, 7);
	scr_createRows(global.arraySec2, i, 6, 12, 8);
	scr_createRows(global.arraySec2, i, 12, 18, 9);
	scr_createRows(global.arraySec2, i, 18, 24, 10);
	scr_createRows(global.arraySec2, i, 24, 30, 11);
	scr_createRows(global.arraySec2, i, 30, 36, 12);
	scr_createRows(global.arraySec2, i, 36, 40, 13);
}
//for (var k = 0; k < array_height_2d(global.arraySec2); k++)
//{
//	for (var l = 0; l < array_length_2d(global.arraySec2, k); l++)
//	{
//		show_debug_message("x: " + string(global.arraySec1[k, l]) + "y: " + string(global.arraySec1[k, l]));
//	}
//}
// ARRAY SECTION 3
global.arraySec3[0, 0] = 1;
for (var i = 0; i < 2; i++)
{
	scr_createRows(global.arraySec3, i, 0, 6, 14);
	scr_createRows(global.arraySec3, i, 6, 12, 15);
	scr_createRows(global.arraySec3, i, 12, 18, 16);
	scr_createRows(global.arraySec3, i, 18, 24, 17);
	scr_createRows(global.arraySec3, i, 24, 30, 18);
	scr_createRows(global.arraySec3, i, 30, 36, 19);
}
//show_debug_message(arraySec1);
//show_debug_message(arraySec2);
global.numberOfClouds = 0;
while (instance_number(obj_clouds) <= cloudsToHave)
{
	scr_createClouds(global.arraySec1,global.arraySec2, global.arraySec3);
}


array1 = argument[0];
array2 = argument[1];
array3 = argument[2];
length = 12;

numberOfClouds = instance_number(obj_clouds);
if (global.numberOfClouds % 3 == 0)
{
	global.arrayToUse = array1;
	length = 35;
	
}
else if (global.numberOfClouds % 2 == 0)
{
	global.arrayToUse = array2;
	length = 41;
	
}
else if (global.numberOfClouds % 1 == 0)
{
	global.arrayToUse = array3;
	length = 35;
	
}

//show_debug_message(global.arrayToUse[0,0]);
global.length = array_height_2d(global.arrayToUse)-1;
//show_debug_message(global.length);
global.randomPos = irandom(global.length);
xPos = global.arrayToUse[global.randomPos, 0];
yPos = global.arrayToUse[global.randomPos, 1];

	cloud = instance_create_layer(xPos, yPos, "Instances", obj_clouds);
	with (cloud)
	{
		xPos = x;
		yPos = y;
		while(!place_empty(x, y, obj_clouds))
		{	
			if (global.randomPos >= global.length)
			{
				global.randomPos = 0;
			}
			else
			{
				global.randomPos++;
			}
			xPos = global.arrayToUse[global.randomPos, 0];
			yPos = global.arrayToUse[global.randomPos, 1];
			x = xPos;
			y = yPos;
			//show_debug_message(global.randomPos);
		}

	}

global.numberOfClouds++;