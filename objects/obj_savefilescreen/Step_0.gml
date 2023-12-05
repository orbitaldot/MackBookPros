if state == 0 {
	if choice == 0 {
		if keyboard_check_pressed(ord("D")) {
			choice = 1;	
		}
	}

	if choice == 1 {
		if keyboard_check_pressed(ord("A")) {
			choice = 0;	
		}
	}
	
	if keyboard_check_pressed(vk_space) {
		if funnypicture {
			state = 5;
			scr_fadeto_room(room_funny_picture,40);
			sfx = audio_play_sound(sfx_savefile,0,0);
		}else{
			if choice == 0 {
				state = 1;
				alarm[0] = 60;
				sfx = audio_play_sound(sfx_savefile,0,0);
				tick = 0;
			}else{
				
			}
		}
	}
}

if state == 1 {
	if tick > 25
	if audio_sound_get_track_position(sfx) > .4 {
		if tick > 54 {
			audio_sound_pitch(sfx,1.4);
			audio_sound_set_track_position(sfx, .375);
		} else if tick > 45 {
			audio_sound_pitch(sfx,0.5);
			audio_sound_set_track_position(sfx, .45);
		}else{
			audio_sound_set_track_position(sfx, .35);
		}
	}
}