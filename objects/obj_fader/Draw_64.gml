draw_set_colour(c_black)

d3d_set_lighting(false)
draw_set_alpha(self.timer/self.time)
draw_rectangle(0, 0, global.w_size[0], global.w_size[1], false)

draw_set_alpha(1)
draw_set_colour(c_white)

if (global.light){
    d3d_set_lighting(true)
}

