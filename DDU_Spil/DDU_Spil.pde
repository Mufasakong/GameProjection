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
  frameRate(60);
  
  GR = new GameRoom();
  Interface = new UI();
  
}

void draw(){
  clear();

  background(100, 100, 175);
  GR.display(); 
  Interface.UIDisplay();
  
}

void mouseClicked(){
  GR.MouseInteractions();

  
}
