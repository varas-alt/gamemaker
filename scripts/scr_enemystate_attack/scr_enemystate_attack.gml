// Functie die wordt aangeroepen wanneer de vijand in de aanvalstoestand is
function scr_enemystate_attack() {

	var dist = distance_to_object(obj_player);  // Bepaal de afstand tot de speler

    if (instance_exists(obj_player)) {  // Als de speler bestaat
		sprite_index = spr_zombie_attack;
        image_xscale = -sign(x - obj_player.x) * 2;  // Draai naar links of rechts afhankelijk van de speler\

        // Als de speler buiten bereik is, ga naar de chase state
        if (dist > 8) {
            state = ENEMYSTATE.CHASE;
		}
	
        
    } else {
        sprite_index = spr_zombie_idle;  // Als de speler niet bestaat, toon de idle animatie
        image_speed = 1;  // Zet image_speed op 1 voor idle animatie snelheid
    }
}
