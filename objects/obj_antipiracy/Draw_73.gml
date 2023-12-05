if piracy_timer <= 0 {
    d3d_set_lighting(false)
	
	draw_set_alpha(1);
    
    draw_set_colour(c_black);
    draw_rectangle(0, 0, global.w_size[0], global.w_size[1], false);
    
    for(var i = 0; i < 16; i++){
        for(var j = 0; j < 10; j++){
            draw_sprite_ext(spr_mack_book_pros, 0, -16 + i*32, -16 + j*32, .25, .25, 0, c_white, 0.25);
        }  
    }
    
    draw_set_colour(c_red);
    draw_set_halign(fa_center);
    
    
    draw_set_font(font_mario);
    // draw_text(global.w_size[0]/2, 30, string_hash_to_newline("YOU ARE A CRIMINAL"));
    
    if tick > 180 {
        if tick mod 30 < 15 {
            draw_text(global.w_size[0]/2, global.w_size[1]/2, string_hash_to_newline("TURN DEVICE OFF NOW"));
        }
    }
    
    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    draw_set_font(font_mario64);
    
    // draw_text(60, 60, string_hash_to_newline("Playing pirated video games#is a serious crime.##You can not play this title until#you have obtained a legal copy of the game."));
}

