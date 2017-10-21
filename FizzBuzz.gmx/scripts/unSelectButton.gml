with(Button_par){
    if ((mouse_x < self.x - self.sprite_width/2) or (mouse_x > self.x + self.sprite_width/2) or (mouse_y < self.y - self.sprite_height/2) or (mouse_y > self.y + self.sprite_height/2)){
        self.image_alpha = 1;
        self.image_blend = c_white;
        self.isSelected = 0;
    }
}
