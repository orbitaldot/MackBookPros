if interacted {
    switch(room){
        case room_mack_outside:  
			if global.flags[2] == 0
				scr_fadeto_room(room_bookshop, 30);
			else
				scr_locked_door();
            break;
            
        case room_stairs:
            global.increase_floor = true;
        
            if (x < 200) {
                // audio_play_sound(sfx_door_open, 0, false);
                
                if (random(1) > .2 || global.current_floor < 5) {
                    scr_fadeto_room(room_stairs, 30);
                }else{
                    var newroom = choose(room_dark_0, room_dark_1, room_dark_arcade);
					var newroom = room_dark_arcade
                    scr_fadeto_room(newroom, 30);
                }
            }else{
                scr_locked_door();
            }
            break;
            
        case room_dark_1:
        case room_dark_0:
            if y < 400 {
                scr_fadeto_room(room_stairs, 30);
            }else{
                scr_locked_door();
            }
            break;
            
            
        case room_bookshop:
            if (x < 200){
                scr_fadeto_room(room_stairs, 30);
            }else{
                scr_fadeto_room(room_mack_outside, 30);
				global.flags[3]++;
				
				if global.flags[3] >= 4 {
					global.flags[2] = 1;	
				}
                global.from = 1;
            }
    }
    
    interacted = 0;
}

