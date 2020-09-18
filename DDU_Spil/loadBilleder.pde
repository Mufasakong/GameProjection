  PImage Room;
  PImage Bertram;
  PImage Bed;
  
  PImage car;
  PImage[] Arm = new PImage[2];
  
  PImage nullerman;
  PImage floor;
  
  PImage startMenuB;
  PImage winScreen;
  PImage loseScreen;
  PImage gameRules;


void loadBilleder(){
    car = loadImage("ToyCar.png");
    car.resize(2123/15, 1361/15);
    
    Arm[0] = loadImage("BertArm.png");
    Arm[1] = loadImage("BertArm2.png");
    Arm[0].resize(781/3, 2801/3+450);
    Arm[1].resize(781/3, 2801/3+450);
    
    floor = loadImage("Floor.png");
    floor.resize(1920, 1080);
    
    nullerman = loadImage("Fnuller.png");
    nullerman.resize(50,50);
    
    Room = loadImage("GameRoom.png");
    Room.resize(round(4345/2.5), round(2906/2.5));
    Bertram = loadImage("Bert.png");
    Bertram.resize(153, 326);

    Bed = loadImage("Bed.png");
    Bed.resize(2510/4, 1788/4);
    
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
  
}
