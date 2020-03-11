/// @description Insert description here
// You can write your code in this editor

// FONT --------------
global.map_string = "0123456789-";
global.font = font_add_sprite_ext(spr_font, global.map_string, false, 0 );
draw_set_font(global.font);

// PLAYERS -----------------
//orange = instance_create_layer(150, 410, "Instances", obj_player1);
orangeSet = false;
//green = instance_create_layer(250, 410, "Instances", obj_player2);
greenSet = false;
camera1 = instance_create_layer(80, room_height - 100, "Instances", obj_camera1);
camera2 = instance_create_layer(80, room_height - 100, "Instances", obj_camera2);
global.player1Score = 1;
global.player2Score =  1;
gui = instance_create_layer(x, y, "Instances", obj_GUI);
cloudManager = instance_create_layer(0, 0, "Instances", obj_cloudManager);

