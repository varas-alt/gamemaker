with (obj_player)
{
	if global.score > 1200
	{
		
	if (hascontrol)
		{
			hascontrol = false
			scr_SlideTransition(TRANS_MODE.GOTO,Room3)
		}
	}
}