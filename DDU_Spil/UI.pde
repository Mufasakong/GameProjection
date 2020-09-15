public class UI extends GameRoom {
  PImage Empty;
  PImage[] Bar = {loadImage("Bar.png"), loadImage("RedBar.png")};
 
  
  float i = -250;
  
  PFont Skater;
  
  UI () {
    Empty = loadImage("Meter.png");
    Skater = createFont("Skater.ttf", 64);
    textFont(Skater);
  }
  
  void UIDisplay() {
    if (AreaCheck(ClosetPos.x, ClosetPos.y, ClosetSize.x, ClosetSize.y))  {
    fill(255);
    textSize(52);
    text("Skabet", width-250, height-200);
    }
    if (AreaCheck(DresserPos.x, DresserPos.y, DresserSize.x, DresserSize.y))  {
    fill(255);
    textSize(52);
    text("Kommoden", width-250, height-200);
    }
    if (AreaCheck(BedPos.x, BedPos.y, BedSize.x, BedSize.y))  {
    fill(255);
    textSize(42);
    text("Under Sengen", width-250, height-200);
    
    }
    
    text(floor(i+250), width-250, height-150);
    }
    
   void Progress() {
   if (i < 170){
        i ++;
      }
      if (i < 120) {
    image(Bar[0], i, 100, 1904/5, 343/5);
      } else {
    image(Bar[1], i, 100, 1904/5, 343/5);
      }
    image(Empty, 170, 100, 2025/5, 490/5);
    }
  }
 
