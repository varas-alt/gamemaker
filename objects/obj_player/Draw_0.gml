/// @description flashing
var interval = 8
if (alarm[1] % interval) <= interval / 2 {
	gpu_set_fog(false, c_white, 0, 1);
	}
	else {
	gpu_set_fog(true, c_white, 0, 1);
	}
	
	draw_sprite_ext(spr_player_idle, image_index, x, ceil(y), image_xscale, image_yscale, 0, image_blend, image_alpha);
	draw_sprite_ext(spr_gun, 0, x-4, y-sprite_height/2, 1, (image_xscale = 0.3895896) , (image_yscale = 0.4791667), image_blend, image_alpha);

gpu_set_fog(false, c_white, 0, 1);