//Globale Variabler


//Objekter
GameRoom GR;
UI Interface;
SkabTask ST;
KommodeTask KT;

PImage OpenCloset;
PImage Grimlock;
PImage KommodeOpen;
PImage Isbjoern;

int Scene = 1;
int toy = 0;

//Setup
void setup() {
  smooth();
  fullScreen();
  //size(1920, 1080);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);

  //Skab Task
  OpenCloset = loadImage("OpenCloset.png");
  OpenCloset.resize(2780/2, 970); 
  Grimlock = loadImage("Grimlock.png");
  Grimlock.resize(200, 200);

  //Kommode Task
  KommodeOpen = loadImage("Kommodeopen.png");
  KommodeOpen.resize(4100/4, 3043/4);
  Isbjoern = loadImage("isbjoern.png");
  Isbjoern.resize(1779/5, 1192/5);


  //Objekt Creater
  GR = new GameRoom();
  Interface = new UI();
  ST = new SkabTask();
  KT = new KommodeTask();
}

void draw() {
  clear();

  background(100, 100, 175);
  if (Scene >= 1) {
    GR.display();
  }

  if (Scene == 1) {
    GR.mouseCheck();
    Interface.UIDisplay();
  }

  Interface.Progress();

  if (Scene == 2) {
    ST.displayOpenSkab();
  }

  if (Scene == 3) {
    KT.displayOpenKommode();
  }

  if (Scene == 4) {
  }
  if (Scene == 5) {
  }
  if (Scene == 6) {
  }

  //Debug
  if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
  }
  //image(Isbjoern, 1240, 650);
}

void mouseClicked() {
  //Scene 2 skift
  if (Scene == 1) {
    GR.MouseInteractions();
  } else if (Scene == 2) {
    ST.skabOpenKnap();
  } else if (Scene == 3) {
    KT.kommodeOpenKnap();
  }
}

void mousePressed() {
}
