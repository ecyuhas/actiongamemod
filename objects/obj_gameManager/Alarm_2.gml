/// @description Insert description here
// You can write your code in this editor

	var xPos = random_range(16, room_width - 16);
	green = instance_create_layer(xPos, room_height + 1, "Instances", obj_player2);
	green.launch = true;
	//greenCloud = instance_create_layer(150, 403, "Instances", obj_player2);
	greenSet = false;