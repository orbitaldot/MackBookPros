switch(self.state){
    case 0:
        if self.timer < self.time {
            self.timer += 2
        }else{
            room_goto(self.to)
            self.state = 1
        }
        break;
    
    case 1:
        if self.timer > 0 {
            self.timer -= 2
        }else{
            instance_destroy(self)
        }
        
        break;
    
}

