rand_num = random_range(0, 100);
if (rand_num > (global.health_drop_chance - 100)*-1){
		instance_create_depth(x, y, 0, obj_health_pickup);
}