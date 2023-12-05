for(var i = 0; i < 7; i++){
    d3d_draw_block(x, y + i*16 + 16, i*16, x + 64, y + 32 + i*16, 16 + i*16, sprite_get_texture(spr_floor, 0), 1, 1);
}

