if global.paused && paused == 0 {
	sprite_index = spr_funnypicture2;
	paused = 1;
}

if !global.paused {
	sprite_index = spr_funnypicture;	
}