interacted = 0

// 0 = pacmack
// 1 = mack bros
game = 0

if y > 200
	game = 1

games = [
	room_pacmack,
	room_mackbros
]

d3d_light_define_point(1, x-10, y+16, 50, 64, c_white);
d3d_light_enable(1, true)

