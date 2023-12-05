draw_self();

if heaven_timer >= 30 {
	draw_set_color(c_white);
	draw_set_font(font_8bit);
	draw_set_halign(fa_center);
	draw_text_transformed(150, 30, "HEAVENLY\nASCENSION\nCOMPLETE!", 2,2,0);
}