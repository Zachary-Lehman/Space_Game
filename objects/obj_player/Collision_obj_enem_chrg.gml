if(can_damage == true){
	instance_destroy(other);
	instance_create_depth(x, y-20, 0, obj_2000);
	global.curr_score += 2000;
}
else if(iframed == false){
	health -= 1;
	alarm[0] = iframes;
	iframed = true;
}