/// @description Insert description here
// You can write your code in this editor

nextButton = instance_create_layer(x, y, "Instances", obj_GUIButton);
nextButton.text = "FINISH";
quitButton = instance_create_layer(x, y, "Instances", obj_GUIButton);
quitButton.text = "QUIT";
quitButton.xx = 320;
quitButton.yy = 500;