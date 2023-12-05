if global.increase_floor {
    global.current_floor++;
    global.increase_floor = 0;
}

switch(room){
    case room_mack_outside:
        if global.from == 1 {
            obj_player.direction = 270;
            obj_player.x = 480;
            obj_player.y = 576;
        }
    
        d3d_light_define_ambient(make_color_rgb(200, 200, 200)); 
        
        if global.main_menu {
            instance_create(0, 0, obj_main_menu);
            play_music("audio/outside2.ogg",1);
			
        }else{
            obj_player.camera_mode = false;
            audio_sound_set_track_position(global.music, 0);
            
        }  
		
			
		if global.flags[2] {
			play_music("audio/stairs.ogg",1);
			audio_sound_pitch(global.music,.2);	
		}
        break;

    case room_bookshop:
		play_music("audio/outside2.ogg",1);
        d3d_light_define_ambient(make_color_rgb(220, 190, 190));
        
        scr_3d_decal(248, 543, 88, 200, 543, 32, spr_president);
		scr_3d_decal(248 + 128, 543, 88, 200 + 128, 543, 32, spr_gotti);
        
        audio_sound_gain(global.music, .75, 500);
        global.light = 1;
        obj_main.lighting = 1;
    
        break;
    
    // The stairs
    case room_stairs:
        if global.current_floor == 0 {
            global.current_floor = 1;    
        }
    
        audio_stop_sound(global.music);
        /*if global.music_id != 2 {
            global.music = audio_play_sound(mus_stairs, 999, true);
            global.music_id = 2;
        }*/
        
        // Bookshelves?
        if random(1) < .4 {
            with(instance_create(368, 128, obj_bookshelves)){
                image_yscale = 4;
            }
            
            with(instance_create(368, 336, obj_bookshelves)){
                image_yscale = 4;
            }
        }
        
        // Zoo spooky?
        if random(1) < .05 {
        }
        
        
        break;
        
    // The darkness rooms
    case room_dark_1:
        // 0 = door on left side, 1 = door on right side
        var door_side = (random(1) > .5);
        
        if door_side {
            instance_create(448, 176, obj_door_right);
        }else{
            instance_create(32, 176, obj_door_left);
        }
        
        break;
}

global.from = 0;

/* */
/*  */
