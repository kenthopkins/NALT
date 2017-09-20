//Get Player Input
pleft = keyboard_check(vk_left);
pright = keyboard_check(vk_right);
pjump = keyboard_check_pressed(vk_up);

//Detect what state player is in and run appropriate script
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

}


//Detect Walking to change state if needed
if (pleft || pright)
{
	CurrentPlayerState = pstate.walk
}

