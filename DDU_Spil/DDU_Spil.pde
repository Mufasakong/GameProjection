//Globale Variabler


//Objekter
GameRoom GR;
UI Interface;
SkabTask ST;

PImage OpenCloset;
PImage Grimlock;


int Scene = 1;

//Setup
void setup() {
  smooth();
  //fullScreen();
  size(1920, 1080);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(120);
  OpenCloset = loadImage("OpenCloset.png");
  OpenCloset.resize(2780/2, 970); 
  Grimlock = loadImage("Grimlock.png");
  Grimlock.resize(200, 200);
  GR = new GameRoom();
  Interface = new UI();
  ST = new SkabTask();
}

void draw() {
  clear();

  background(100, 100, 175);
  if (Scene >= 1) {
    GR.display(); 
    Interface.UIDisplay();
  }

  Interface.Progress();

  if (Scene == 2) {
    ST.displayOpenSkab();
  }

  //Debug
  if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
  }
}

void mouseClicked() {
  GR.MouseInteractions();
}

void mousePressed() {
}
