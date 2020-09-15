class GameRoom {
  
  PImage Room;
  PImage Bertram;
  PImage Skabopen;
  float BertX = width/2;
  float BertY = height/2+200;
  
  GameRoom(){
    Room = loadImage("GameRoom.png");
    Bertram = loadImage("Bert.png");
     Skabopen = loadImage("OpenCloset.png");
    
  }
  
  void MouseInteractions() {
    if (mouseX > width/2-3-270/2 && mouseX < width/2-3+270/2 && mouseY < height/2-200+270/2 && mouseY > height/2-200-270/2)  {
      image(Skabopen, width/2, height/2, 2780/2, 970);
   
      
    }
  }
  
  void display(){
    image(Room, width/2, height/2, 2780/2, 970);
    image(Bertram, BertX, BertY, 153, 326);
    noFill();
    if (mouseX > width/2-3-270/2 && mouseX < width/2-3+270/2 && mouseY < height/2-200+270/2 && mouseY > height/2-200-270/2)  {
     strokeWeight(5);
      stroke(255, 255, 0);
      rect(width/2-3, height/2-210, 270, 270);
    }
  }
}
