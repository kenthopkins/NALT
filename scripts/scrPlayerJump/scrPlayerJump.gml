var vsp = 6
var grv = 0.25;

//Player Jump

sprite_index = sPlayerA;
image_index = 0;

if !place_meeting(x,y+sPlayer.sprite_width/2,oWall01)
{
	y = y + sign(vsp);
	vsp = grav;
	y = y + vsp;
}


else
{
CurrentPlayerState = pstate.idle;
}


/*
if (pleft || pright)
{
	CurrentPlayerState = pstate.walk
}