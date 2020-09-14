class GameRoom {
  
  PImage Room;
  int rSize = 270;
  
  GameRoom(){
    Room = loadImage("GameRoom.png");
    
  }
  
  void MouseInteractions() {
    if (mouseX > width/2-3-rSize/2 && mouseX < width/2-3+rSize/2 && mouseY < height/2-200+rSize/2 && mouseY > height/2-200-rSize/2)  {
      println("Du lugte");
    }
  }
  
  void displayGameRoom(){
    image(Room, width/2, height/2, 2780/2, 970);
    noFill();
    if (mouseX > width/2-3-rSize/2 && mouseX < width/2-3+rSize/2 && mouseY < height/2-200+rSize/2 && mouseY > height/2-200-rSize/2)  {
     strokeWeight(5);
      stroke(255, 255, 0);
      rect(width/2-3, height/2-210, rSize, rSize);
    }
  
  }
}
