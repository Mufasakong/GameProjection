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
  
  /* if (mousePressed == true) {
    ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  }
  */
}

void mouseClicked(){
  GR.MouseInteractions();

}

void mousePressed() {
  
}
