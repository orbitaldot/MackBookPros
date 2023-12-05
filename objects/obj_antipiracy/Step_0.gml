if piracy_timer > 0 {
    piracy_timer--;
}else{
    //obj_player.can_move = false;

    tick++;
    if tick < 120 {
        audio_sound_set_track_position(global.music, audio_sound_get_track_position(global.music)-0.001)
    }else if tick == 120{
         audio_stop_sound(global.music);
    }else if tick == 180{ 
        //play_music("audio/pirate.ogg",1);
        audio_sound_pitch(global.music, .88);
    }
}

