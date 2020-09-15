class UI {
  PImage Bar;
  PImage Empty;
  
  float i = -250;
  
  PFont Skater;
  
  UI () {
    Bar = loadImage("Bar.png");
    Empty = loadImage("Meter.png");
    Skater = createFont("Skater.ttf", 64);
    textFont(Skater);
    
  }
  
  void UIDisplay() {
    if (i < 170){
        i++;
      }
    image(Bar, i, 100, 1904/5, 343/5);
    image(Empty, 170, 100, 2025/5, 490/5);
    if (mouseX > width/2-3-270/2 && mouseX < width/2-3+270/2 && mouseY < height/2-200+270/2 && mouseY > height/2-200-270/2)  {
    fill(255);
    text("Skabet", width-250, height-200);
    }
    text(floor(i+250), width-250, height-150);
    }
  }
 
