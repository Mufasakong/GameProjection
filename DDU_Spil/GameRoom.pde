class GameRoom {

  PVector BertPos = new PVector(width/2, height/2+200);


  //Closet
  PVector ClosetPos = new PVector(width/2-10, height/2-225);
  PVector ClosetSize = new PVector(300, 267);

  PVector DresserPos = new PVector(1450, 493);
  PVector DresserSize = new PVector(355, 274);

  PVector BedPos = new PVector(430, 635);
  PVector BedSize = new PVector(355, 100);

  GameRoom() {
   
  }

  

  void MouseInteractions() {
    if (AreaCheck(ClosetPos.x, ClosetPos.y, ClosetSize.x, ClosetSize.y)) {
      Scene = 2;
    }
    if (AreaCheck(DresserPos.x, DresserPos.y, DresserSize.x, DresserSize.y)) {
      Scene = 3;
    }
    if (AreaCheck(BedPos.x, BedPos.y, BedSize.x, BedSize.y)) {
      Scene = 4;
    }
  }

  void display() {
    imageMode(CENTER);
    image(Room, width/2, height/2);
    image(Bertram, BertPos.x, BertPos.y);
    image(Bed, 449, 550);
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
      vertex(624, 564);
      vertex(624, 615);
      endShape(CLOSE);
    }
  }
}
