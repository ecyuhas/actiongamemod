/// @description Insert description here
// You can write your code in this editor


if (y < 320 && !dead)
{
if (keyboard_check(left)) {
		xVel -= xAccel;	
		sprite_index = sprite_left;
	}
if (keyboard_check(right)) {
		xVel += xAccel;
		sprite_index = sprite_right;
	}
}
if (!keyboard_check(left) && !keyboard_check(right))
{
	if (sign(xVel) > 0)
	{
		xVel -= (3/2) *  xAccel;	
	}
	else if (sign(xVel) < 0) {
		xVel += (3/2) * xAccel;	
	}
}

//xVel += (keyboard_check(right) - keyboard_check(left)) * xAccel;
//show_debug_message(xVel);

//xVel = xVel ? max(xVel, -xVelMax) : min(xVel, xVelMax);

xVel = clamp(xVel, -xVelMax, xVelMax);

yVel += grav;

xMove = round(xVel);
yMove = round(yVel);


for (var i = 0; i < abs(xMove); i++) {
	// THIS SPRITE WIDTH MIGHT HAVE TO BE ADJUSTED
	if (x + sign(xVel) >= room_width - spriteWidth/2) {
		audio_play_sound(snd_wall, 1, false);
		xVel *= -1;
	} else if (x + sign(xVel) <= spriteWidth/2) {
		audio_play_sound(snd_wall, 1, false);
		xVel = -xVel;
	}
	x += sign(xVel);
}


var signY = sign(yVel);


while (yMove != 0) {
	var colliding = false;
	var collideWith = noone;
	var collideWithPlayer = noone;
	if (signY >= 0) {
		collideWith = instance_place(x, y + signY, obj_clouds);
		collideWithPlayer = instance_place(x, y + signY, obj_players);
		if (collideWith != noone)
		{
			
			if (!place_meeting(x, y, collideWith)) {
				colliding = true;
				collideWith.collided = true;
				image_index = 0;
			}
		}
		if (collideWithPlayer != noone)
		{
			
			if (!place_meeting(x, y, collideWithPlayer)) {
				colliding = true;
				collideWithPlayer.dead = true;
				image_index = 0;
			}
		}
	}
	
	if (!colliding || dead) {
		image_index = 1;
		
		y += signY;
		yMove -= signY;	
	

	}
	else {
		audio_play_sound(snd_jump, 1, false);
		y = y + signY;
		yVel = jumpVel;
		break;
	}
	
}




//x += xMove;
if (yVel > 1)
{
	image_index = 3;

}
else if (yVel > 0)
{
	image_index = 0;
	jumpVel = -5;
	launch = false;
}

	
if (dead) {
	if (deadOnce)
	{
		audio_play_sound(snd_stomp, 1, false);
		scr_stars(x, y);
		deadOnce = false;
	}
	sprite_index = sprite_death;
}


if (y >= 320 && !launch)
{
	if (!dead)
	{
		audio_play_sound(snd_suicide, 1, false);
		scr_stars(x, y);
	}
	instance_destroy(self);
}

 y = clamp(y, 0, 320);



/*
//Player Step
// decelerating over time
x_vel *= 0.9;

// if nothing else is happening increase y_vel
y_vel += grav;

// add two velocities to rx and ry which is counting pixels from last frame
Rx += x_vel;
Ry += y_vel;

// round for pixels
var toMoveX = round(rx);
var toMoveY = round(ry);

// subtract from previous value. Not relies on collision mask
rx  -= toMoveX;
Ry  -= toMoveY;

//when collliion occurs. Zero out then make the correct changes for the physics. 

