//Player Jump
swidth = argument0/2
sheight = argument1/2

sprite_index = sPlayerA;
image_index = 0;

if !place_meeting(x,sheight,oWall01)
{
	y = y + sign(vsp);
	vsp = grav;
	y = y + vsp;
}

else
{
CurrentPlayerState = pstate.idle;
}