with(Button_par){
    if ((mouse_x < self.x - self.sprite_width/2) or (mouse_x > self.x + self.sprite_width/2) or (mouse_y < self.y - self.sprite_height/2) or (mouse_y > self.y + self.sprite_height/2)){
        if (self.isSelected == 1){
            self.image_alpha = 1;
            self.image_blend = c_white;
            self.isSelected = 0;
            script_execute(PushCommandToGui, self.icon);
            script_execute(PushCommandToProgram, self.icon, mouse_x, mouse_y) //change self.icon to self.move and then create a variable "move" in each button that will be sent as an argument
        }
    }
}
return 0;
