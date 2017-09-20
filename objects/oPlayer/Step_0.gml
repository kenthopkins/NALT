//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);


switch(CurrentPlayerState)
{
	case player_state.idle:
	scrPlayerIdle();
	break;

	case player_state.walk_left:
	scrPlayerWalkLeft();
	break;

	case player_state.walk_right:
	scrPlayerWalkRight();
	break;

	case player_state.jump:
//	scrPlayerJump();
	break;

	case player_state.fall:
//	scrPlayerFall();
	break;
}


//Calculate Movement


//Horizontal Collision
if (place_meeting(x+hsp,y,oWall01))
{
	while (!place_meeting(x+sign(hsp),y,oWall01))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall01))
{
	while (!place_meeting(x,y+sign(vsp),oWall01))
	{
	y = y + sign(vsp);
	
	}
	vsp = 0;
}
y = y + vsp;

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
