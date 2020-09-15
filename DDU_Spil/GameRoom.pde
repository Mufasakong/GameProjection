class GameRoom {
  
  PImage Room;
  PImage Bertram;
  PImage OpenCloset;
  PImage Bed;
  float BertX = width/2;
  float BertY = height/2+200;
  
  
  GameRoom(){
    Room = loadImage("GameRoom.png");
    Bertram = loadImage("Bert.png");
    OpenCloset = loadImage("OpenCloset.png");
    Bed = loadImage("Bed.png");
    
  }
  
   public boolean ClosetPos() {
     if (mouseX > width/2-10-300/2 && mouseX < width/2-10+300/2 && mouseY < height/2-225+267/2 && mouseY > height/2-225-267/2) {
     return true;
     } else {
       return false;
     }
   }
  
  void MouseInteractions() {
    if (ClosetPos() == true)  {
      image(OpenCloset, width/2, height/2, 2780/2, 970);
   
      
    }
  }
  
  void display(){
    image(Room, width/2, height/2, 4345/2.5, 2906/2.5);
    image(Bertram, BertX, BertY, 153, 326);
    image(Bed, 319, height/2+80, 2510/4, 1788/4);
    noFill();
    if (ClosetPos() == true)  {
     strokeWeight(5);
      stroke(255, 255, 0);
      rect(width/2-10, height/2-225, 300, 267);
    }
  }
}
