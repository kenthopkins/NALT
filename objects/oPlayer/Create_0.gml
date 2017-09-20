//Speed and Gravity
hsp = 0;
vsp = 6
grv = 0.25;
move_speed = 4;
facingleft = false

//Player State
enum pstate
	{
	idle,
	walk,
	jump,
	fall
	}

CurrentPlayerState = pstate.idle;
