if (hp <= 0) 
{
    // Maak de dode zombie
    with (instance_create_layer(x, y, layer, obj_zombie_dead))
    {
        direction = other.hitfrom;
        hsp = lengthdir_x(3, direction);
        vsp = lengthdir_y(3, direction) - 2;
        if (sign(hsp) != 0) image_xscale = sign(hsp) * 2;
    }

    // **20% kans om een health potion te spawnen**
    if (random(100) < 20) { 
        instance_create_depth(x, y, 0, obj_health_potion);
    }

    // Verhoog score
    global.score += 100;
	
	audio_play_sound(sound_zombie_death, 1, false);


    // Verwijder de zombie
    instance_destroy();  
}
