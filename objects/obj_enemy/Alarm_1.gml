if (global.player_dead == false){
	instance_create_depth(x, y, 0, obj_lazer);
	alarm[1] = room_speed * 10; 
}