if global.spooky_visuals {
	shader_set(shader_ca);
	draw_surface(application_surface,0,0);

	if random(200) < 3 + 120 * global.flags[2] {
		repeat(irandom(4)) {
			var r = random(200)
			draw_surface_part(application_surface,0,r,300,irandom_range(2,6), random_range(-6,8), r + random_range(-1,1));
		}
	}

	shader_reset();
} else {
	draw_surface(application_surface,0,0);
}