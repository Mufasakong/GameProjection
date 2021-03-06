public class UI extends GameRoom {
  int resizeBarB = 343;
  int resizeBarH = 1904;

  PFont Skater;

  UI () {
    

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
      image(Bar[0], 100, (i*5/3));
      image(Empty, 100, 300);
      image(BertMom, 100, 94);
    } else {
      image(Bar[1], 100, (i*5/3));
      image(Empty, 100, 300);
      image(BertMomAngry, 100, 94);
    }
    textSize(64);
    fill(255);
    text(round(180-i), 66, 550);

    //Score
    text(round(0+toy)+"/3", 1700, 100);

    
  }
}
