tick++

if keyboard_check(ord("W")) {
	image_angle = 90
	vel = [0, -1]
} else if keyboard_check(ord("S")) {
	image_angle = 270
	vel = [0, 1]
} else if keyboard_check(ord("D")) {
	image_angle = 0
	vel = [1, 0]
} else if keyboard_check(ord("A")) {
	image_angle = 180
	vel = [-1, 0]
}

if !place_meeting(x+vel[0],y,obj_pacmack_coll) {
	if tick mod 2 == 0 
		x += vel[0]
} else if tick mod 30 == 0 {
	var v = vel[0]
	with(obj_pacmack_coll) {
		x += v
	}	
}
if !place_meeting(x,y+vel[1],obj_pacmack_coll) {
	if tick mod 2 == 0 {
		y += vel[1] 
	}
} else if tick mod 30 == 0 {
	var v = vel[1]
	with(obj_pacmack_coll) {
		y += v
	}	
}

if (vel[0] != 0 or vel[1] != 0) {
	obj_arcade_controller.start()
}