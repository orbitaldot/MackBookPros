if state == 0 {
	state = keyboard_check_pressed(vk_space);
	exit;
}

if state == 1 {
	state = !keyboard_check_pressed(vk_space);	
}

timer++

if timer mod 20 == 0 {
	if until_fixed > 0 {
		str = chr(65 + irandom_range(0,25));	
		str += chr(65 + irandom_range(0,25));	
		str += chr(65 + irandom_range(0,25));	
		str += chr(65 + irandom_range(0,25));	
		str += "-"
		str += string(irandom_range(0,9));
		str += string(irandom_range(0,9));
		str += string(irandom_range(0,9));
		str += string(irandom_range(0,9));
		str += string(irandom_range(0,9));
	}else{
		str = "FRFR-25565";
		
		if until_fixed < -4
			col = c_orange;
	}
	

	for(var i = 0; i < array_length(offsets); i++){
		offsets[i] = random_range(-1,1);	
		effects[i] = [random_range(1.5,2.3), random(360), random_range(.2,.4)];
	}
	
	until_fixed--;;
}

draw_set_font(font_msgothic);
draw_set_colour(c_white);

var xx = x;
var j = 0;

for(var i = 1; i < string_length(str) + 1; i++){
	var c = string_char_at(str, i);
	
	draw_sprite_ext(spr_glow,0,xx+12.5,y+12.5,effects[j][0],effects[j][0],effects[j][1],col,effects[j][2]+random_range(-.02,.02));
	draw_set_colour(col);
	draw_text_transformed(xx + offsets[j],y + offsets[j],c,1.5,1.5,0);
	xx += 25;
	
	if c != "-"
		j++;
}

///
if timer mod 8 == 0 {
	repeat(irandom_range(1,3)) {
		var xx = random_range(0,300);
		var yy = random_range(0,200);
		draw_set_colour(choose(c_grey,c_white));
		draw_point(xx,yy);
	}
}