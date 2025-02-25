key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)
key_dash = keyboard_check_pressed(ord("Q"))
key_up = keyboard_check(ord("S"))
key_down = keyboard_check(ord("W"))


switch(state){
		case PLAYERSTATE.FREE:
		scr_playerstate_free()
		break
		
		case PLAYERSTATE.DASH:
		scr_playerstate_dash()
		break
}









