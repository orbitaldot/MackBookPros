if interacted {
	global.msg[0] = "Inside a random book,#you find the following#text...";
	var i = 1;
	repeat(irandom_range(3,7)) {
		var d = 0;
		var lines = 0;
		var done = false;
		global.msg[i] = "";
		while (!done) {
			var c = getRandomLetter();
			global.msg[i] += c;
			d += string_width(c);
			if d > 190 {
				global.msg[i] += "#";
				lines++;
				d = 0;
			}
			if lines >= 4 {
				done = true;	
			}
		}
		i++
	};
	
	if times > 2 {
		global.msg[1] = "LOG ENTRY 18";	
	}
	
	instance_create(0, 0, obj_dialogue);
	interacted = 0;	
	
	times++;
}

if keyboard_check_pressed(ord("P")) {
	game_end();	
}