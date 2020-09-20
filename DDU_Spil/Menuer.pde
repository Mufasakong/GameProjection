class Menuer extends nullerTask {
  
  Menuer() {
    
  }
  
  void startMenu() {
    image(startMenuB, width/2, height/2);
  } 
  void startMenuKnap() {
    if (mouseX > 706 && mouseX < 706 + 507 && mouseY > 337 && mouseY < 337 + 135) {
      println("Første knap er trykket");
      Scene = 1;
    }
    if (mouseX > 706 && mouseX < 706 + 507 && mouseY > 579 && mouseY < 579 + 135) {
      println("gameRules knap er trykket");
      Scene = -3;
    }
    if (mouseX > 706 && mouseX < 706 + 507 && mouseY > 822 && mouseY < 822 + 135) {
      println("Slutknap knap er trykket");
      exit();
    }
  }

  void winScreen() {
    image(winScreen, width/2, height/2);
  }

  void winScreenKnap() {
    if (mouseX > 1145 && mouseX < 1145 + 582 && mouseY > 704 && mouseY < 704 + 171) {
      println("WinScreen try again knap er trykket");
      restart();
      Scene = 1;
    }
    if (mouseX > 191 && mouseX < 1145 + 582 && mouseY > 704 && mouseY < 704 + 171) {
      println("WinScreen hovedmenu knap er trykket");
       restart();
       Scene = 0;
    }
  }

  void loseScreen() {
    image(loseScreen, width/2, height/2);
  }

  void loseScreenKnap() {
    if (mouseX > 1145 && mouseX < 1145 + 582 && mouseY > 704 && mouseY < 704 + 171) {
      println("loseScreen try again knap er trykket");
      restart();
      Scene = 1;
    }
    if (mouseX > 191 && mouseX < 191 + 582 && mouseY > 704 && mouseY < 704 + 171) {
      println("loseScreen hovedmenu knap er trykket");
      restart();
      Scene = 0;
    }
  }

  void gameRules() {
    image(gameRules, width/2, height/2);
  }


  void gameRulesKnap() {
    if (mouseX > 81 && mouseX < 81 + 219 && mouseY > 72 && mouseY < 72 + 86) {
      println("gameRules tilbage knap er trykket");
      Scene = 0;
    }
  }

  void restart() {
      
      
      
      
      toy = 0;
      i = 0;
      skabToy = true;
      kommodeToy = true;
      
      //Task 4
      
      GrabCar = false;
      carY = -50;
      bY = 0;
      endGame = 0;
        UST = new nullerTask();
        obstacles.x = random(width);
        obstacles.y = height;  
        gravity.x = random(0, 20);
        gravity.y = random(4, 20);
      nullermen();
      
      
  }
}
