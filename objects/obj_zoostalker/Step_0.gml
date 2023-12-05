if instance_exists(obj_player) {
	audio_sound_gain(sound, clamp(1 - distance_to_object(obj_player)/2000, 0,1), 0);
	life++;

	if life mod 60 == 0 
		//audio_sound_set_track_position(sound, irandom_range(0,audio_sound_length(sound)));

	if distance_to_object(obj_player) < 100 {
		obj_player.can_move = 0;
		room_goto(room_warning);
	}
}