// In de Step Event van obj_menu_overlay
if (keyboard_check_pressed(vk_f1)) {
    overlay_active = !overlay_active;  // Toggle de overlay (aan/uit)
}

if (keyboard_check_pressed(vk_escape)) {
    overlay_active = false;  // Verberg de overlay bij het indrukken van ESC
}
