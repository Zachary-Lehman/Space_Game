//Adds friction
if (speed > 0){
	speed -= thrust_spd * 0.4;
}

//Allows for room wrapping
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

//Makes sure player speed cannot go over max_spd
if (can_damage == false){
	if (speed > max_spd){
		speed = max_spd;	
	}
}
if (can_damage == true and charge <= 0){
	can_damage = false;	
	sprite_index = spr_player_idle;
	charge = 0;
	image_xscale = 1;
	image_yscale = 1;
}
else if (can_damage == true and charge > 0){
	charge -= .01;	
}

