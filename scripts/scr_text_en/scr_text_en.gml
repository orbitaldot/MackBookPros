function scr_text_en() {
	global.text = ds_map_create();
	
	var new_text = function (_key, _text) { 
		ds_map_add(global.text, _key, _text) 
	}
	
	new_text("menu_play", "press [SPACE] to begin");
	
	new_text("outside_sign_0", "M A C K   B O O K   P R O S");
	new_text("outside_sign_1", "BOOKS, PIZZA,#PASTA, YOU NAME IT");
	new_text("outside_sign_2", "WE GOT IT ALL");
	new_text("outside_sign_3", "- MACK MARIO#OWNER AND FOUNDER");
	
	new_text("outside_sign_bus_0", "Take a bus to#THE CITY?");
	new_text("outside_sign_bus_1", "No busses departing from#here at the moment...");
	
	new_text("maria_intro_0", "Hiiiii!#:D")
	new_text("maria_intro_1", "Im Mack Maria :)#Macks daughter :)");
	new_text("maria_intro_2", "You must be the#new  hire, yeah?# c:");
	new_text("maria_intro_3", "Perfect :DDD!#Mack is upstairs right#now.");
	new_text("maria_intro_4", "He will be training#you. Just use the#stairs around the corner#to go up! :)");
	new_text("maria_intro_5", "Mack is waiting for you!!!");
	
	new_text("maria_intro_b_0", "Hey! Dont leave my#papa waiting :(");
	new_text("maria_intro_b_1", "He really needs some#help with this place!!!");
	new_text("maria_intro_b_2", "I do a great job#already, but the more#the merrier!!!!#:DDD");
	
	new_text("arcade_ascend", "HEAVENLY\nASCENSION\nCOMPLETE!");
	
	new_text("filescreen_nosave", "ERROR\nNo save file found.\n\nYou cannot play this game.");
	new_text("filescreen_error", "Severe system error. システムを再起動してください");
	new_text("filescreen_chumbruh", "Chumbruh Digital Entertainment (C)");
	new_text("filescreen_loading", "\nLoading!");
	new_text("filescreen_ask_load", "Load from save file?");
	new_text("filescreen_funny_picture", "See a funny picture?");
	new_text("filescreen_yes", "Yes");
	new_text("filescreen_no", "No");
}