if (instance_number(obj_enemy) < 100){
	for	(i = 0; i < (100 - instance_number(obj_enemy)); i++){
		instance_create_depth(random_range(0, room_width), irandom_range(0, room_height), 1, obj_star);
	}
}