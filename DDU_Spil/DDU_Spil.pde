//Globale Variabler


//Objekter
GameRoom GR;
UI Interface;

int Scene = 1;

//Setup
void setup(){
  smooth();
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
  if (Scene == 1) {
  GR.display(); 
  Interface.UIDisplay();
  }
  
  Interface.Progress();
  
 if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  text(frameRate, mouseX+64, mouseY+64);
  }
  
}

void mouseClicked(){
  GR.MouseInteractions();

}

void mousePressed() {
  
}
