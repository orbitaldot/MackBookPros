choice = 0;

tick = 0;

state = 0;

sfx = -1;

funnypicture = 0;

if file_exists("settings.ini") {
	ini_open("settings.ini");
	i = ini_read_real("funny", "funny", 0);
	
	if i == 2 {
		funnypicture = 1;
	}
	
	i++;
	
	ini_write_real("funny","funny",i);
	ini_close();
		
	//	window_set_size(w,h);
}

error_codes = [
	"45 6E 74 65",
	"72 20 61 6E",
	"64 20 6C 65",
	"61 76 65 20",
	"42 75 69 6C",
	"64 69 6E 67",
	"20 35 20 74",
	"69 6D 65 73",
	"20 53 54 4F",
	"50 20 50 61",
	"75 73 65 20",
	"6F 6E 20 44",
	"72 79 20 69",
	"6E 20 73 74",
	"61 69 72 63",
	"61 73 65 20",
	"53 54 4F 50",
	"20"
]