d3d_set_lighting(false)

draw_set_halign(fa_center)
draw_set_alpha(.4)
draw_set_colour(c_black)
draw_rectangle(0, 0, 640, 480, 0)
draw_text_transformed(global.w_size[0]/2 - 2, 20 + 2, string_hash_to_newline("PAUSED"), 1, 1, 0)
draw_set_alpha(1)
draw_set_font(font_mario)
draw_set_colour(c_white)
draw_text_transformed(global.w_size[0]/2, 20, string_hash_to_newline("PAUSED"), 1, 1, 0)

d3d_set_lighting(true)

