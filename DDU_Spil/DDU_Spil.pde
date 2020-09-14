//Globale Variabler


//Objekter
GameRoom GR;

//Setup
void setup(){
  fullScreen();
  imageMode(CENTER);
  
  GR = new GameRoom();
}

void draw(){
  GR.display();
}
