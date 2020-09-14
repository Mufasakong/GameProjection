class GameRoom {
  
  PImage Room;
  PImage Bertram;
  int rSize = 270;
  float BertX = width/2;
  float BertY = height/2+200;
  
  GameRoom(){
    Room = loadImage("GameRoom.png");
    Bertram = loadImage("Bert.png");
    
  }
  
  void MouseInteractions() {
    if (mouseX > width/2-3-rSize/2 && mouseX < width/2-3+rSize/2 && mouseY < height/2-200+rSize/2 && mouseY > height/2-200-rSize/2)  {
      println("Du");
    }
  }
  
  void display(){
    image(Room, width/2, height/2, 2780/2, 970);
    image(Bertram, BertX, BertY, 153, 326);
    noFill();
    if (mouseX > width/2-3-rSize/2 && mouseX < width/2-3+rSize/2 && mouseY < height/2-200+rSize/2 && mouseY > height/2-200-rSize/2)  {
     strokeWeight(5);
      stroke(255, 255, 0);
      rect(width/2-3, height/2-210, rSize, rSize);
    }
  }
}
