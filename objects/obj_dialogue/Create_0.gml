portrait_sprite = -1;

current_msg = 0;

obj_player.can_move = false;

// top = global.w_size[1] * 3/5;
top = 20;
left = 10;
right = global.w_size[0]*3/7 + 10;
bottom = global.w_size[1] * 3/7;

scroll_arrow_tick = 0;
scroll_y = 0;

// 0 = opening, 1 = text, 2 = closing
state = 0;

box_rotate = -360;

scrolling = false;

text_surface = surface_create(abs(left-right), abs(top - bottom))

