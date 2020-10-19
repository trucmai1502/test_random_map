if (game_restart_status = true){
	draw_set_font(menu_font);
	draw_set_color(c_dkgray);
	draw_text(room_width/2 , room_height/2 - 40,"Score:  " + string(o_data_save.death));
	instance_create_layer(room_width/2,room_height/2,"Data",o_menu);
	view_visible[0] = false;
	view_visible[1] = false;
}