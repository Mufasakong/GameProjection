  //Gameroom
  PImage Room;
  PImage Bertram;
  PImage Bed;
  
  //NullerTask
  PImage car;
  PImage[] Arm = new PImage[2];
  
  PImage nullerman;
  PImage floor;
  
  //Menuer
  PImage startMenuB;
  PImage winScreen;
  PImage loseScreen;
  PImage gameRules;
  
  PImage[] Button = new PImage[6];
  
  //Skab Task
  PImage OpenCloset;
  PImage Grimlock;
  PImage KommodeOpen;
  
  //Kommode Task
  PImage Isbjoern;
  PImage RT;
  PImage LBT;
  PImage LT;
  
  //UI
  PImage Empty;
  PImage BertMom;
  PImage BertMomAngry;

  PImage[] Bar = new PImage[2];


void loadBilleder(){
    //NullerTask
    car = loadImage("Toycar.png");
    car.resize(2123/15, 1361/15);
    
    Arm[0] = loadImage("BertArm.png");
    Arm[1] = loadImage("BertArm2.png");
    Arm[0].resize(781/3, 2801/3+450);
    Arm[1].resize(781/3, 2801/3+450);
    
    floor = loadImage("Floor.png");
    floor.resize(1920, 1080);
    
    nullerman = loadImage("Fnuller.png");
    nullerman.resize(50,50);
    
    //GameRoom
    Room = loadImage("GameRoom.png"); 
    Room.resize(round(4345/2.5), round(2906/2.5));
    Bertram = loadImage("Bert.png");
    Bertram.resize(153, 326);

    Bed = loadImage("Bed.png");
    Bed.resize(1393/3, 941/3);
    
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
  RT = loadImage("RT.png");
  RT.resize(250,200);
  LBT = loadImage("LBT.png");
  LBT.resize(250,200);
  LT = loadImage("LT.png");
  LT.resize(250,200);
  
  //Menuer
  startMenuB = loadImage("forside.png");
  startMenuB.resize(1920,1080);
  winScreen = loadImage("WinPage.png");
  winScreen.resize(1920,1080);
  loseScreen = loadImage("BustedByMomma.png");
  loseScreen.resize(1920,1080);
  gameRules = loadImage("Regler.png");
  gameRules.resize(1920,1080);
  
  Button[0] = loadImage("StartSpil.png");
  Button[1] = loadImage("Spilbeskrivelse.png");
  Button[2] = loadImage("ForladSpil.png");
  Button[3] = loadImage("ProvIgen.png");
  Button[4] = loadImage("Tilbage.png");
  Button[5] = loadImage("Hovedmenu.png");
  for(int pI = 0; pI < 6; pI++) {
  Button[pI].resize(505, 135);
  }
  
  //UI
  Empty = loadImage("Meter_ver.png");
  Empty.resize(490/5, 2025/5);

  BertMom = loadImage("Mymomv2.png");
  BertMom.resize(200, 200);

  BertMomAngry = loadImage("Mymom_red_face.png");
  BertMomAngry.resize(200, 200);
  
  Bar[0] = loadImage("Bar_ver.png");
  Bar[1] = loadImage("RedBar_ver.png");
  Bar[0].resize(343/5, 1904/5);
  Bar[1].resize(343/5, 1904/5);
  
}
