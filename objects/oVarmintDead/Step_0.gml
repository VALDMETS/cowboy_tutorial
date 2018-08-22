/// @description Insert description here
// You can write your code in this editor
if (done == 0)
{
	vsp = vsp + grv;

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
		if (vsp > 0)
		{
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x,y+sign(vsp),oWall01))
		{
			y = y + sign(vsp);
		}
		vsp = 0;	
	}


	y = y + vsp;
}