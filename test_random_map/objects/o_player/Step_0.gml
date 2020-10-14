slow_key = keyboard_check_pressed(ord("Z"));
shift = keyboard_check(vk_shift);
if (shift){
	sprite_index = s_palyer_hitbox;
	walk_spd = 7;
}
else{
	sprite_index = s_palyer;
	walk_spd = 7;
}
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left))*walk_spd;
vsp = (keyboard_check(vk_down) - keyboard_check(vk_up))*walk_spd;
collison();
x += hsp;
y += vsp;

if (slow_key && slow_mode_status == false){
	slow_mode = true;
}

if slow_mode == true  slow_mode_counter++;

if (slow_mode_counter >= time_*room_speed && slow_mode == true){
	slow_mode_status = true;
	slow_mode = false;
	slow_mode_counter = 0;
}

if slow_mode_status == true slow_mode_wait++;
if slow_mode_wait >= 2*room_speed && slow_mode_status == true{
	slow_mode_status = false;
	slow_mode_wait = 0;
}
