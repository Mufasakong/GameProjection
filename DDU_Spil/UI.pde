public class UI extends GameRoom {
  PImage Empty;
  PImage BertMom;

  PImage[] Bar = new PImage[2];

  float i = 0;

  PFont Skater;

  UI () {
    Empty = loadImage("Meter.png");
    Empty.resize(2025/5, 490/5);

    BertMom = loadImage("Mymom.png");
    BertMom.resize(200, 200);

    Bar[0] = loadImage("Bar.png");
    Bar[1] = loadImage("RedBar.png");
    Bar[0].resize(1904/5, 343/5);
    Bar[1].resize(1904/5, 343/5);

    Skater = createFont("Skater.ttf", 64);
    textFont(Skater);
  }

  void UIDisplay() {
    if (AreaCheck(ClosetPos.x, ClosetPos.y, ClosetSize.x, ClosetSize.y)) {
      fill(255);
      textSize(52);
      text("Skabet", width-250, height-200);
    }
    if (AreaCheck(DresserPos.x, DresserPos.y, DresserSize.x, DresserSize.y)) {
      fill(255);
      textSize(52);
      text("Kommoden", width-250, height-200);
    }
    if (AreaCheck(BedPos.x, BedPos.y, BedSize.x, BedSize.y)) {
      fill(255);
      textSize(42);
      text("Under Sengen", width-250, height-200);
    }
  }

  void Progress() {
    if (i <= 180) {
      i += 1/frameRate;
    }
    if (i < 120) {
      image(Bar[0], i*5/3, 100);
    } else {
      image(Bar[1], i*5/3, 100);
    }
    image(Empty, 300, 100);
    textSize(64);
    text(round(180-i), i*5/3+100, 120);
    image(BertMom, 95, 100);
    
    //Score
    text(round(0+toy)+"/5",1700,100);

    //GAMEOVER
    if (180-i < 1) {
    }
  }
}
