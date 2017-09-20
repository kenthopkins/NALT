//Player Idle
swidth = argument0/2
sheight = argument1/2

sprite_index = sPlayer;

if (pleft || pright && place_meeting (x,y+swidth,oPlayer))
{
	scrPlayerWalk(swidth,sheight);
}

else

if (pjump)
{
	scrPlayerJump(swidth,sheight);
}
