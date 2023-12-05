if interacted {
	if y < 700 {
	    global.msg[0] = "M A C K   B O O K   P R O S";
	    global.msg[1] = "BOOKS, PIZZA,#PASTA, YOU NAME IT";
	    global.msg[2] = "WE GOT IT ALL";
	    global.msg[3] = "- MACK MARIO#OWNER AND FOUNDER";
	} else {
		global.msg[0] = "Take a bus to#THE CITY?";
		global.msg[1] = "No busses departing from#here at the moment...";
	}
    
    instance_create(0, 0, obj_dialogue);
    
    interacted = 0;
}

