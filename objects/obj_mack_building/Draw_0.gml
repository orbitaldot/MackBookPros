var buildingheight = 800
var buildingwidth = 256
var buildinglength = 512

var alpha = 1;
with(obj_player){
	var dis = (distance_to_point(obj_mack_building.x + buildingwidth/2, obj_mack_building.y + buildinglength/2))
    alpha = 4 - dis/500;
	
	if dis > 1000 {
		//obj_mack_building.z += 5;	
		if instance_exists(obj_door) {
			instance_destroy(obj_door);	
		}
	}
}

if (alpha < -1 && tick mod 600 = 0 ){
    if (!zoo && global.flags[2]) {
        var ang = irandom_range(0, 360);
        
        var zoo_x = obj_player.x + lengthdir_x(2048, ang)
        var zoo_y = obj_player.y + lengthdir_y(2048, ang)

        instance_create(zoo_x, zoo_y, obj_zoostalker);
    }
}


with(obj_door){
    image_alpha = alpha
}

if !zoo
	audio_sound_gain(global.music, clamp(alpha, 0, 1), 0);

draw_set_alpha(alpha);

// The building
d3d_draw_block(x, y, z, x + buildingwidth, y + buildinglength, z + buildingheight/2, sprite_get_texture(spr_wall, 0), image_yscale, image_yscale); 
d3d_draw_block(x + buildingwidth/4, y, z + buildingheight/2, x + buildingwidth*3/4, y + buildinglength, z + buildingheight, sprite_get_texture(spr_wall, 0), image_yscale, image_yscale); 

// MBP logo
if global.flags[2]
	d3d_draw_wall(x + buildingwidth/4, y + buildinglength + 1, z + 128, x + buildingwidth*3/4, y + buildinglength + 1, z + 256, sprite_get_texture(spr_jesus, 0), 1, -1);
else
	d3d_draw_wall(x + buildingwidth/4, y + buildinglength + 1, z + 128, x + buildingwidth*3/4, y + buildinglength + 1, z + 256, sprite_get_texture(spr_mack_book_pros, 0), 1, -1);

// Missing posters
d3d_draw_wall(x + 20, y - 1, z + 8, x + 84, y - 1, z + 72, sprite_get_texture(spr_posters, 0), -1, -1)

draw_set_alpha(1);

