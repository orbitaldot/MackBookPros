if instance_exists(obj_dialogue) || interact_cooldown > 0 {
    exit;
}

var intdist = 48;
var int = collision_line(x, y, x + lengthdir_x(intdist , direction), y + lengthdir_y(intdist , direction), obj_int, false, true)
if int == noone {
    int = collision_line(x, y, x + lengthdir_x(intdist , direction), y + lengthdir_y(intdist , direction), obj_int_sol, false, true)
}

if int != noone {
	if collision_line(x,y,int.x,int.y,obj_wall,0,1)
		int = noone;
}

if int != self.old_int && self.old_int != noone {
    self.old_int.held_int = 0
}

if int != noone && !instance_exists(obj_fader) {
    // Draw the reticle
    d3d_set_lighting(false)
    draw_sprite_ext(spr_recticle, 0, global.w_size[0]/2, global.w_size[1]/2, 1, 1, 0, c_white, .9)
    d3d_set_lighting(global.light)
	
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(font_mario64);
	
	if variable_instance_exists(int, "interact_text")
	{
		var _width = string_width(int.interact_text);
		draw_set_color(c_black);
		draw_set_alpha(.5);
		
		draw_rectangle(
			global.w_size[0]/2 - _width/2 - 4,
			global.w_size[1] - 24,
			global.w_size[0]/2 + _width/2 + 4,
			global.w_size[1] - 8,
			0
		);
		
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text(global.w_size[0]/2, global.w_size[1] - 16, int.interact_text);
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
    
    // Click on interactive
    if mouse_check_button_pressed(mb_left){
        int.interacted = 1
    }
    
    if mouse_check_button(mb_left) {
        int.held_int = 1
    }else if mouse_check_button_released(mb_left) {
        int.held_int = 0
    }
}

if global.current_floor > 0 {
    d3d_set_lighting(false);
    draw_set_font(font_mario64);
    draw_set_halign(fa_left);
    draw_text(4, 4, string_hash_to_newline("Floor " + string(global.current_floor)))
    d3d_set_lighting(global.light);
}

self.old_int = int

