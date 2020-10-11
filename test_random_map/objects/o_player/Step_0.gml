slow_key = keyboard_check_pressed(ord("Z"));
shift = keyboard_check(vk_shift);
if (shift) walk_spd = 3;
else walk_spd = 7;
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left))*walk_spd;
vsp = (keyboard_check(vk_down) - keyboard_check(vk_up))*walk_spd;
collison();
x += hsp;
y += vsp;

if (slow_key){
	slow_mode = true;
}

if slow_mode == true  slow_mode_counter++;

if (slow_mode_counter >= 5*room_speed && slow_mode == true){
	slow_mode = false;
	slow_mode_counter = 0;
}