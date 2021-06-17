if (global.player_dead == false){
	image_angle = point_direction(x, y, obj_player.x, obj_player.y);
	move_towards_point(obj_player.x, obj_player.y, 7);
}
else{
	move_towards_point(random_range(0, room_width), random_range(0, room_height), 7);
}