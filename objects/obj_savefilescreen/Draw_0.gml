tick++;

if state == 1 {
	if tick > 25 {
		draw_set_halign(fa_center);
		draw_set_color(c_red);
		var n = 0;
		draw_set_alpha(1 - .5 * (tick > 54));
		n = ((tick*5) mod 2) * (tick > 45)
		draw_text(150 + n ,70,global.text[? "filescreen_nosave"]);
		draw_set_halign(fa_left);
		if tick > 45 {
			draw_set_font(font_mario64);
			draw_text(2,2,global.text[? "filescreen_error"]);
			draw_set_halign(fa_right);
			draw_text(300,190,global.text[? "filescreen_chumbruh"]);
			draw_set_halign(fa_left);
			
			for(var i = 0; i < min((tick-45)*2,array_length(error_codes)); i++) {
				draw_text(16,16 + i*16,error_codes[i]);
			}
			
			draw_set_font(font_mario);
		}
	} else {
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(150,70,global.text[? "filescreen_loading"]);
		draw_set_halign(fa_left);
	}
} else if state == 2 {
	draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_text(150,70,global.text[? "filescreen_loading"]);
		draw_set_halign(fa_left); 	
} else if state == 0 {
	draw_set_font(font_mario);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	
	if funnypicture {
		draw_text(150,70,global.text[? "filescreen_funny_picture"]);
	}else{
		draw_text(150,70,global.text[? "filescreen_ask_load"]);
	}
	
	draw_set_color(c_white);
	if choice == 0 {
		draw_set_color(c_orange);
		draw_sprite_ext(spr_mack_book_pros,0,75,118,.1,.1,dsin(tick*7)*10,c_white,1);
	}
	draw_text(100, 110, global.text[? "filescreen_yes"]);

	draw_set_color(c_white);
	if choice == 1 {
		draw_set_color(c_orange);
		draw_sprite_ext(spr_mack_book_pros,0,175,118,.1,.1,dsin(tick*7)*10,c_white,1);
	}
	draw_text(200, 110, global.text[? "filescreen_no"]);
	draw_set_halign(fa_left);
}