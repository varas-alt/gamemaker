if (done == 0)
{
	vsp = vsp + grv


	if (place_meeting(x+hsp,y,obj_block))
	{
		while (!place_meeting(x+sign(hsp),y,obj_block))
		{ 
			x = x + sign(hsp)
		}
		hsp = 0
	}

	x = x + hsp

	if (place_meeting(x,y+vsp,obj_block))
	{
		if (vsp > 0)
		{
			 done = 1
			 image_index = 7;
		}
		while (!place_meeting(x,y+sign(vsp),obj_block))
		{ 
			y = y + sign(vsp)
		}
		vsp = 0
	}

	y = y + vsp
}