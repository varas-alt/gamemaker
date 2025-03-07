with (obj_player)
{
	if global.score > 300
	{
		
	if (hascontrol)
		{
			hascontrol = false
			scr_SlideTransition(TRANS_MODE.GOTO,Room2)
		}
	}
}