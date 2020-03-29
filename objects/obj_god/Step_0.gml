/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape))
   {
   if window_get_fullscreen()
      {
      window_set_fullscreen(false);
	  //display_set_gui_size(-1, -1);
      }
   else
      {
      window_set_fullscreen(true);
	  //display_set_gui_size(window_get_width(), window_get_height());
      }
   }
   
if (keyboard_check_pressed(ord("R")))
{
	game_restart();
}