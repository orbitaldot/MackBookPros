if interacted {
	if talked_to == 0 {
	    scr_global_msg_from_text("maria_intro")
	} else {
		scr_global_msg_from_text("maria_intro_b")
		interact_text = global.text[? "maria_interact_text"]
	}
    
    instance_create(0, 0, obj_dialogue);
    
    interacted = 0;
	talked_to++;
}

