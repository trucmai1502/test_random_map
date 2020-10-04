/// @desc Process


#macro wall_size 64
delete_blocks = 3;
width = (room_width - delete_blocks* wall_size) div wall_size;
height = (room_height - delete_blocks*wall_size) div wall_size;
width_start = (0 + delete_blocks*wall_size) div wall_size;
height_start = (0 + delete_blocks*wall_size) div wall_size;
steps = 1000;

player_x = 



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