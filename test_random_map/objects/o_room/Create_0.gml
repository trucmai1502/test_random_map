/// @desc Process



#macro wall_size 64
delete_blocks = 3;
width = (room_width - delete_blocks* wall_size) div wall_size;
height = (room_height - delete_blocks*wall_size) div wall_size;
width_start = (0 + delete_blocks*wall_size) div wall_size;
height_start = (0 + delete_blocks*wall_size) div wall_size;
steps = 100;

#region Spawn

//Player
player_x = random_range(0 + (delete_blocks -1)*wall_size,room_width - delete_blocks*wall_size);
player_y = choose(0 + (delete_blocks - 1)*wall_size,room_height - (delete_blocks - 0)*wall_size);
instance_create_layer(player_x,player_y,"Player",o_player);

//Key
key_x = random_range(0 + (delete_blocks -1)*wall_size,room_width - delete_blocks*wall_size);
key_y = 0;
if player_y == 0 + (delete_blocks - 1)*wall_size key_y = room_height - (delete_blocks - 0)*wall_size;
else if player_y == room_height - (delete_blocks - 0)*wall_size key_y = 0 + (delete_blocks - 1)*wall_size;
instance_create_layer(key_x,key_y,"Player",o_key);

//Enemy
enemy_x = random_range(0 + (delete_blocks -1)*wall_size,room_width - delete_blocks*wall_size);
enemy_y = choose(0,room_width - (delete_blocks - 2)*wall_size);
instance_create_layer(enemy_x,enemy_y,"Enemy",o_enemy);

#endregion


for ( xx = width_start ; xx < width;xx++){
	for ( yy = height_start; yy < height; yy++){
		instance_create_layer(xx*wall_size,yy*wall_size,"Wall",o_block);	
	}
}

var dir = irandom(3);

function chance(){
	return argument0 >= random(100);	
}

repeat(steps){
	if chance(100){
		dir = irandom(3)*90;
	}
	var object = instance_place(x,y,o_block);
	instance_destroy(object);
	
	x += lengthdir_x(wall_size,dir);
	y += lengthdir_y(wall_size,dir);
}