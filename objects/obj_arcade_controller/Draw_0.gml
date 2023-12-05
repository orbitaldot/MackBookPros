  for(var i = 0; i < 16; i++){
        for(var j = 0; j < 10; j++){
            draw_sprite_ext(spr_mack_book_pros, 0, -16 + i*32, -16 + j*32, .25, .25, 0, c_white, 0.25);
        }  
    }
	
//draw_sprite_ext(spr_zoostalker,0, 210, 30, sc, sc, 0, c_white, .95)
//sc += .0005

draw_set_color(c_red)
draw_set_font(font_msgothic)