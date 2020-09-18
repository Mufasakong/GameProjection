class nullerTask {
  PVector obstacles = new PVector(random(width), height);
  PVector gravity = new PVector(random(0, 20), random(4, 20)); 
  int bY = 0;
  //PImage car;
  // PImage Arm;
int fmass;

  // PImage floor;

  nullerTask() {
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
    textSize(64);
    text(m, 50, 50);
  }

  void fall() {
    obstacles.y = obstacles.y - gravity.y;
    gravity.y = gravity.y + 0.02;


    if (obstacles.y < 0) {
      if (fmass < 300) {
        obstacles.x = random(width);
        obstacles.y = random(height, 800);
        gravity.y = random(4, 20);
        fmass++;
      }
      
    } else if (fmass > 300) {
      Scene = 1;
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
      if (carY < 250) {
        carY += 5;
        bY += 5;
        if (bY>height) {
          bY = 0;
        }
      }
    }
  }
}
