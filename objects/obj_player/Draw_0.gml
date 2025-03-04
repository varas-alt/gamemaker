/// @description flashing
var interval = 8
if (alarm[1] % interval) <= interval / 2 {
	gpu_set_fog(false, c_white, 0, 1);
	}
	else {
	gpu_set_fog(true, c_white, 0, 1);
	}
	draw_self();
		
gpu_set_fog(false, c_white, 0, 1);