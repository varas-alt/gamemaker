/// @description Menu

draw_set_font(font_score);
draw_set_halign(fa_middle);  // Zet dit naar fa_middle
draw_set_valign(fa_middle);  // Zet dit naar fa_middle

// Teken menu-items
for (var i = 0; i < menu_items; i++) {
    var offset = 2;
    var txt = menu[i];
    var col = (menu_cursor == i) ? c_white : c_gray; // Verander de kleur afhankelijk van de cursor

    var xx = menu_x;
    var yy = menu_y - (menu_itemheight * (i * menu_spacing)); // Pas hier de factor aan (menu_spacing)
    draw_set_color(c_black);
    
    // Schaduw rondom tekst
    draw_text(xx-offset, yy, txt);
    draw_text(xx+offset, yy, txt);
    draw_text(xx, yy-offset, txt);
    draw_text(xx, yy+offset, txt);
    
    // Hoofdtekst in de geselecteerde kleur
    draw_set_color(col);
    draw_text(xx, yy, txt);
}



if (menu_x < gui_width + 150 && menu_comitted != -1)
{
    switch (menu_comitted)
    {
			case 1: default: scr_SlideTransition(TRANS_MODE.NEXT); break;
			case 0: game_end(); break;
    }
}



