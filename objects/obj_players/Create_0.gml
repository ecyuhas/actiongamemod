/// @description Insert description here
// You can write your code in this editor


//

grav = 0.2;

jumpVel = -5;
launchVel = -9;
jumpVel = launchVel;
launch = false;
xAccel = .3;
// 0
xVel = 1;
yVel = jumpVel;

xVelMax = 5;

xMove = 0;
yMove = 0;

spriteWidth = 8;

dead = false;
deadOnce = true;

sprite_index = sprite_right;
image_speed = 0;
image_index = 0;

audio_play_sound(snd_revive, 1, false);