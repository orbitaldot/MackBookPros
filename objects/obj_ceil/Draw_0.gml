var n = 32



if !place_meeting(x, y, obj_stairs){
    var m = 320
    
    if room == room_bookshop {
        m = 96
    }
    if y < m {
        d3d_draw_block(x, y, global.room_h + n, x + image_xscale*32, y + image_yscale*32, global.room_h*4, sprite_get_texture(spr_wall, 0), image_xscale, -1)
    }
    
    d3d_draw_floor(x+image_xscale*32, y+image_yscale*32, global.room_h + n, x, y, global.room_h + n, sprite_get_texture(sprite, 0), 1, image_yscale)
}

d3d_draw_floor(x+image_xscale*32, y+image_yscale*32, global.room_h*2 + 64, x, y, global.room_h*2 + 64, sprite_get_texture(sprite, 0), 1, image_yscale)

