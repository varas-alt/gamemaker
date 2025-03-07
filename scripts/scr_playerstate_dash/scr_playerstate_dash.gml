// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_playerstate_dash(){
	
//move with dash
vsp = lengthdir_y(dashsp, dashDirection);
hsp = sign(image_xscale) * lengthdir_x(dashsp, dashDirection);
	



	
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

//trial
with (instance_create_depth(x,y,depth+1,obj_trail))
{
	sprite_index = other.sprite_index
	image_blend = c_grey
	image_alpha = 0.7
	image_xscale = other.image_xscale
	image_yscale = other.image_yscale
}

y = y + vsp

//end dash
	dashEnergy -= dashsp
	if (dashEnergy <= 0)
	{
		dashCooldown = 0.5
		vsp = other.vsp / 2.05
		hsp = 0
		state = PLAYERSTATE.FREE
	}

}