if z > 0 {
    d3d_draw_wall(
                   x + 31, y + 40, z + sprite_get_height(spr_door)*1.65,
                   x + 31, y - 8, z,  
                   sprite_get_texture(spr_door, 0), 1, 1)
}else{
    d3d_draw_wall(
                   x + 31, y + 36, z + sprite_get_height(spr_door)*1.25,
                   x + 31, y - 4, z,  
                   sprite_get_texture(spr_door, 0), 1, 1)
}

