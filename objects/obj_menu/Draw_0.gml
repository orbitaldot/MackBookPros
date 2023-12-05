draw_set_colour(c_white)
d3d_set_lighting(false)
draw_text_transformed(50, 50, string_hash_to_newline("press [SPACE] to begin"), 3, 3, 0)

if keyboard_check_pressed(vk_space){
    display_mouse_set(display_get_width()/2, display_get_height()/2)
    scr_FLAGS()
    room_goto(room_news)
}

