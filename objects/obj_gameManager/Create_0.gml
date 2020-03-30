/// @description Insert description here
// You can write your code in this editor
global.player2DistancePercent = 0;
global.player1DistancePercent = 0;

//show_debug_message("I AM CREATED");
// PLAYERS -----------------
//orange = instance_create_layer(150, 410, "Instances", obj_player1);
orangeSet = false;
//green = instance_create_layer(250, 410, "Instances", obj_player2);
greenSet = false;
camera1 = instance_create_layer(80, room_height - 100, "Instances", obj_camera1);
camera2 = instance_create_layer(80, room_height - 100, "Instances", obj_camera2);

gui = instance_create_layer(x, y, "Instances", obj_GUI);
cloudManager = instance_create_layer(0, 0, "Instances", obj_cloudManager);

// Game Ended?
global.gameEnded = false;


