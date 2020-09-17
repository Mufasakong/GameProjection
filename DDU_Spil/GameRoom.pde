class GameRoom {

  PImage Room;
  PImage Bertram;
  PImage Bed;

  PVector BertPos = new PVector(width/2, height/2+200);


  //Closet
  PVector ClosetPos = new PVector(width/2-10, height/2-225);
  PVector ClosetSize = new PVector(300, 267);

  PVector DresserPos = new PVector(1450, 493);
  PVector DresserSize = new PVector(355, 274);

  PVector BedPos = new PVector(430, 635);
  PVector BedSize = new PVector(355, 100);

  GameRoom() {
    Room = loadImage("GameRoom.png");
    Room.resize(round(4345/2.5), round(2906/2.5));
    Bertram = loadImage("Bert.png");
    Bertram.resize(153, 326);

    Bed = loadImage("Bed.png");
    Bed.resize(2510/4, 1788/4);
  }

  public boolean AreaCheck(float x, float y, float w, float h) {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY < y+h/2 && mouseY > y-h/2) {
      return true;
    } else {
      return false;
    }
  }

  void MouseInteractions() {
    if (AreaCheck(ClosetPos.x, ClosetPos.y, ClosetSize.x, ClosetSize.y)) {
      Scene = 2;
    }
    if (AreaCheck(DresserPos.x, DresserPos.y, DresserSize.x, DresserSize.y)) {
      Scene = 3;
    }
    if (AreaCheck(BedPos.x, BedPos.y, BedSize.x, BedSize.y)) {
    }
  }

  void display() {
    image(Room, width/2, height/2);
    image(Bertram, BertPos.x, BertPos.y);
    image(Bed, 319, height/2+80);
  }

  void mouseCheck() {
    noFill();
    if (AreaCheck(ClosetPos.x, ClosetPos.y, ClosetSize.x, ClosetSize.y)) {
      strokeWeight(10);
      stroke(255, 255, 0);
      rect(ClosetPos.x, ClosetPos.y, ClosetSize.x, ClosetSize.y);
    }

    if (AreaCheck(DresserPos.x, DresserPos.y, DresserSize.x, DresserSize.y)) {
      strokeWeight(10);
      stroke(255, 255, 0);
      beginShape();
      vertex(1272, 582);
      vertex(1272, 392);
      vertex(1343, 385);
      vertex(1626, 421);
      vertex(1626, 615);
      vertex(1574, 636);
      endShape(CLOSE);
    }

    if (AreaCheck(BedPos.x, BedPos.y, BedSize.x, BedSize.y)) {
      strokeWeight(10);
      stroke(255, 255, 0);
      beginShape();
      vertex(246, 702);
      vertex(246, 629);
      vertex(604, 564);
      vertex(604, 616);
      endShape(CLOSE);
    }
  }
}
