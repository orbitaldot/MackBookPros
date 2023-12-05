var dir = point_direction(x, y, obj_player.x, obj_player.y) + 90;
d3d_draw_wall(
    x + 32*dcos(dir), y - 32*dsin(dir), z, 
    x - 32*dcos(dir), y + 32*dsin(dir), z + 64, 
    sprite_get_texture(sprite_index, image_index), 1, -1)

