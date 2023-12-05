// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_music(fn,loop) {
	static audio_stream = -1;
	
	if audio_stream != -1 
		audio_destroy_stream(audio_stream)
	
	audio_stream = audio_create_stream(fn);
	global.music = audio_play_sound(audio_stream,0,loop);
	
	audio_sound_gain(global.music,1,0);
	
	return global.music;
}