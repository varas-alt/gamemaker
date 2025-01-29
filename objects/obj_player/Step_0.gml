key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)

var move = key_right - key_left	

hsp = move * walksp
vsp = vsp + grv

if (place_meeting(x, y+1, obj_block)) && (key_jump)
{ 
	vsp = -4;
}

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
	while (!place_meeting(x,y+sign(vsp),obj_block))
	{ 
		y = y + sign(vsp)
	}
	vsp = 0
}

y = y + vsp

if (!place_meeting(x, y+1, obj_block))
{ 
	if (sign(vsp) < 0) sprite_index = spr_player_jump
	else sprite_index = spr_player_falling
}
else
{ 
	image_speed = 1
	if (hsp == 0)
	{
		sprite_index = spr_player_idle
	}
	else 
	{
		sprite_index = spr_player_walk
	}
}
if (hsp != 0) image_xscale = sign(hsp)