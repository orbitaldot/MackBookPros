tick++;

h = 128;

d3d_draw_wall(608,288,1504-608+h,1504,288,h,sprite_get_texture(spr_billy,0),1,1);

var cx = (1504+608)/2
var zz = (dsin(tick)*60+1)/2;
d3d_draw_wall(cx-128,289,	 h + zz + 256, cx+128,289, h + zz, sprite_get_texture(spr_billy_tongue,0),1,1); 
