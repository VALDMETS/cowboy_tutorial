/// @description Insert description here
// You can write your code in this editor
//Ben has a potty mouth when he writes the code.

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Have you heard of a 'variable?'
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if(place_meeting(x,y+1,oWall01)) && (key_jump)
{
	vsp = -7;
}

//Horizontal Collisions
if (place_meeting(x+hsp,y,oWall01))
{
	while (!place_meeting(x+sign(hsp),y,oWall01))
	{
		x = x + sign(hsp);
	}
	hsp = 0;	
}

x = x + hsp;

//Vertical Collisions
if (place_meeting(x,y+vsp,oWall01))
{
	while (!place_meeting(x,y+sign(vsp),oWall01))
	{
		y = y + sign(vsp);
	}
	vsp = 0;	
}


y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall01))
{
	sprite_index = sPlayer2Jump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer2;
	}
	else {
		sprite_index = sPlayer2Walk;
	}
}

if (hsp !=0) image_xscale = sign(hsp);