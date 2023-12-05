if (portrait_sprite != -1){
    //draw_sprite(portrait_sprite, 0, sprite_get_width(portrait_sprite)*1/4, global.w_size[1]);
}

d3d_set_lighting(false);
//draw_set_colour(c_black);
//draw_set_alpha(.5);
//draw_rectangle(left, top, right, bottom, false);
draw_sprite_ext(spr_pix, 0, left, top, abs(left - right) * (360 + box_rotate)/360, abs(top-bottom) * (360 + box_rotate)/360, -box_rotate, c_black, .5);

draw_set_colour(c_white);
draw_set_alpha(1);


draw_set_halign(fa_left);
draw_set_font(font_mario64);

if (state > 0){
    surface_set_target(text_surface);
    draw_clear_alpha(c_white, 0);
    draw_set_alpha(.9);
	

	    for(var i = 0; i < array_length_1d(global.msg); i++){
			if !global.flags[2] // flesh world
				draw_text(4, 6 + i * abs(top-bottom) - scroll_y, string_hash_to_newline(global.msg[i]));
			else if global.flags[2]
				draw_sprite(spr_zootinisperm,0,-5, - 120 + (array_length(global.msg) - i) * abs(top-bottom) - scroll_y);
	    }
	
    
    draw_set_alpha(1)
    if scroll_arrow_tick mod 30 < 15 && !scrolling {
        draw_triangle(
            abs(left - right) - 16, abs(top-bottom) - 8, 
            abs(left - right) - 2, abs(top-bottom) - 8, 
            abs(left - right) - 9, abs(top-bottom) - 2, 
        false);
    }
    surface_reset_target();
    
    draw_surface_ext(text_surface, left, top, (360 + box_rotate)/360, (360 + box_rotate)/360, -box_rotate, c_white, 1);
}

d3d_set_lighting(global.light);

