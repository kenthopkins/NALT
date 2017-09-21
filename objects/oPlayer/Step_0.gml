//Get Player Input
pleft = keyboard_check(vk_left);
pright = keyboard_check(vk_right);
pjump = keyboard_check_pressed(vk_up);

//Detect what state player is in and run appropriate script
switch(CurrentPlayerState)
{
	case pstate.fall:
	scrPlayerFall();
	break;

	case pstate.idle:
	scrPlayerIdle();
	break;

	case pstate.jump:
	scrPlayerJump();
	break;

	case pstate.walk:
	scrPlayerWalk();
	break;
}

//Detect Walking to change state if needed
if (pleft || pright) && place_meeting(x,y+move_speed,oWall01)
{
	CurrentPlayerState = pstate.walk;
}

{

if (pjump) && place_meeting(x,y,oWall01)
	CurrentPlayerState = pstate.jump;
}

if !place_meeting(x,y+1,oWall01) 
{
	CurrentPlayerState = pstate.fall
}


{
//	CurrentPlayerState = pstate.fall;
}