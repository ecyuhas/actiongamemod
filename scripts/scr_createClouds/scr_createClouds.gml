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