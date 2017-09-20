//Speed and Gravity
hsp = 0;
vsp = 0
grv = 0.3;
walksp = 4;


//Player State
enum player_state
	{
	idle,
	walk_left,
	walk_right,
	jump,
	fall
	}

CurrentPlayerState = player_state.idle;
