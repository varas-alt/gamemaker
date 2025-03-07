/// @description Insert description here
gui_width = display_get_width();  // Verkrijg de breedte van het scherm
gui_height = display_get_height(); // Verkrijg de hoogte van het scherm
gui_margin = 128;

menu_x = gui_width / 2;  // Zet het menu in het midden van het scherm
menu_y = gui_height / 2; // Zet het menu in het midden van het scherm
menu_x_target = gui_width - gui_margin; // Je wilt menu_x_target dichtbij de rand van het scherm houden
menu_speed = 25;
menu_font = font_score;
menu_itemheight = font_get_size(font_score);
menu_spacing = 2.5
menu_comitted = -1;
menu_control = true;

menu[1] = "Start";
menu[0] = "Quit";

menu_items = array_length(menu);  // Gebruik array_length hier in plaats van array_length_1d
menu_cursor = 2;

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items)
menu_open = false;





