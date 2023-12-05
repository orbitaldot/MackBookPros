tick++

if !place_meeting(x,y+vel[1],obj_mackbros_block) and y + vel[1] < 200 {
	vel[1] += .4
}else{
	vel[1] = 0
}

if tick mod 2 == 0 {
	var v = vel[0]
	if !position_meeting(x + hv * 8, y - sprite_height/2, obj_mackbros_block) {
		with(obj_arcade_levelstuff) {
			x -= v	
		}
	}else{
		vel[0] = 0	
	}
	y += vel[1]
}

if sign(vel[0]) != 0 {
	hv = sign(vel[0])	
}

if y < -40 && global.flags[5] == 0 {
	control = 0;
	image_alpha = 0;
	audio_stop_sound(global.music);
	vel[0] = 0;
	heaven_timer = 0;
	global.flags[5] = 1;
}

heaven_timer += (heaven_timer >= 0);

if pause_music && !audio_is_playing(sfx_arcade_jump) {
	audio_resume_sound(global.music)
	pause_music = 0
}

if !control
	exit
	
if keyboard_check(ord("A")) {
	vel[0] = max(vel[0]-.2,-4)
	image_xscale = -1	
}else if keyboard_check(ord("D")) {
	vel[0] = min(vel[0]+.2,3)
	image_xscale = 1	
}else{
	vel[0] = lerp(vel[0], 0, .4)
}

if keyboard_check_pressed(ord("W")) {
	pause_music = 1
	audio_play_sound(sfx_arcade_jump,0,0);
	audio_pause_sound(global.music)
	vel[1] = -6;	
}