var _xs = image_xscale
var _ys = image_yscale

if room != room_babel {
	with(instance_create(x,y,obj_ceil)){
	    image_xscale = _xs
	    image_yscale = _ys
    
	    if y < 0 {
	        sprite = spr_floor_grating
	    }
	}
}