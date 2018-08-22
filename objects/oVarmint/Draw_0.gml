draw_self();

if(flash > 0)
{
	flash--;
	
	//Calling the actual shader breaks the game for some reason. 
	//It seems to think that "shRed" isn't defined or is invalid which is stupid. Race condition somehow?
	//Will investigate more in the future
	
	//shader_set(shRed);
	draw_self();
	shader_reset();
}

