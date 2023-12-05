vel = [0,0]
tick = 0;

obj_arcade_controller.start()

control = 1;

pause_music = 0

hv = 0

heaven_timer = -1;

if global.flags[5] == 1 {
	control = 0;
	audio_stop_sound(global.music);
	heaven_timer = 30;
	image_alpha = 0;
}