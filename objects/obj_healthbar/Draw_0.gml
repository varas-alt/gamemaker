// Draw Event voor obj_healthbar

// Positie van de HP-bar ten opzichte van de camera
var camera_x = obj_camera.x;
var camera_y = obj_camera.y;

// Teken de HP-bar afhankelijk van de waarde van de HP
if (hp == 3) {
    draw_sprite(spr_health_bar, 0, camera_x - 240, camera_y - 230); // Volle HP (Frame 0)
} else if (hp == 2) {
    draw_sprite(spr_health_bar, 1, camera_x - 240, camera_y - 230); // 2 HP (Frame 1)
} else if (hp == 1) {
    draw_sprite(spr_health_bar, 2, camera_x - 240, camera_y - 230); // 1 HP (Frame 2)
} else if (hp <= 0) {
    draw_sprite(spr_health_bar, 3, camera_x - 240, camera_y - 230); // Geen HP (Frame 3)
}
