var n = 0

if !window {
	d3d_draw_block(x, y, n, x + image_xscale*32, y + image_yscale*32, global.room_h*2, sprite_get_texture(spr_wall, 0), image_xscale, -1)	
	d3d_draw_block(x, y, global.room_h*2, x + image_xscale*32, y + image_yscale*32, global.room_h*4, sprite_get_texture(spr_wall, 0), image_xscale, -1)
}else{
	d3d_draw_block(x, y, 0, x + image_xscale * 16, y + image_yscale*32, 32, sprite_get_texture(spr_wall, 0), image_xscale, -1);
	d3d_draw_block(x, y, 58, x + image_xscale * 16, y + image_yscale*32, 128, sprite_get_texture(spr_wall, 0), image_xscale, -1);
}

