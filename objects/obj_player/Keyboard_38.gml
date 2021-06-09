if(speed < max_spd){
	motion_add(image_angle, thrust_spd);
}

if (keyboard_check(ord("X"))){
	if (can_charge == true){
		speed = 0;
		charging = true;
		if (charge < max_charge){
			charge += 0.05;	
			alarm[0] = room_speed;
		}
	}
}


