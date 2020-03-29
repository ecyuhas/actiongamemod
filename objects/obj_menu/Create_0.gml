/// @description Insert description here
// You can write your code in this editor

// FONT --------------
global.map_string = "0123456789-";
global.font = font_add_sprite_ext(spr_font, global.map_string, false, 0 );
draw_set_font(global.font);


flicker = false;
image_speed = 0;
image_index = 0;

menuList = ds_list_create();
ds_list_add(menuList, "2 out of 3", "3 out of 5", "Unlimited");
text = "Choose...";

//glitter = $EAE8FF;
color = $000000;
