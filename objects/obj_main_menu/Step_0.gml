step++;

var center_x = obj_mack_building.x + 128
var center_y = obj_mack_building.y + 256

obj_player.x = center_x + lengthdir_x(1024, step/6 - 90);
obj_player.y = center_y + lengthdir_y(1024, step/6 - 90);

obj_player.direction = point_direction(obj_player.x, obj_player.y, center_x, center_y);

obj_player.z = 1124;
obj_player.z_next = 1100;

if keyboard_check_pressed(vk_space){
    global.main_menu = false;
    scr_fadeto_room(room_mack_outside, 20);
}

if keyboard_check_pressed(ord("E")){
    global.main_menu = false;
    audio_stop_sound(global.music);
    scr_fadeto_room(room_mackbeach, 20);
	
}else if keyboard_check_pressed(ord("T")){
    global.main_menu = false;
    global.light = true;
    obj_main.lighting = true;
    
    audio_stop_sound(global.music);
    scr_fadeto_room(room_tv, 20);
}

