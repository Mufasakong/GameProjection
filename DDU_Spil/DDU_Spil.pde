//Globale Variabler


//Objekter
GameRoom GR;
UI Interface;

//Setup
void setup(){
  
  //fullScreen();
  size(1920, 1080);
  imageMode(CENTER);
  rectMode(CENTER);
  
  
  GR = new GameRoom();
  Interface = new UI();
  
}

void draw(){
  clear();
  background(0, 175, 0);
  GR.display(); 
  Interface.UIDisplay();
  
}

void mouseReleased(){
  GR.MouseInteractions();
}
