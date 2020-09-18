class nullerTask {
  PVector obstacles = new PVector(random(width), height);
  PVector gravity = new PVector(random(0, 20), random(4, 20)); 
  int bY = 0;
  int endGame;
  
  //PImage car;
  // PImage Arm;


  // PImage floor;

  nullerTask() {
    endGame = 0;
  }

void display() {
  stroke(138, 43, 226);
    
    image(nullerman, obstacles.x, obstacles.y, 50, 50);

    if (dist(mouseX, mouseY, obstacles.x, obstacles.y) < 50) {
      if (180-i > 1) {
      fill(200, 0, 0);
      text("-2", 66, 600);
      i += 2;
      }
      
    }
    textSize(64);
  }

  void fall() {
    obstacles.y = obstacles.y - gravity.y;
    gravity.y = gravity.y + 0.02;
    

    if (obstacles.y < 0) {
      if (fmass < 300) {
        if (obstacles.y == 0 && fmass >= 300) {
        gravity.y = random(4, 20);
        obstacles.x = random(width);
      }
        obstacles.y = random(height, 800);
        fmass++; 
        
      }
         
    } if (endGame <= 350) {
      endGame++;
      println(endGame);
      
    }  if (endGame == 350){
      Scene = 1;
      if (toy == 2){
      toy = 3;
      }
      
    } 
    
  }
  
  void nullermen() {
        if (GrabCar == true) {
    fall();
    display();
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
  
  void GetCar() {
  if (mouseX > width/2-2123/15/2 && mouseX < width/2+2123/15/2 && mouseY < 250+1361/15/2 && mouseY > 250-1361/15/2) {
      if (carY == 250 && GrabCar == false) {
        GrabCar = true;
        if (toy < 2) {
        toy++;
        }
      }
    }
  }
}
