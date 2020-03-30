/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player1) && !orangeSet)
{
	//show_debug_message("Here");
	orangeSet = true;
	alarm[1] = room_speed * 2;
	//global.player1Score--;
	
}

if (!instance_exists(obj_player2) && !greenSet)
{
	//show_debug_message("Here2");
	greenSet = true;
	alarm[2] = room_speed * 2;
	//global.player2Score--;
}
if (instance_exists(obj_player2))
{
	global.player2DistancePercent = ((4000 - obj_player2.y) / (4000 - obj_endCloud.y)) * 600;
}
else
{
	global.player2DistancePercent = 0;
}
if (instance_exists(obj_player1))
{
	global.player1DistancePercent = ((4000 - obj_player1.y) / (4000 - obj_endCloud.y)) * 600;
}
else
{
	global.player1DistancePercent = 0;
}
/*
var p0 = instance_find(obj_players,0); 
if (p0 != noone && p0.dead == true) { // check that we found something and if so, that they are gone
	p0.y -= 50; 
	p0.dead = false;
}

var p1 = instance_find(obj_players,1); 
if (p1 != noone && p1.dead == true) { // check that we found something and if so, that they are gone
	p1.y -= 50;
	p1.dead = false;
}