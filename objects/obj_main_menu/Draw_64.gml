d3d_set_lighting(false);

draw_sprite_ext(spr_mack_book_pros, 0, global.w_size[0]/2, 40, .6, .6, dcos(step*3)*4, c_white, 1)

draw_set_font(font_mario);
draw_set_colour(c_red);
draw_set_halign(fa_center);
if (step mod 60 > 30) {
    draw_set_colour(c_black);
    draw_set_alpha(.3);
    draw_text(global.w_size[0]/2 - 2, global.w_size[1] - 22, string_hash_to_newline("PRESS SPACE TO PLAY!"));
    
    draw_set_alpha(1);  
    draw_set_colour(c_red);
    draw_text(global.w_size[0]/2, global.w_size[1] - 24, string_hash_to_newline("PRESS SPACE TO PLAY!"));
}

draw_set_halign(fa_left);
