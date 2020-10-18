bullet_counter = 0;
move_counter = 0;
bullet_ = true;
randomize();
speed_ = 5;
path_speed = choose(0,speed_);
path_start(choose(enemy_path,enemy_path_2,enemy_path_3),path_speed,path_action_reverse,true);
