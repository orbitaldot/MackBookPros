d3d_start();
d3d_set_shading(true);

interact_cooldown = 0;
interact_text = "";

self.old_int = noone

self.coll = true

can_move = true;

//main menu
camera_mode = false;

mousex = 0
mousey = 0

z = 48;
xnext = x
ynext = y
znext = 40;
direction = 90;

move_vec[0] = 0
move_vec[1] = 0

move_time = 0;

room_speed = 60

self.life = 0

info_alpha = 0

image_alpha = 0

move_bobble = 0;
tick = 0;

fov = 1;

window_set_cursor(cr_none)

if global.pre_x > -1 && global.pre_y > -1 {
	x = global.pre_x
	y = global.pre_y
	direction = global.pre_dir
	
	global.pre_x = -1
	global.pre_y = -1
}
