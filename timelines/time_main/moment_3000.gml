if (instance_number(obj_enemy) < 5){
	for	(i = 0; i < (5 - instance_number(obj_enemy)); i++){
		instance_create_depth(random_range(0, room_width), irandom_range(0, room_height), 0, obj_enemy);
	}
}