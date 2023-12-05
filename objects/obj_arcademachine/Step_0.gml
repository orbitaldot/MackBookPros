if interacted {
	obj_player.can_move = 0
	scr_fadeto_room(games[game], 60)
		
	audio_sound_gain(global.music, 0, 1000)
	interacted = 0
	
	global.pre_x = obj_player.x
	global.pre_y = obj_player.y
	global.pre_dir = obj_player.direction
}