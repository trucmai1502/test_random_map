/// @desc Enemy

if instance_exists(o_player){
	if(o_player.slow_mode == true){
		path_speed =  1;
	}
	
	else if o_player.slow_mode == false path_speed = 5;
}

#region Movement
move_counter++;
if (move_counter >= 1*room_speed){
	new_dir = irandom_range(50,120);
	direction = new_dir;
	move_counter = 0;
}
image_angle += 2;
#endregion

//#region BULLET HELL GO BRR BRR

//bullet_counter++;
//if (bullet_counter >= 0.125*room_speed){
//	with(instance_create_layer(x,y,"Bullet",o_bullet)){
//		direction = o_enemy.image_angle;
//		if (o_player.slow_mode  == true){
//			speed = 3;
//		}
//		else speed = 6;
//		image_angle = direction;
//	}
//	bullet_counter = 0;
//}

//#endregion

#region Wrapping map

if (x >= room_width + 1) x = 1;
if (x <= -1) x = room_width - 1;
if (y >= room_height + 1) y = 1;
if (y <= -1) y = room_height -1 ;

#endregion