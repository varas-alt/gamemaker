// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemystate_attack(){
	
var dist = distance_to_object(obj_player);

	
	if (instance_exists(obj_player)) {
		sprite_index = spr_zombie_attack
		image_xscale = -sign(x - obj_player.x) * 2
	}
	
	if dist > 10 state = ENEMYSTATE.CHASE;
}