function scr_MAIN() {
	global.w_size[0] = room_width
	global.w_size[1] = room_height
	global.w_scale = 3
	
	var w = global.w_size[0]*global.w_scale
	var h = global.w_size[1]*global.w_scale
	scr_ADJUST_WINDOW()
	
	//if file_exists("settings.ini") {
	//	ini_open("settings.ini");
	//	var w = ini_read_real("window","width",w);
	//	var h = ini_read_real("window","height",h);
	//	ini_close();
		
	//	window_set_size(w,h);
	//}
	
	window_set_position(display_get_width()/2 - w/2, display_get_height()/2 - h/2)

	scr_FLAGS()
	scr_text_en()

	global.room_h = 80

	global.screen_image = -1

	global.from = 0;

	global.main_menu = true;

	global.current_floor = 0;
	global.increase_floor = false;

	global.paused = false
	global.music = -1;
	
	global.no_ceiling = false;
	
	global.pre_x = -1
	global.pre_y = -1
	global.pre_dir = 90

	global.msg[0] = "ERROR"
	
	global.spooky_visuals = 1;

	global.light = 1;
	obj_main.lighting = global.light;
	
	window_set_caption("MACK BOOK PROS (UNLICENSED COPY)")

	randomize()

	room_goto(room_savefile)
}
