if (can_damage == true){
	can_damage = false;
	sprite_index = spr_player_idle;
	image_xscale = 1;
	image_yscale = 1;
}
if (charge >= 1){
	motion_add(image_angle, 20)
	can_damage = true;
	sprite_index = spr_player_charging;
	image_xscale = 1.5
	image_yscale = 1.5;
}
