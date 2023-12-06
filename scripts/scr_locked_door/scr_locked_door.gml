function scr_locked_door() {
	global.msg[0] = global.text[? "locked_door"];
	instance_create(0, 0, obj_dialogue);
}
