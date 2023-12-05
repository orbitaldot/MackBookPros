var n = 0

var sprite = spr_books
if room == room_stairs {
    sprite = spr_books_2
}

var h = global.room_h + 24
if room == room_babel {
	h = 9000;	
}

d3d_draw_block(
    x, y, n, x + image_xscale*32, 
    y + image_yscale*32, h, 
    
    sprite_get_texture(sprite, 0), image_xscale * 4, -h/90)



