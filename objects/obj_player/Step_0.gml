//Adds friction
if (speed > 0){
	speed -= thrust_spd * 0.25;
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
if (instance_number(obj_enemy) > 0){
	if (x > instance_nearest(x, y, obj_enemy).x - 100 and x < instance_nearest(x, y, obj_enemy).x + 100 
	and y > instance_nearest(x, y, obj_enemy).y - 100  and y < instance_nearest(x, y, obj_enemy).y + 100){
		global.prox_score_mult = 2;
	}
	else {
		global.prox_score_mult = 1;	
	}
}

if (health <= 0){
	global.player_dead = true;
	instance_destroy(self);		
}

if (iframed == true){
	sprite_index = spr_player_iframed;	
}
