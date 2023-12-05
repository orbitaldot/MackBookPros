for(var i = -10; i < 10; i++){
    var xx = obj_player.x - (obj_player.x mod sprite_width) + i * sprite_width
	
	if global.flags[2] == 1 && !global.main_menu
		d3d_draw_floor(xx, y, 1, xx + sprite_width, y + sprite_width, 1, sprite_get_texture(spr_highway_to_hell, 0), 1, 1);
	else
		d3d_draw_floor(xx, y, 1, xx + sprite_width, y + sprite_width, 1, sprite_get_texture(spr_road, 0), 1, 1);
}

