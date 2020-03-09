/// @description Insert description here
// You can write your code in this editor

//draw_set_font(font0);
var ww = window_get_width();


draw_set_halign(fa_left);

	draw_text_transformed_colour(10,-5,global.player1Score,3,3,0,c_red,c_red,c_black,c_black,1);


draw_set_halign(fa_right);

	draw_text_transformed_colour(ww-10,-5,global.player2Score,3,3,0,c_green,c_green,c_black,c_black,1);

