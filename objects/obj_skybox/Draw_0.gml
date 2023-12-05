var floorsize = 2048

life++;

if (obj_player.camera_mode) {
    d3d_draw_ellipsoid(
        obj_player.x - floorsize, obj_player.y - floorsize, -floorsize, 
        obj_player.x + floorsize, obj_player.y + floorsize, floorsize,
        sprite_get_texture(spr_happysky, 0), 1, 1, 12);
        
    // set floor colour to happy colour
    draw_set_colour(c_lime);
	
// fazdyn smog
} else if global.flags[4] {d3d_draw_ellipsoid(
        obj_player.x - floorsize, obj_player.y - floorsize, -floorsize, 
        obj_player.x + floorsize, obj_player.y + floorsize, floorsize,
        sprite_get_texture(spr_skybox, 0), 6, 1, 12);
	draw_set_colour(make_color_rgb(220,220,240));
	
// spooky flesh world
} else if global.flags[2] {
	d3d_draw_ellipsoid(
        obj_player.x - floorsize, obj_player.y - floorsize, -floorsize, 
        obj_player.x + floorsize, obj_player.y + floorsize, floorsize,
        sprite_get_texture(spr_fleshskybox, 0), 6, 1, 12);
    draw_set_colour(c_black);
	
	if life mod 60 == 0 {
		audio_sound_pitch(global.music, random_range(.05,.7));
		audio_sound_set_track_position(global.music, irandom_range(0,audio_sound_length(global.music)));
	}
		
}else{
    d3d_draw_ellipsoid(
        obj_player.x - floorsize, obj_player.y - floorsize, -floorsize, 
        obj_player.x + floorsize, obj_player.y + floorsize, floorsize,
        sprite_get_texture(spr_skybox, 0), 6, 1, 12);
        
    // set floor colour to happy colour
    draw_set_colour(c_green);
}

d3d_set_lighting(false);    
d3d_draw_floor(obj_player.x - floorsize, obj_player.y - floorsize, 0, obj_player.x + floorsize, obj_player.y + floorsize, 0, -1, 1, 1);
draw_set_colour(c_white);
d3d_set_lighting(global.light); 

