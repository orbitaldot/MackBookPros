function scr_reset_projection() {
	d3d_set_projection_ext(obj_player.x, obj_player.y, obj_player.z, obj_player.xnext, obj_player.ynext, obj_player.znext, 0, 0, 1, 90, __view_get( e__VW.WView, 0 )/__view_get( e__VW.HView, 0 ), 1, 16000)



}
