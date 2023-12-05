if obj_player.y <= 1200 && !boss_began {
	play_music("audio/hititjoe.ogg",1);
	d3d_light_define_ambient(make_color_rgb(150,100,100));
	d3d_light_define_point(7, 1060, 800, 500, 1000, c_green);
	d3d_light_enable(7,1);
	global.room_h = 1000;
	boss_began = 1;
}