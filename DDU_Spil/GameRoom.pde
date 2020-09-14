class GameRoom {
  
  PImage Room;
  
  GameRoom(){
    Room = loadImage("GameRoom.png");
  }
  
  void MouseInteractions() {
  
  }
  
  void displayGameRoom(){
    image(Room, width/2, height/2, 2780/2, 970);
  }
}
