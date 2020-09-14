//Globale Variabler


//Objekter
GameRoom GR;

//Setup
void setup(){
  
  //fullScreen();
  size(1920, 1080);
  imageMode(CENTER);
  rectMode(CENTER);
  
  
  GR = new GameRoom();
  
}

void draw(){
  clear();
  background(0, 175, 0);
  GR.display(); 
}

void mousePressed(){
  GR.MouseInteractions();
}
