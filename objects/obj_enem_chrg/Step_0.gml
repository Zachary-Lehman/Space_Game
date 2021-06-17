if (speed > 0){
	speed -= move_spd*0.01;
	sprite_index = spr_enem_chrg_charging;
}
if (speed <= move_spd*0.1){
	charging = false;	
}
if (global.player_dead == false){
	image_angle = point_direction(x, y, obj_player.x, obj_player.y);
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
