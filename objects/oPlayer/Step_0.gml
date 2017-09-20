//Get Player Input
pleft = keyboard_check(vk_left);
pright = keyboard_check(vk_right);
pjump = keyboard_check_pressed(vk_up);


switch(CurrentPlayerState)
{
	case pstate.idle:
	scrPlayerIdle();
	break;

	case pstate.walk:
	scrPlayerWalk();
	break;

	case pstate.jump:
	scrPlayerJump();
	break;

	case pstate.fall:
	scrPlayerFall();
	break;
}


//Calculate Movement


//Detect Walking to change state if needed
if (pleft || pright)
{
	CurrentPlayerState = pstate.walk
	//if (sign(hsp) < 0)
	//{facing_left = true}
}


//Detect Jumping to change the state to pjump if needed
/*if (!place_meeting(x,y-sPlayer/2,oWall01)) //If nothing above the player
{
	CurrentPlayerState = pstate.jump;	//Then change state to pjump
}

if (pjump)
{
	scrPlayerJump();
}

*/
/*/Animation
if (!place_meeting (x, y + 1, oWall01))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}
	
/*if keyboard_check(vk_left) sprite_index =  sPlayerL ; image_speed = 1
if keyboard_check(vk_right) sprite_index =  sPlayerR ; image_speed = 1
if keyboard_check(vk_up) sprite_index =  sPlayerU
else 
	{
;	sprite_index = sPlayer
	}
