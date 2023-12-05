var dir = point_direction(x, y, obj_player.x, obj_player.y) + 90;
d3d_draw_wall(
    x + 32*dcos(dir), y - 32*dsin(dir), 0, 
    x - 32*dcos(dir), y + 32*dsin(dir), 64, 
    sprite_get_texture(sprite_index, 0), 1, -1)
    
d3d_draw_block(240, 120, 0, 260, 200, 32, sprite_get_texture(spr_floor,0),1,1)