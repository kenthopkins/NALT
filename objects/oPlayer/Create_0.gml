//Speed and Gravity
hsp = 0;
vsp = 0;
grav = .3
move_speed = 4;
facingleft = false

//Player State
enum pstate
	{
	fall,
	idle,
	jump,
	walk
	}

CurrentPlayerState = pstate.idle;
