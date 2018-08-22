/// @description Insert description here
// You can write your code in this editor
//Ben has a potty mouth when he writes the code.

vsp = vsp + grv;

//Horizontal Collisions
if (place_meeting(x+hsp,y,oWall01))
{
	while (!place_meeting(x+sign(hsp),y,oWall01))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;	
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
	sprite_index = sVarmintWalk;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sVarmint;
	}
	else {
		sprite_index = sVarmintWalk;
	}
}

if (hsp !=0) image_xscale = sign(hsp);