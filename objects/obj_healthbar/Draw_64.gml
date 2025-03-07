
if (hp == 3) {
    draw_sprite(spr_health_bar, 0, 150, 50); // Volle HP (Frame 0)
} else if (hp == 2) {
    draw_sprite(spr_health_bar, 1, 150, 50); // 2 HP (Frame 1)
} else if (hp == 1) {
    draw_sprite(spr_health_bar, 2, 150, 50); // 1 HP (Frame 2)
} else if (hp <= 0) {
    draw_sprite(spr_health_bar, 3, 150, 50); // Geen HP (Frame 3)
}

