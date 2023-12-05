function scr_fadeto_room(argument0, argument1) {
	if instance_exists(obj_fader){
	    return false
	}

	with(instance_create(0, 0, obj_fader)){
	    self.to = argument0
	    self.time = argument1
	}

	return true



}
