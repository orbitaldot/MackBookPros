ini_open("settings.ini");
ini_write_real("window","width",window_get_width());
ini_write_real("window","height",window_get_height());
ini_close();