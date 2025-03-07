// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_collision(){
//horizontal collision
	if (place_meeting(x+hsp,y,obj_block))
	{
		while (!place_meeting(x+sign(hsp),y,obj_block))
		{ 
			x = x + sign(hsp)
		}
		hsp = 0
	}

	x = x + hsp
//vertical colision
	if (place_meeting(x,y+vsp,obj_block))
	{
		while (!place_meeting(x,y+sign(vsp),obj_block))
		{ 
			y = y + sign(vsp)
		}
		vsp = 0
	}

	y = y + vsp
}