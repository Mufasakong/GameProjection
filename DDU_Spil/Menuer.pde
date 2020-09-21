class Menuer extends nullerTask {
  
  PVector Start = new PVector(width/2, 405);
  PVector Desc = new PVector(width/2, 647);
  PVector Exit = new PVector(width/2, 890);
  PVector Retry = new PVector(1436, 790);
  PVector Back = new PVector(191, 115);
  PVector Menu = new PVector(482, 790);
  PVector ButtonSize = new PVector(505, 135);
  
  Menuer() {
    
  }
  
  void startMenu() {
    image(startMenuB, width/2, height/2);
    image(Button[0], Start.x, Start.y);
    image(Button[1], Desc.x, Desc.y);
    image(Button[2], Exit.x, Exit.y);
    if (AreaCheck(Start.x, Start.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[0], Start.x, Start.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    } 
    if (AreaCheck(Desc.x, Desc.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[1], Desc.x, Desc.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    } 
    if (AreaCheck(Exit.x, Exit.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[2], Exit.x, Exit.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
    
    
  } 
  void startMenuKnap() {
    if (AreaCheck(Start.x, Start.y, ButtonSize.x, ButtonSize.y)) {
      println("Første knap er trykket");
      Scene = 1;
    }
    if (AreaCheck(Desc.x, Desc.y, ButtonSize.x, ButtonSize.y)) {
      println("gameRules knap er trykket");
      Scene = -3;
    }
    if (AreaCheck(Exit.x, Exit.y, ButtonSize.x, ButtonSize.y)) {
      println("Slutknap knap er trykket");
      exit();
    }
  }

  void winScreen() {
    image(winScreen, width/2, height/2);
    image(Button[3], Retry.x, Retry.y);
    image(Button[5], Menu.x, Menu.y);
    if (AreaCheck(Retry.x, Retry.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[3], Retry.x, Retry.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
    if (AreaCheck(Menu.x, Menu.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[5], Menu.x, Menu.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
  }

  void winScreenKnap() {
    if (AreaCheck(Retry.x, Retry.y, ButtonSize.x, ButtonSize.y)) {
      println("WinScreen try again knap er trykket");
      restart();
      Scene = 1;
    }
    if (AreaCheck(Menu.x, Menu.y, ButtonSize.x, ButtonSize.y)) {
      println("WinScreen hovedmenu knap er trykket");
       restart();
       Scene = 0;
    }
  }

  void loseScreen() {
    image(loseScreen, width/2, height/2);
    image(Button[3], Retry.x, Retry.y);
    image(Button[5], Menu.x, Menu.y);
   if (AreaCheck(Retry.x, Retry.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[3], Retry.x, Retry.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
    if (AreaCheck(Menu.x, Menu.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[5], Menu.x, Menu.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
  }

  void loseScreenKnap() {
    if (AreaCheck(Retry.x, Retry.y, ButtonSize.x, ButtonSize.y)) {
      println("loseScreen try again knap er trykket");
      restart();
      Scene = 1;
    }
    if (AreaCheck(Menu.x, Menu.y, ButtonSize.x, ButtonSize.y)) {
      println("loseScreen hovedmenu knap er trykket");
      restart();
      Scene = 0;
    }
  }

  void gameRules() {
    image(gameRules, width/2, height/2);
    image(Button[4], Back.x, Back.y);
    if (AreaCheck(Back.x, Back.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[4], Back.x, Back.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
  }


  void gameRulesKnap() {
    if (AreaCheck(Back.x, Back.y, ButtonSize.x, ButtonSize.y)) {
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
