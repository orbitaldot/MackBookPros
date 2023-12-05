//var dir = point_direction(x, y, obj_player.x, obj_player.y) + 90;
var dir = 45;
var width = 128
var height = 256


d3d_draw_wall(
    x + width/2*dcos(dir), y - width/2*dsin(dir), 0, 
    x - width/2*dcos(dir), y + width/2*dsin(dir), height, 
    sprite_get_texture(sprite_index, 0), 1, -1)
    
var dir2 = dir + 90
    d3d_draw_wall(
    x + width/2*dcos(dir2), y - width/2*dsin(dir2), 0, 
    x - width/2*dcos(dir2), y + width/2*dsin(dir2), height, 
    sprite_get_texture(sprite_index, 0), 1, -1)
    
    

