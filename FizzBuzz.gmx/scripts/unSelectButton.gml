with(Button_par){
    if ((mouse_x < self.x - self.sprite_width/2) or (mouse_x > self.x + self.sprite_width/2) or (mouse_y < self.y - self.sprite_height/2) or (mouse_y > self.y + self.sprite_height/2)){
        if (self.isSelected == 1){
            self.image_alpha = 1;
            self.image_blend = c_white;
            self.isSelected = 0;
            script_execute(PushCommandToGui, self.icon);
            theta=mouse_x-marker.x;
                tau=  mouse_y-marker.y;
            dir=0;
            spaces=0;
            num=0;
            show_debug_message(self.icon);
            switch (self.icon){
                
                case 29:
                theta=theta div 64;
                tau=tau div 64;
                show_debug_message(theta);
                show_debug_message(tau);
                num=1;
                if theta>0  and abs(theta)>abs(tau){
                dir=0;
                if theta>5{
                theta=5}
                spaces=theta;
                marker.x+=theta*64;
            }
              if  tau<0 and abs(tau)>=abs(theta){
                dir=1;
                if tau<-5{
                tau=-5}
                spaces=abs(tau);
                marker.y+=tau*64;
            }
              if theta<=0 and abs(theta)>abs(tau){
                dir=2;
                if theta<-5{
                theta=-5}
                spaces=abs(theta);
                marker.x+=theta*64;
            }
              if  tau>=0 and abs(tau)>=abs(theta){
                dir=3;
                if tau>5{
                tau=5}
                spaces=tau;
                marker.y+=tau*64;
            }
            script_execute(PushCommandToProgram, self.icon, marker.x, marker.y) //change self.icon to self.move and then create a variable "move" in each button that will be sent as an argument
            break;
            case 18:
               if theta>0  and abs(theta)>abs(tau){
                dir=0;
                theta=64;
                tau=0;
            }
              if  tau<0 and abs(tau)>abs(theta){
                dir=1;
                theta=0;
                tau=-64;
            }
              if theta<0 and abs(theta)>abs(tau){
                dir=2;
             theta=-64;
                tau=0;
               }
              if  tau>0 and abs(tau)>abs(theta){
                dir=3;
                theta=0;
                tau=64;
            }
            num=2;
            script_execute(PushCommandToProgram, self.icon, marker.x+theta, marker.y+tau);
            
            break;
            case 13:
            if theta>0  and abs(theta)>abs(tau){
                dir=0;
                theta=64;
                tau=0;
            }
              if  tau<0 and abs(tau)>abs(theta){
                dir=1;
                theta=0;
                tau=-64;
            }
              if theta<0 and abs(theta)>abs(tau){
                dir=2;
             theta=-64;
                tau=0;
               }
              if  tau>0 and abs(tau)>abs(theta){
                dir=3;
                theta=0;
                tau=64;
            }
            num=3;
            script_execute(PushCommandToProgram, self.icon, marker.x+theta, marker.y+tau);
            
            break;
            default:
            
            marker.x=0;
            script_execute(PushCommandToProgram, self.icon, mouse_x, mouse_y);
            break;
            }
            
            Fizz.stackFrame[Move_Stack_Gui.QueueLength,0]=num;
            Fizz.stackFrame[Move_Stack_Gui.QueueLength,1]=dir;
            Fizz.stackFrame[Move_Stack_Gui.QueueLength,2]=spaces;
            show_debug_message(Fizz.stackFrame[Move_Stack_Gui.QueueLength,0]);
            
        }
    }
}
return 0;
