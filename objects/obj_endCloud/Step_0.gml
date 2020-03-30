/// @description Insert description here
// You can write your code in this editor

if (collided)
{
	global.gameEnded = true;
	winner = instance_nearest(x, y, obj_players);
	if (once)
	{
		if (winner.playerType == "Orange")
		{
			global.player1Score++;
		}
		if (winner.playerType == "Green")
		{
			global.player2Score++;
		}
		instance_create_layer(0, 0, "Instances", obj_endLevel);
		once = false;
	}
}