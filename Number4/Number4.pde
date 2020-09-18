ArrayList<Task6> task6 = new ArrayList<Task6>();
Task6 obj6;
int m;
int fmass;
boolean GrabCar = false;
int carY;

void setup() {
  size(1920, 1080);
  
  
  loadBilleder();
  
  for (int i = 0; i < 100; i++) {
    task6.add(new Task6());
  }
  
  obj6 = new Task6();
  m = 0;
  fmass = 0;
  carY = -50;
}

void draw() {
  //clear();
  background(230, 230, 250);
  obj6.movingImages();
      
    
  if (GrabCar == true) {
  for (Task6 t6 : task6) {
    noCursor();
    t6.fall();
    t6.display();
    }
    
  }
  
  
}

void mouseReleased() {
  if (mouseX > width/2-2123/15/2 && mouseX < width/2+2123/15/2 && mouseY < 250+1361/15/2 && mouseY > 250-1361/15/2) {
    if (carY ==250) {
    GrabCar = true;
    }
  }
}

class Task6 {
  PVector obstacles = new PVector(random(width), 0);
  PVector gravity = new PVector(random(0, 20), random(4, 20)); 
  int bY = 0;
  //PImage car;
 // PImage Arm;
  
 // PImage floor;

  Task6() {
   /* car = loadImage("Toycar.png");
    car.resize(2123/15, 1361/15);
    
    Arm = loadImage("BertArm.png");
    Arm.resize(781/3, 2801/3+450);
    
    floor = loadImage("Floor.png");
    floor.resize(1920, 1080);*/
  }

  void display() {
    stroke(138, 43, 226);
    fill(255);
    image(nullerman, obstacles.x, obstacles.y, 50, 50);
    
    if (dist(mouseX, mouseY, obstacles.x, obstacles.y) < 50) {
      rectMode(CENTER);
      rect(mouseX, mouseY, 50, 50);
      m += 1;
    }
    fill(0);
    textSize(64);
    text(m, 50, 50);
  }

  void fall() {
    obstacles.y = obstacles.y - gravity.y;
    gravity.y = gravity.y + 0.02;
  
  
  if (fmass < 300) {
    if (obstacles.y < 0) {
      obstacles.x = random(width);
      obstacles.y = random(height, 800);
      gravity.y = random(4, 10);
      fmass++;
      println(fmass);
      }
    }
  }
  
  void movingImages() {
  Floor();
  genstand();
  }
  
  void genstand() {
    imageMode(CENTER);
    if (GrabCar == false) {
    image(car, width/2, carY);
    } else if (GrabCar == true && carY == 250) {
      image(car, mouseX, mouseY);
    }
    
    if (GrabCar==true) {
    image(Arm[1], mouseX+100, mouseY+600);
    } else {
    image(Arm[0], mouseX+100, mouseY+600);
    }
  } 
  
  void Floor() {
    
    
    imageMode(CORNER);
    image(floor, 0, bY);
    image(floor, 0, bY+floor.height);
    
   if (GrabCar == true) {
           image(floor, 0, bY-floor.height);
    image(floor, 0, bY+floor.height);
     bY -= 5;   
   if (bY<-floor.height)
      bY=0;
    } else if (GrabCar == false) {
      image(floor, 0, bY-floor.height);
      if(carY < 250) {
      carY += 5;
      bY += 5;
        if (bY>height){
        bY = 0;
        }
      }
    }
  }

}
