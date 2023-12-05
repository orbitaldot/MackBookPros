draw_set_alpha_test(true)

d3d_draw_wall(x+32, y+32, 0, x + 128, y+32, global.room_h, sprite_get_texture(spr_wall_glass, 0), 3, 1)

// Colums
d3d_draw_wall(x + 32, y + 32, -128, x, y + 32, global.room_h*2, sprite_get_texture(spr_wall, 0), 1, 1)

d3d_draw_wall(x+16, y, -128, x + 32, y+32, global.room_h + 32, sprite_get_texture(spr_wall, 0), 1, 1) 

d3d_draw_wall(x + 128 + 32, y + 32, -128, x  + 128, y + 32, global.room_h + 32, sprite_get_texture(spr_wall, 0), 1, 1)

d3d_draw_wall(x + 128, y+32, -128, x + 128 + 16, y, global.room_h + 32, sprite_get_texture(spr_wall, 0), 1, 1) 

