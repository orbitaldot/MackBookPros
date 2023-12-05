depth = -99

life = 0;

z = 0;

sound = play_music("audio/neandertale.ogg",1);
audio_sound_pitch(sound,.7);

if room == room_stairs {
	instance_destroy(id);	
}