//Player Idle

sprite_index = sPlayer;

if (pleft || pright) 
{
scrPlayerWalk();
}

else
{
if (pjump)
{
scrPlayerJump();
}
}			
