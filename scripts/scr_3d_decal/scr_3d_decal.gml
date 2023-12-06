function scr_3d_decal(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var x1 = argument0;
	var y1 = argument1;
	var z1 = argument2;
	var x2 = argument3;
	var y2 = argument4;
	var z2 = argument5;

	var spr = argument6;

	with(instance_create(argument0, argument1, obj_3d_decal)){
	    corner_1[0] = x1;
	    corner_1[1] = y1;
	    corner_1[2] = z1;
    
	    corner_2[0] = x2;
	    corner_2[1] = y2;
	    corner_2[2] = z2;
    
	    sprite_index = spr;
	}
}
