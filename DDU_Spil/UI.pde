class UI {
  PImage Bar;
  PImage Empty;
  int i = -250;
  
  UI () {
    Bar = loadImage("Bar.png");
    Empty = loadImage("Meter.png");
  }
  
  void UIDisplay() {
    if (i < 170){
      i++;
      }
    image(Bar, i, 100, 1904/5, 343/5);
    image(Empty, 170, 100, 2025/5, 490/5);
    }
  }
