//Player Walk

//Set Sprite Image
sprite_index = sPlayerWalk;


//Control Left Movement
if (pleft) //&& !place_meeting(x-1,y,oWall01)
{
	image_xscale =+1;
	x -=move_speed
}


//Control Right Movement
if (pright) //&& !place_meeting(x+1,y,oWall01)
{
	image_xscale = -1
	x +=move_speed
}
	else
{
	CurrentPlayerState = pstate.idle;
}

