if global.screen_image != -1 and instance_exists(obj_player){
    d3d_set_lighting(false)
    draw_sprite_ext(global.screen_image, 0, global.w_size[0]/2, global.w_size[1]/2, 1, 1, 0, make_colour_rgb(170, 80, 80), 1)
    if (global.light) {
        d3d_set_lighting(true)
    }
}

if self.darkfade_state == 1 {
    darkfade += 1
    if darkfade >= 10 {
        room_goto(global.flags[2])
        self.darkfade_state = 2
    }
}else if self.darkfade_state == 2 {
    darkfade -= 1
    if darkfade <= 0 {
        self.darkfade_state = 0
    }
}

if self.darkfade > 0 {
    d3d_set_lighting(false)
    draw_set_alpha(darkfade/10)
    draw_set_colour(c_black)
    draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),false)
    draw_set_alpha(1)
    draw_set_colour(c_white)
    
    if lighting {
        d3d_set_lighting(global.light)
    }
}

