//Alters chance for different things spawning overtime
spawn_enem_chance += .5;
spawn_charge_pickup_chance -= 0.5;
//Generates number from 0 to 100 for calculating probability of different objects spawning
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
		instance_create_depth(x_rand, y_rand, 0, obj_enemy);
	}
}
if (rand_num > spawn_charge_pickup_chance){
	instance_create_depth(random_range(0, room_width), random_range(0, room_height), 0, obj_charge_pickup);
}
//Resets timer
alarm[0] = (room_speed*5)+(room_speed*((rand_num-50)*.05));