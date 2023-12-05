if mouse_check_button_pressed(mb_left) && !scrolling && state == 1 {
    current_msg++;
    
    if current_msg >= array_length_1d(global.msg) {
        state = 2;
        
        obj_player.can_move = true;
        obj_player.interact_cooldown = 2;
    }
}

if scroll_y - current_msg * abs(top-bottom) < -8 {
    scrolling = true;
    scroll_y += 16;
    
    scroll_arrow_tick = 0;
}else{
    scroll_y = current_msg * abs(top-bottom);
    scrolling = false;
    
    scroll_arrow_tick++;
}

// Animating the box

var anim_speed = 40;    // How fast should the box open

// Open animation
if state == 0 {
    if box_rotate < 0 {
        box_rotate += anim_speed;
    }else{
        // Animation complete, switch to text stage
        box_rotate = 0;
        state = 1;
    }
    
// Closing animation
}else if state == 2 {
    if box_rotate > - 360 {
        box_rotate -= anim_speed;
    }else{
        global.msg = 0;
        global.msg[0] = "Error. Empty."
        instance_destroy();
    }
}


