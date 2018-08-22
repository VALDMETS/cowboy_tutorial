//Gun Arm Coding
x = oPlayer2.x-5;
y = oPlayer2.y-15;

image_angle = point_direction(x,y,mouse_x,mouse_y);

recoil = max(0,recoil - 1);
if (mouse_check_button_released(mb_left)) shotFinished = true;

if (mouse_check_button(mb_left)) && shotFinished == true 
{
	recoil = 4;
	firingdelay = 20;
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}	
	shotFinished = false;
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 250)
{
	image_yscale = -1;
}
else
{
		image_yscale = 1;
}