//Player Walk
swidth = argument0/2
sheight = argument1/2

//Set Sprite Image
sprite_index = sPlayerWalk;


//Control Horizontal Flip if player facing right
if (facingleft == false)
{
	image_xscale =+1; //horizontally flip the sprite to the right
}
else 
{
image_xscale = -1; //otherwise use the default left facing sprite image
}


//Control Left and Right Movement
if (!place_meeting(x,y+swidth,oWall01))
{
	if (pleft)
{
	facingleft = true;
//	x -= move_speed;  //move to the left if player pressing left
}

if (pright) 
{
	facingleft = true;
//	x -= move_speed;//move to the right if player pressing right
}
}
else
{
	CurrentPlayerState = pstate.idle;
}