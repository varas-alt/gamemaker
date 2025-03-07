// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemystate_free(){
	
var dist = distance_to_object(obj_player);

	vsp = vsp + grv


	if place_meeting(x+hsp,y,obj_block)
	{
		while (!place_meeting(x+sign(hsp),y,obj_block)) 
		{ 
			x = x + sign(hsp)
		}
		hsp = -hsp
	}


	x = x + hsp

	if (place_meeting(x,y+vsp,obj_block))
	{
		while (!place_meeting(x,y+sign(vsp),obj_block))
		{ 
			y = y + sign(vsp)
		}
		vsp = 0
	}

	y = y + vsp

	if (place_meeting(x, y+1, obj_block))
	{

		image_speed = 1
		if (hsp == 0)
		{
			sprite_index = spr_zombie_idle
		}
		else 
		{
			sprite_index = spr_zombie_walk
		}
	}
	if (hsp != 0) image_xscale = sign(hsp) * 2

	if (dist <= 80) {
	state = ENEMYSTATE.CHASE
	}
		if (!instance_exists(obj_player)) {
			hsp = 0
		}
}

