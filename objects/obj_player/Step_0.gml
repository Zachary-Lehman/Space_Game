if (speed > 0){
	speed -= thrust_spd * 0.1;
}

if (x > room_width){
	x = 0;
}

if (x < 0){
	x = room_width;
}

if (y > room_height){
	y = 0;
}

if (y < 0){
	y = room_height;
}

if (charge > 0 and speed > 0){
	can_damage = true;	
}

image_xscale = (charge * 1.15)  + 1;
image_yscale = (charge * 1.05) + 1;

if (charging == false and charge > 0){
	charge -= 0.02;
}

if (charge > 0){
	sprite_index = spr_player_charging;	
}
else if(alarm[0] == -1){
	sprite_index = spr_player_idle;
	can_charge = true;
}

if (keyboard_check_released(ord("X"))){
	if (can_charge == true){
		motion_add(image_angle, charge * 5)
		charging = false;
		can_charge = false;
		
	}
}
