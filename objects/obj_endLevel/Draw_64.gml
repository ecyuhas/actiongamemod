/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(.75);
draw_set_color($EAE8FF);
draw_rectangle(0, 0, 960, 600, false);

draw_set_halign(fa_middle);
draw_set_valign(fa_top);
draw_set_font(font0);
draw_text_transformed_color(480, 10, "WINNER:", 2, 2, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(480, 65, string(mouse_x) + " " + string(mouse_y), 2, 2, 0, c_black, c_black, c_black, c_black, 1);