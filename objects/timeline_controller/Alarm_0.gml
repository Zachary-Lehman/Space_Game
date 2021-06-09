spawn_enem_chance -= .01;
spawn_charge_pickup_chance += 0.05;
alarm[0] = room_speed * 5;
rand_num = random_range(0, 100)
if (rand_num > spawn_enem_chance){
	x_rand = random_range(0, room_width);
	y_rand = random_range(0, room_height);
	if (global.player_dead == false){
		while (x_rand <= obj_player.x + 100 and x_rand >= obj_player.x - 100){
			x_rand = random_range(0, room_width);
		}
		while (y_rand <= obj_player.y + 100 and y_rand >= obj_player.y - 100){
			y_rand = random_range(0, room_height);
		}
	}
	instance_create_depth(x_rand, y_rand, 0, obj_enemy);
}
if (rand_num > spawn_charge_pickup_chance){
	instance_create_depth(random_range(0, room_width), irandom_range(0, room_height), 0, obj_charge_pickup);
}