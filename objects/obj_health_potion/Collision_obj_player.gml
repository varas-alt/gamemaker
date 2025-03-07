if (!picked_up && obj_player.hp < 3) { 
    picked_up = true; // Start de animatie in de Step Event
    obj_player.hp += 1;
	audio_play_sound(sound_heal, 0.5, false)
}
