function scr_playerstate_death() {
    if (hp <= 0) {
        // Vervang de speler door de dode speler
        instance_create_layer(x, y, layer, obj_player_death);  // Creëer de dode speler
        instance_destroy();  // Verwijder de originele speler

        return;  // Stop verdere uitvoering van de death logica
    }

    // Rest van de code voor beweging en botsingen (alleen als de speler leeft)
    if (hsp != 0 && place_meeting(x + hsp, y, obj_block)) {
        while (!place_meeting(x + sign(hsp), y, obj_block)) { 
            x = x + sign(hsp);
        }
        hsp = 0; // Stop horizontale beweging bij botsing
    }

    if (vsp != 0 && place_meeting(x, y + vsp, obj_block)) {
        while (!place_meeting(x, y + sign(vsp), obj_block)) { 
            y = y + sign(vsp);
        }
        vsp = 0; // Stop verticale beweging bij botsing
    }

    x = x + hsp;
    y = y + vsp;
}
