if (hascontrol) 
{
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
key_dash = keyboard_check_pressed(ord("Q"))
key_up = keyboard_check(ord("S"))
key_down = keyboard_check(ord("W"))
}
else
{
	key_right = 0
	key_left = 0
	key_jump = 0
	key_dash = 0
}

switch(state){
		case PLAYERSTATE.FREE:
		scr_playerstate_free()
		break
		
		case PLAYERSTATE.DASH:
		scr_playerstate_dash()
		break
}









