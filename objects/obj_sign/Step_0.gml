if interacted {
	if y < 700 {
	    scr_global_msg_from_text("outside_sign")
	} else {
		scr_global_msg_from_text("outside_sign_bus")
	}
    
    instance_create(0, 0, obj_dialogue);
    
    interacted = 0;
}

