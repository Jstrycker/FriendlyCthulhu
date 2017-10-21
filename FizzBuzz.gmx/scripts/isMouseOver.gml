if ((mouse_x < self.x - self.sprite_width/2) or (mouse_x > self.x + self.sprite_width/2) or (mouse_y < self.y - self.sprite_height/2) or (mouse_y > self.y + self.sprite_height/2)){
    self.x = mouse_x;
    self.y = mouse_y;
}
