d3d_draw_block(x - 24, y, 0, x + 24, y + 32, 32, -1, 1, 1);

d3d_draw_block(x - 12, y + 8, 32, x + 12, y + 28, 56, -1, 1, 1);

var texture = -1

if on {
    if switched_on < 5 {
        draw_set_colour(c_aqua);
        texture = sprite_get_texture(spr_tv, image_index);
    }else{
        texture = sprite_get_texture(spr_scary_zoo, 0)
    }
    
    draw_set_alpha(random_range(.92, 1));
}else{
    draw_set_colour(c_black);
}
d3d_draw_wall(x + 10, y + 29, 54, x - 10, y + 29, 34, texture, -1, 1);
draw_set_alpha(1);
draw_set_colour(c_white);

