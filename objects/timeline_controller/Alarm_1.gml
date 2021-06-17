spawn_enem_chrg_chance += 2;
rand_num = random_range(0, 100)
if(instance_number(obj_enemy) + instance_number(obj_enem_chrg) < 10){
	if (rand_num > (spawn_enem_chance - 100)*-1){
		//Randomly generates x and y values that corespond to somewhere in the room. If these
		//values are within a certain range of the player's they will be rerolled until they are outside
		//of the range.
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
		instance_create_depth(x_rand, y_rand, 0, obj_enem_chrg);
	}
}