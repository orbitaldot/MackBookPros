
var sound_dist = 400
audio_sound_gain(tv_sound, clamp((sound_dist - distance_to_object(obj_player))/sound_dist, 0.05, 1), 0);

if interacted && switched_on < 5 {
    on = !on
    
    if !on {
        audio_pause_sound(tv_sound);
    }else{
        audio_resume_sound(tv_sound);
    }
    
    // Increase times switched
    switched_on += on
    
    if switched_on >= 5 {
        audio_sound_pitch(tv_sound, .3);
    }
    
    interacted = 0;
}

d3d_light_enable(1, on)

