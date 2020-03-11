/// @description Insert description here
// You can write your code in this editor

	var xPos = random_range(16, room_width - 16);
	orange = instance_create_layer(xPos, room_height + 1, "Instances", obj_player1);
	orange.launch = true;
	//orangeCloud = instance_create_layer(150, 403, "Instances", obj_player1);
	orangeSet = false;