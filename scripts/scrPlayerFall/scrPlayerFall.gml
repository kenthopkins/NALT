//Player Fall
sprite_index = sPlayerA;
image_index = 1;

//Declare local variables
var terminal = 4
var velocity = 0

//While not on the floor or platform start falling
if !place_meeting(x,y+2,oWall01)
{
	for (velocity = 0; velocity < terminal; velocity += grav)
	{
		y += velocity //Fall faster and faster until terminal velocity is reached or hit the floor.
	}
}

	CurrentPlayerState = pstate.idle
//Otherwise change player's state back to idle after they hit the floor.



