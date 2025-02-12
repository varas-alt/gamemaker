// Collision met het wapen op de grond
if (place_meeting(x, y, obj_player)) {
    // Verwijder het wapen op de grond
    instance_destroy();

    // Maak het wapen en vuur-part aan bij de speler
    var new_gun = instance_create_layer(x, y, "Instances", obj_gun);
    var new_firepart = instance_create_layer(x, y, "Instances", obj_firingpart);

}
