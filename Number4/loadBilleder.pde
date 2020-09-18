
  PImage car;
  PImage[] Arm = new PImage[2];
  
  PImage nullerman;
  PImage floor;


void loadBilleder(){
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

}
