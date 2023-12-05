function string_split(argument0, argument1) {
	var s = argument0 // string
	var sc = argument1 // character to split from
	arr = 0
	i = 0

	show_debug_message(s)

	arr[0] = ""

	for(var c = 1; c <= string_length(s); c++){
	    if string_char_at(s, c) == sc {
	        i++
	        arr[i] = ""
        
	    }else{
	        arr[i] += string(string_char_at(s, c))
	    }
	}

	return arr



}
