if keyboard_check(vk_escape) {
    self.esc_held++
    
    if self.esc_held > 120 and global.paused {
        game_end()
    }
}

if keyboard_check_pressed(vk_escape) {
    if global.paused {
        window_set_cursor(cr_none)
        // display_mouse_set(display_get_width()/2, display_get_height()/2)
        global.paused = false
        if instance_exists(obj_pause){
            instance_destroy(obj_pause)
        }
    }else{
        window_set_cursor(cr_default)
        // display_mouse_set(display_get_width()/2, display_get_height()/2)
        global.paused = true
        instance_create(0, 0, obj_pause)
    }
}


if keyboard_check_pressed(vk_end){
    game_restart()
}

if global.paused {
    self.darkfade = 2
}else {
    if self.darkfade_state == 0 {
        self.darkfade = 0
    }
}

if keyboard_check_pressed(ord("V")) {
	global.spooky_visuals = !global.spooky_visuals;	
}

if keyboard_check_pressed(vk_f11){
    window_set_fullscreen(!window_get_fullscreen())
}

if !debug_mode {
    exit
}



