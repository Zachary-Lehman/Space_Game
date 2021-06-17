draw_set_font(fnt_default);
draw_text(150, 32, "SCORE: " + string(global.curr_score));
draw_text(300, 32, "SCORE MULT: " + string(global.score_mult) + "X");
if (global.player_dead == true){
	draw_text(100, room_height/2, "You died. Your score was: " + string(global.curr_score));
	draw_text(100, (room_height/2)+15, "You can press R to Restart or Q to quit to menu.");
}