function scr_global_msg_from_text(_text_id) {
	var i = 0;
	while (ds_map_exists(global.text, string(_text_id) + "_" + string(i))) {
		global.msg[i] = global.text[? (string(_text_id) + "_" + string(i))]
		i++;
	}
}