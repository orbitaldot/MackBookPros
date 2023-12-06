switch room{
    case room_bookshop:
        d3d_light_define_ambient(make_color_rgb(255, 240, 240));
        break;
        
    case room_stairs:
    case room_tv:
		d3d_set_fog(1, c_black, 0, 120);
        break;
    
	case room_babel:
		//d3d_set_fog(1, c_black, 0, 400);
		global.light = 0;
		break;
}



if !global.paused && global.screen_image == -1 {
    if (camera_mode){
        znext = z - 40;
    }else{
        if can_move {
            if !instance_exists(obj_dialogue){
                direction -= (display_mouse_get_x()-(display_get_width()/2))/8
                znext = clamp(znext - (display_mouse_get_y()-(display_get_height()/2))/4, -180 + z, 180 + z)
				display_mouse_set(display_get_width()/2, display_get_height()/2);
            }
        }
    }
}

shader_set(shader_3d_stuff);
var uniform_light_pos = shader_get_uniform(shader_3d_stuff, "lightPosition");
var uniform_light_color = shader_get_uniform(shader_3d_stuff, "lightColor");
var uniform_light_range = shader_get_uniform(shader_3d_stuff, "lightRange");
shader_set_uniform_f(uniform_light_pos, x, y, 70);
shader_set_uniform_f(uniform_light_color, 1, 0.5, 0.5, 1);
shader_set_uniform_f(uniform_light_range, 200);

xnext = lengthdir_x(100, direction) + x;
ynext = lengthdir_y(100, direction) + y;

draw_set_colour(c_white)
d3d_set_projection_ext(x, y, z, xnext, ynext, znext, 0, 0, 1, 90, fov*__view_get( e__VW.WView, 0 )/__view_get( e__VW.HView, 0 ), 1, 16000)

global.flags[0] = direction
global.flags[1] = znext

shader_reset();
