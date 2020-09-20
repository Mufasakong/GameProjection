class Menuer extends nullerTask {
  
  PVector StartSpilPos = new PVector(width/2, 405);
  PVector SpildescPos = new PVector(width/2, 647);
  PVector ForladSpilPos = new PVector(width/2, 890);
  PVector ProvIgenPos = new PVector(1436, 790);
  PVector TilbagePos = new PVector(191, 115);
  PVector HovedmenuPos = new PVector(482, 790);
  PVector ButtonSize = new PVector(505, 135);
  
  Menuer() {
    
  }
  
  void startMenu() {
    image(startMenuB, width/2, height/2);
    image(Button[0], StartSpilPos.x, StartSpilPos.y);
    image(Button[1], SpildescPos.x, SpildescPos.y);
    image(Button[2], ForladSpilPos.x, ForladSpilPos.y);
    if (AreaCheck(StartSpilPos.x, StartSpilPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[0], StartSpilPos.x, StartSpilPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    } 
    if (AreaCheck(SpildescPos.x, SpildescPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[1], SpildescPos.x, SpildescPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    } 
    if (AreaCheck(ForladSpilPos.x, ForladSpilPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[2], ForladSpilPos.x, ForladSpilPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
    
    
  } 
  void startMenuKnap() {
    if (AreaCheck(StartSpilPos.x, StartSpilPos.y, ButtonSize.x, ButtonSize.y)) {
      println("Første knap er trykket");
      Scene = 1;
    }
    if (AreaCheck(SpildescPos.x, SpildescPos.y, ButtonSize.x, ButtonSize.y)) {
      println("gameRules knap er trykket");
      Scene = -3;
    }
    if (AreaCheck(ForladSpilPos.x, ForladSpilPos.y, ButtonSize.x, ButtonSize.y)) {
      println("Slutknap knap er trykket");
      exit();
    }
  }

  void winScreen() {
    image(winScreen, width/2, height/2);
    image(Button[3], ProvIgenPos.x, ProvIgenPos.y);
    image(Button[5], HovedmenuPos.x, HovedmenuPos.y);
    if (AreaCheck(ProvIgenPos.x, ProvIgenPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[3], ProvIgenPos.x, ProvIgenPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
    if (AreaCheck(HovedmenuPos.x, HovedmenuPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[5], HovedmenuPos.x, HovedmenuPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
  }

  void winScreenKnap() {
    if (AreaCheck(ProvIgenPos.x, ProvIgenPos.y, ButtonSize.x, ButtonSize.y)) {
      println("WinScreen try again knap er trykket");
      restart();
      Scene = 1;
    }
    if (AreaCheck(HovedmenuPos.x, HovedmenuPos.y, ButtonSize.x, ButtonSize.y)) {
      println("WinScreen hovedmenu knap er trykket");
       restart();
       Scene = 0;
    }
  }

  void loseScreen() {
    image(loseScreen, width/2, height/2);
    image(Button[3], ProvIgenPos.x, ProvIgenPos.y);
    image(Button[5], HovedmenuPos.x, HovedmenuPos.y);
   if (AreaCheck(ProvIgenPos.x, ProvIgenPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[3], ProvIgenPos.x, ProvIgenPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
    if (AreaCheck(HovedmenuPos.x, HovedmenuPos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[5], HovedmenuPos.x, HovedmenuPos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
  }

  void loseScreenKnap() {
    if (AreaCheck(ProvIgenPos.x, ProvIgenPos.y, ButtonSize.x, ButtonSize.y)) {
      println("loseScreen try again knap er trykket");
      restart();
      Scene = 1;
    }
    if (AreaCheck(HovedmenuPos.x, HovedmenuPos.y, ButtonSize.x, ButtonSize.y)) {
      println("loseScreen hovedmenu knap er trykket");
      restart();
      Scene = 0;
    }
  }

  void gameRules() {
    image(gameRules, width/2, height/2);
    image(Button[4], TilbagePos.x, TilbagePos.y);
    if (AreaCheck(TilbagePos.x, TilbagePos.y, ButtonSize.x, ButtonSize.y)) {
      image(Button[4], TilbagePos.x, TilbagePos.y, ButtonSize.x*1.05, ButtonSize.y*1.05);
    }
  }


  void gameRulesKnap() {
    if (AreaCheck(TilbagePos.x, TilbagePos.y, ButtonSize.x, ButtonSize.y)) {
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
