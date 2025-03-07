if (picked_up) {
    image_alpha -= 0.05; // Laat de potion vervagen
    image_xscale += 0.05; // Laat de potion groter worden
    image_yscale += 0.05;

    if (image_alpha <= 0) {
        instance_destroy(); // Verwijder de potion als hij volledig verdwenen is
    }
}
