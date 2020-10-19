lighting_surface = -1;

//Menu
menu_x = x;
menu_y = y;

bottom_h = 60;

//Button
if (room == r_start){
	button[0] = "New game";	
	button[1] = "Exit";
}
else if (room = r_one){
	button[0] = "Countine";
	button[1] = "";
}
buttons = array_length_1d(button);

menu_index = 0;
last_choosed = 0;

draw_set_color(choose(c_black,c_white));