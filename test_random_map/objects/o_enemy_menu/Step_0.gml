/// @desc Enemy

if instance_exists(o_player){
	if (path_speed != 0){
		if(o_player.slow_mode == true){
			path_speed =  1;
		}
		else{
			path_speed = 5;
		}
	}
}

#region Spin

	move_counter++;
	if (move_counter >= 1*room_speed){
		new_dir = irandom_range(50,120);
		direction = new_dir;
		move_counter = 0;
	}
	image_angle += 2;


#endregion

#region BULLET HELL GO BRR BRR
if (instance_exists(o_bullet)){
		if (instance_exists(o_player)){
		if (o_player.slow_mode == true){
			o_bullet.speed = 0;
			bullet_ = false;
		}
		else{
			bullet_ = true;
			 o_bullet.speed = 10;
		}
	}
}

bullet_counter++;
if (bullet_counter >= 1*room_speed){
	if (bullet_ = true){
		with(instance_create_layer(x,y,"Bullet",o_bullet)){
			speed = 10;
			direction = o_enemy_menu.image_angle;
			image_angle = direction;
		}
	}
	bullet_counter = 0;
	
}

#endregion

#region Wrapping map

if (x >= room_width + 1) x = 1;
if (x <= -1) x = room_width - 1;
if (y >= room_height + 1) y = 1;
if (y <= -1) y = room_height -1 ;

#endregion
