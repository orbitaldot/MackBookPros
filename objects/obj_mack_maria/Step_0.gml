if interacted {
	if talked_to == 0 {
	    global.msg[0] = "Hiiiii!#:D"
	    global.msg[1] = "Im Mack Maria :)#Macks daughter :)";
	    global.msg[2] = "You must be the#new  hire, yeah?# c:";
		global.msg[3] = "Perfect :DDD!#Mack is upstairs right#now.";
		global.msg[4] = "He will be training#you. Just use the#stairs around the corner#to go up! :)";
		global.msg[5] = "Mack is waiting for you!!!";
	} else {
		global.msg[0] = "Hey! Dont leave my#papa waiting :(";
		global.msg[1] = "He really needs some#help with this place!!!";
		global.msg[2] = "I do a great job#already, but the more#the merrier!!!!#:DDD";
	}
    
    instance_create(0, 0, obj_dialogue);
    
    interacted = 0;
	talked_to++;
}

