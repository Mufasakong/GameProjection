//Globale Variabler
ArrayList<nullerTask> nullerTaskList = new ArrayList<nullerTask>();
nullerTask obj4;
int m;
int fmass;
boolean GrabCar = false;
int carY; 

//Objekter
GameRoom GR;
UI Interface;
SkabTask ST;
KommodeTask KT;

PImage OpenCloset;
PImage Grimlock;
PImage KommodeOpen;
PImage Isbjoern;
PImage RT;
PImage LBT;
PImage LT;


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
  
  loadBilleder();
  
   for (int i = 0; i < 100; i++) {
    nullerTaskList.add(new nullerTask());
  }
  
  obj4 = new nullerTask();
  m = 0;
 fmass = 0;
  carY = -50;


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

  if (Scene == 2) {
    ST.displayOpenSkab();
  }

  if (Scene == 3) {
    KT.displayOpenKommode();
  }

  if (Scene == 4) {
      obj4.movingImages();
    if (GrabCar == true) {
  for (nullerTask t4 : nullerTaskList) {
    noCursor();
    t4.fall();
    t4.display();
      }
    }
  }
  if (Scene == 5) {
  }
  if (Scene == 6) {
  }
  
    Interface.Progress();

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
  } else if (Scene == 4) {
    if (mouseX > width/2-2123/15/2 && mouseX < width/2+2123/15/2 && mouseY < 250+1361/15/2 && mouseY > 250-1361/15/2) {
      if (carY == 250) {
        GrabCar = true;
        toy++;
      }
    }
  }
}

void mousePressed() {
}
