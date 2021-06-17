if(can_damage == true){
	instance_destroy(other);
	global.curr_score += 1000;
}
else if(iframed == false){
	health -= 1;
	alarm[0] = iframes;
	iframed = true;
}