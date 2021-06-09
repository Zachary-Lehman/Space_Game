if(can_damage == true){
	instance_destroy(other);	
}
else{
	global.player_dead = true;
	instance_destroy(self);	
}