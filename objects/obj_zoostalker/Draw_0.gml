var dir = point_direction(x, y, obj_player.x, obj_player.y) + 90;
d3d_draw_wall(
    x + 32*dcos(dir), y - 32*dsin(dir), z, 
    x - 32*dcos(dir), y + 32*dsin(dir), z + 80, 
    sprite_get_texture(sprite_index, image_index), 1, -1)

if room == room_mack_outside {
    x += dsin(dir)
    y += dcos(dir)
}else if room == room_stairs {
    if obj_player.x < 224 && obj_player.y > 200 {
        y += 2;
    }
}

