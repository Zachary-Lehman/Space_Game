if (global.player_dead == false){
	if (global.can_shoot_lazer == true){
		instance_create_depth(x, y, 0, obj_lazer);
		alarm[1] = room_speed * 10;		
	}
}