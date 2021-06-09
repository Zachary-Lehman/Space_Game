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
if (x != x_rand and y != y_rand){
	move_towards_point(x + x_rand, y + y_rand, move_spd);
}
else{
	alarm[0] = -1;
}
