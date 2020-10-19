if (game_restart_status == true){
//Effect
	surface = surface_create(1000,1000);
	surface_set_target(surface);
	draw_clear_alpha(c_black,0.8);
	surface_reset_target();
	draw_surface(surface,0,0);
}