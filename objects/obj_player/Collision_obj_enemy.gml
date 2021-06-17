if (other.sprite_index != spr_enem_entrance){
	if(can_damage == true){
		instance_destroy(other);
		instance_create_depth(x, y-20, 0, obj_1000);
		global.curr_score += 1000;
		rand_num = random_range(0, 100);
		if (rand_num > (global.health_drop_chance - 100)*-1){
			instance_create_depth(x, y, 0, obj_health_pickup);
		}
	}
	else if(iframed == false){
		health -= 1;
		alarm[0] = iframes;
		iframed = true;
	}
}