// Step Event voor obj_healthbar

// Controleer of de speler nog bestaat
if (instance_exists(obj_player)) {
    hp = obj_player.hp;  // Haal de HP van de speler op
} else {
    hp = 0;  // Zet de HP op 0 als de speler niet meer bestaat
}
