with(Button_par){
    if ((mouse_x < self.x - self.sprite_width/2) or (mouse_x > self.x + self.sprite_width/2) or (mouse_y < self.y - self.sprite_height/2) or (mouse_y > self.y + self.sprite_height/2)){
        if (self.isSelected == 1){
            self.image_alpha = 1;
            self.image_blend = c_white;
            self.isSelected = 0;
            if (!script_execute(isMouseOverButton)){
                script_execute(PushCommandToGui, self.icon);
                script_execute(choose_action, self.icon);
            }
        }
    }
}
return 0;
