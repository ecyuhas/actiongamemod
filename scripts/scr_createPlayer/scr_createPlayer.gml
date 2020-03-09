playerType = argument[0];

if (playerType == "Orange")
{
	left = ord("A");
	right = ord("D");
	up = ord("W");
	down = ord("S");
	sprite_left = spr_playerOrange_left;
	sprite_right = spr_playerOrange_right;
	space = 0;
}
else if (playerType == "Green")
{
	left = vk_left;
	right = vk_right;
	up = vk_up;
	down = vk_down;
	sprite_left = spr_playerGreen_left;
	sprite_right = spr_playerGreen_right;
	space = 100;
}

xPos = random_range(0, room_width - space);

player = instance_create_layer(xPos + space, 420, "Instances", obj_players);
player.name = playerType;
player.left = left;
player.right = right;
player.up = up;
player.down = down;
player.sprite_left = sprite_left;
player.sprite_right = sprite_right;