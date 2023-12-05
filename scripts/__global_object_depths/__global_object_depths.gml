function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -900; // obj_main
	global.__objectDepths[1] = 0; // obj_int
	global.__objectDepths[2] = 0; // obj_int_sol
	global.__objectDepths[3] = 0; // obj_main_menu
	global.__objectDepths[4] = 0; // obj_antipiracy
	global.__objectDepths[5] = 5400; // obj_player
	global.__objectDepths[6] = 0; // obj_wall
	global.__objectDepths[7] = 0; // obj_skybox
	global.__objectDepths[8] = 0; // obj_bookshelves
	global.__objectDepths[9] = 0; // obj_mack_building
	global.__objectDepths[10] = 0; // obj_wall_glass
	global.__objectDepths[11] = 0; // obj_floor
	global.__objectDepths[12] = 0; // obj_window
	global.__objectDepths[13] = 0; // obj_ceil
	global.__objectDepths[14] = 0; // obj_door_down
	global.__objectDepths[15] = 0; // obj_door_left
	global.__objectDepths[16] = 0; // obj_door_right
	global.__objectDepths[17] = 0; // obj_road
	global.__objectDepths[18] = 0; // obj_door_up
	global.__objectDepths[19] = 0; // obj_door
	global.__objectDepths[20] = 0; // obj_light
	global.__objectDepths[21] = 0; // obj_eventmanager
	global.__objectDepths[22] = 0; // obj_tree
	global.__objectDepths[23] = 0; // obj_mack_maria
	global.__objectDepths[24] = 0; // obj_eva_skybox
	global.__objectDepths[25] = 0; // obj_tv
	global.__objectDepths[26] = 0; // obj_zoo
	global.__objectDepths[27] = 0; // obj_pause
	global.__objectDepths[28] = -90; // obj_menu
	global.__objectDepths[29] = 0; // obj_stairs
	global.__objectDepths[30] = 0; // obj_dialogue
	global.__objectDepths[31] = 0; // obj_3d_decal
	global.__objectDepths[32] = 0; // obj_sign
	global.__objectDepths[33] = -9999; // obj_fader


	global.__objectNames[0] = "obj_main";
	global.__objectNames[1] = "obj_int";
	global.__objectNames[2] = "obj_int_sol";
	global.__objectNames[3] = "obj_main_menu";
	global.__objectNames[4] = "obj_antipiracy";
	global.__objectNames[5] = "obj_player";
	global.__objectNames[6] = "obj_wall";
	global.__objectNames[7] = "obj_skybox";
	global.__objectNames[8] = "obj_bookshelves";
	global.__objectNames[9] = "obj_mack_building";
	global.__objectNames[10] = "obj_wall_glass";
	global.__objectNames[11] = "obj_floor";
	global.__objectNames[12] = "obj_window";
	global.__objectNames[13] = "obj_ceil";
	global.__objectNames[14] = "obj_door_down";
	global.__objectNames[15] = "obj_door_left";
	global.__objectNames[16] = "obj_door_right";
	global.__objectNames[17] = "obj_road";
	global.__objectNames[18] = "obj_door_up";
	global.__objectNames[19] = "obj_door";
	global.__objectNames[20] = "obj_light";
	global.__objectNames[21] = "obj_eventmanager";
	global.__objectNames[22] = "obj_tree";
	global.__objectNames[23] = "obj_mack_maria";
	global.__objectNames[24] = "obj_eva_skybox";
	global.__objectNames[25] = "obj_tv";
	global.__objectNames[26] = "obj_zoo";
	global.__objectNames[27] = "obj_pause";
	global.__objectNames[28] = "obj_menu";
	global.__objectNames[29] = "obj_stairs";
	global.__objectNames[30] = "obj_dialogue";
	global.__objectNames[31] = "obj_3d_decal";
	global.__objectNames[32] = "obj_sign";
	global.__objectNames[33] = "obj_fader";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
