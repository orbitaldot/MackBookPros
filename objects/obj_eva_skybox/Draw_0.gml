var floorsize = 2048


d3d_draw_ellipsoid(
    x - floorsize, y - floorsize, -floorsize, 
    x + floorsize, y + floorsize, floorsize,
    sprite_get_texture(spr_starsky, 0), 10, 1, 12);

d3d_set_lighting(false); 
draw_set_colour(make_colour_rgb(255, 80, 80));   
d3d_draw_floor(x- floorsize, y - floorsize, 0, x + floorsize, y + floorsize, 0, -1, 1, 1);
draw_set_colour(c_white);

d3d_draw_floor(x- floorsize*.2, y - floorsize*.2, 1, x + floorsize*.2, y + floorsize*.2, 1, -1, 1, 1);

d3d_set_lighting(global.light); 

// Mack head
var dist= floorsize*3/4;
var size = 1600
d3d_draw_wall(
    x - size/2, y - dist, -size/2,
    x + size/2, y - dist, size/2,
    sprite_get_texture(spr_mack_rei, 0), 1, -1
)

