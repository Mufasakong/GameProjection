//Globale Variabler
ArrayList<nullerTask> nullerTaskList = new ArrayList<nullerTask>();
nullerTask UST;
int m;
int fmass;
boolean GrabCar = false;
int carY; 

//Objekter
GameRoom GR;
UI Interface;
SkabTask ST;
KommodeTask KT;
Menuer Menu;

PImage OpenCloset;
PImage Grimlock;
PImage KommodeOpen;
PImage Isbjoern;
PImage RT;
PImage LBT;
PImage LT;


int Scene = 0;
int toy = 0;

float i = 0;

  Boolean skabToy = true;
  Boolean kommodeToy = true;

//Setup
void setup() {
  smooth();
  fullScreen();
  //size(1920, 1080);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);

  loadBilleder();
  
  for (int u = 0; u < 100; u++) {
    nullerTaskList.add(new nullerTask());
    if (Scene != 4) {
    nullerTaskList.remove(new nullerTask());
    }
  }

  UST = new nullerTask();
  fmass = 0;
  carY = -50;


  //Objekt Creater
  GR = new GameRoom();
  Interface = new UI();
  ST = new SkabTask();
  KT = new KommodeTask();
  Menu = new Menuer();
}

void draw() {
  clear();

  background(100, 100, 175);
  if (i > 180){
  Scene = -2;
  }
  
  if (toy == 3){
  Scene = -1;
  }
  if (Scene == 0) {
    Menu.startMenu();
  }
  if (Scene == -1) {
    Menu.winScreen();
    cursor();
  }
  if (Scene == -2){
    Menu.loseScreen();
    cursor();
  }
  if (Scene == -3){
    Menu.gameRules();
  }

  if (Scene >= 1) {
    GR.display();
  }

  if (Scene == 1) {
    GR.mouseCheck();
    Interface.UIDisplay();
    cursor();
  }

  if (Scene == 2) {
    ST.displayOpenSkab();
  }

  if (Scene == 3) {
    KT.displayOpenKommode();
  }

  if (Scene == 4) {
    noCursor();
      UST.movingImages();

  for (nullerTask t4 : nullerTaskList) {
    t4.nullermen();
    }
  }

  if (Scene >= 1) {
    Interface.Progress();
  }

  //Debug
  if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
    fill(0);
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
    fill(255);
  }
  //image(Isbjoern, 1240, 650);
}

void mouseClicked() {
  if (Scene == 0) {
    Menu.startMenuKnap();
  } else if (Scene == -1) {
    Menu.winScreenKnap();
  } else if (Scene == -2) {
    Menu.loseScreenKnap();
  } else if (Scene == -3) {
   Menu.gameRulesKnap(); 
  } else if (Scene == 1) {
    GR.MouseInteractions();
  } else if (Scene == 2) {
    ST.skabOpenKnap();
  } else if (Scene == 3) {
    KT.kommodeOpenKnap();
  } else if (Scene == 4) {
    UST.GetCar();
      }
    }
  

void mousePressed() {
}
