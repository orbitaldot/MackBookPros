/// @description d3d - enable 3d
function d3d_start() {

	var ret = global.__d3d;
	global.__d3d = true;
	//camera_apply(global.__d3dCamera);
	gpu_set_ztestenable(true);
	gpu_set_zwriteenable(true);
	return ret;



}

/// @description d3d - enable 3d
function d3d_end() {

	var ret = global.__d3d;
	global.__d3d = false;
	//camera_apply(global.__d3dCamera);
	gpu_set_ztestenable(false);
	gpu_set_zwriteenable(false);
	return ret;



}
