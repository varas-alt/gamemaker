/// @description Insert description here
if invincible = false {
	hp -= 1;
	invincible = true;
	alarm [1] = game_get_speed(gamespeed_fps) * 1.5
	scr_ScreenShake(6,60)
}

