//Player Walk

//Set Sprite Image
sprite_index = sPlayerWalk;

//Control Horizontal Flip
if (facingleft == false)
{
	image_xscale =+1; //horizontally flip the sprite
}
else 
{
image_xscale = -1;
}


//Control Left and Right Movement
if (pleft) 
{
	facingleft = false;
	x -= move_speed;
}

				if (pright) 
					{
					facingleft = true;
					x += move_speed;
					}

/*						if (pjump)
							{
							y -= vsp
							}
*/
else
{
CurrentPlayerState = pstate.idle
}

