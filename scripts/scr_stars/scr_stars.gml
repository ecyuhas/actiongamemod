xPos = argument[0];
yPos = argument[1];

for (var i = 0; i < 7; i++)
{
	star = instance_create_layer(xPos, yPos, "Instances", obj_star);
	star.direction = i * 50;
}