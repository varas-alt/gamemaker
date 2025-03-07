// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemystate_chase(){
scr_collision();
	if (instance_exists(obj_player)) {
var dist = distance_to_object(obj_player);
var dir = sign(x - obj_player.x)
	

		if (dist > 80) {
		state = ENEMYSTATE.FREE
		}
	
		if (dir < 0){
			image_xscale = 2
		}
		else {
			image_xscale = -2
		}
	
			hsp = -sign(dir) * 1.5
	
		if (dist <= 8){
			state = ENEMYSTATE.ATTACK
		}
	}
	else {
		state = ENEMYSTATE.FREE
	}
	
}