function scr_playerstate_free(){
var move = key_right - key_left	

hsp = move * walksp
vsp = vsp + grv

//paste (place_meeting(x, y+1, obj_block)) &&  naast key_jump om normale jump weer toe te voegen

if (place_meeting(x, y+1, obj_block) && dashCooldown <= 0)
{ 
	canDash = true
}
//zet dit in place meeting voor normale jump 
if (key_jump)
{
	vsp = -8;
}
	
	
if (canDash && key_dash)
{ 
	if (image_xscale > 0){
		dashDirection = point_direction(0, 0, key_right - key_left, key_up - key_down)}
	else {
		dashDirection = point_direction(0, 0, key_left - key_right, key_up - key_down)}
	canDash = false
	dashsp = dashDistance / dashTime
	dashEnergy = dashDistance
	state = PLAYERSTATE.DASH
}
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
if (hsp != 0) image_xscale = sign(hsp) * 2

//dash cooldowns
if dashCooldown > 0
	{
		canDash = false
		dashCooldown -= 1/60
	}
if dashCooldown <= 0 && (place_meeting(x,y + 1, obj_block))
		{
		canDash = true
		}
		
		

}

