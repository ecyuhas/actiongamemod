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
camera1 = instance_create_layer(80, 120, "Instances", obj_camera1);
camera2 = instance_create_layer(80, 120, "Instances", obj_camera2);
global.player1Score = 1;
global.player2Score =  1;
gui = instance_create_layer(x, y, "Instances", obj_GUI);

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
