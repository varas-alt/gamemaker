// Zet de doodsanimatie af en stop het
sprite_index = spr_player_death;
image_speed = 1; // Zorg ervoor dat de animatie normaal speelt

scr_ScreenShake(6,60)
image_xscale = 2
image_yscale = 2
depth = 5

// Stel alarm 0 in voor 4 seconden (4 seconden * room_speed)
alarm[0] = room_speed * 3;  // room_speed * 4 betekent 4 seconden
