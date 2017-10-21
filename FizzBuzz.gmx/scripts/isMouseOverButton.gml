with (Button_par){
    if ((mouse_x > self.x - self.sprite_width/2) and (mouse_x < self.x + self.sprite_width/2) and (mouse_y > self.y - self.sprite_height/2) and (mouse_y < self.y + self.sprite_height/2)){
        return true;
    }
}
return false;
