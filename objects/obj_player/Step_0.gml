tick++;

move_vec[0] = 0
move_vec[1] = 0

if global.paused or global.screen_image != -1 {
    exit;
}

if interact_cooldown > 0 {
    interact_cooldown--;
}

audio_listener_position(x, y, self.z)
audio_listener_orientation(xnext, ynext, znext, 0, 0, -1);

var v = 4;

if can_move {
    var mupdown = 0
    if keyboard_check(ord("W")){
        self.move_vec[0] = lengthdir_x(v, direction)
        self.move_vec[1] = lengthdir_y(v, direction)
        mupdown = 1
    }else if keyboard_check(ord("S")){
        self.move_vec[0] = lengthdir_x(v, direction+180)
        self.move_vec[1] = lengthdir_y(v, direction+180)
        mupdown = -1
    }
    
    if keyboard_check(ord("A")){
        self.move_vec[0] = lengthdir_x(v, direction+90-45*mupdown)
        self.move_vec[1] = lengthdir_y(v, direction+90-45*mupdown)
    }else if keyboard_check(ord("D")){
        self.move_vec[0] = lengthdir_x(v, direction+-90+45*mupdown)
        self.move_vec[1] = lengthdir_y(v, direction-90+45*mupdown)
    }
    
    if !place_meeting(x + self.move_vec[0]*6, y, obj_sol) || !self.coll {
        x += self.move_vec[0]
    }
    if !place_meeting(x, y + self.move_vec[1]*6, obj_sol) || !self.coll {
        y += self.move_vec[1]
    }
}

if keyboard_check_released(vk_anykey){
    speed = 0
}

if (move_vec[0] != 0 || move_vec[1] != 0){
    move_time++;
    
    if (room != room_mack_outside) {
        if (move_time + 1) mod 15 == 0 {
            var step_sound = 0;
            /*if place_meeting(x, y, obj_stairs){
                step_sound = sfx_step_wood_stairs_1;
            }else{
                step_sound = choose(sfx_step_wood_0, sfx_step_wood_1);
            }*/

            step_sound = choose(sfx_step_wood_0, sfx_step_wood_1);            
            
            audio_play_sound(step_sound, 0, 0);
            audio_sound_pitch(step_sound, random_range(.9,1.1));
        }
    }
    
    move_bobble = lerp(move_bobble, 1, .2);
}else{
    move_bobble = lerp(move_bobble, 0, .2);
}

if can_move && !camera_mode {
    // z = create_z + dsin(tick*10)*move_bobble
}

if keyboard_check_pressed(vk_f8){
    self.coll = !self.coll
}


if room != room_mack_outside {
    //d3d_light_define_point(7, x, y, 60, 128, c_white)
    //d3d_light_enable(7, true)
}


if place_meeting(x, y, obj_stairs){
    z += move_vec[1];
    znext += move_vec[1];
}

/* */
/*  */
