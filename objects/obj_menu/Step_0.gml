/// @description control menu


if (menu_control)
{
	if(keyboard_check_pressed(vk_up))
	{
		menu_cursor++
		if (menu_cursor >= menu_items) menu_cursor = 0
	}
	
	if(keyboard_check_pressed(vk_down))
	{
		menu_cursor--
		if (menu_cursor < 0) menu_cursor = menu_items-1
	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200
		menu_comitted = menu_cursor
		scr_ScreenShake(4,30)
		menu_control = false
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0)
	if (mouse_y_gui < menu_y && mouse_y_gui > menu_top)
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		if (mouse_check_button_pressed(mb_left))
			{
			menu_x_target = gui_width+200
			menu_comitted = menu_cursor
			scr_ScreenShake(4,30)
			menu_control = false
		}
	}


	
}

