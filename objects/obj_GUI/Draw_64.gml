/// @description Insert description here
// You can write your code in this editor

//display_set_gui_size(room_width*2, room_height);
//draw_set_font(font0);
var ww = window_get_width();
if (window_get_fullscreen())
{
	//show_debug_message("yeehaw");
	var ww = display_get_width();
}

draw_set_halign(fa_left);

	draw_text_transformed_colour(10,20,global.player1Score,2,2,0,fieryRose,fieryRose,fieryRose,fieryRose,1);


draw_set_halign(fa_right);

	draw_text_transformed_colour(955,20,global.player2Score,2,2,0,fieryRose,fieryRose,fieryRose,fieryRose,1);

//draw_rectangle_colour(0, 0, 160, 480, c_black, c_white, c_black, c_white, false);
draw_line_width_color(480 , 0, 480, 600, 3, fieryRose, fieryRose);

draw_line_width_color(482, 600, 482, player2line, 2, c_black, c_black);

draw_sprite(spr_markers, 1, 495, player2marker);

draw_line_width_color(478, 600, 478, player1line, 2, c_black, c_black);

draw_sprite(spr_markers, 0, 465, player1marker);
//draw_set_halign(fa_center);
//draw_text(480, 10, string(global.player2DistancePercent));