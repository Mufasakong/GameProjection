class SkabTask {

  //variabler
  Boolean skabToy = true;

  void displayOpenSkab() {
    image(OpenCloset, width/2, height/2);
    if (skabToy) {
      image(Grimlock, 1240, 650);
    }
  }

  void skabOpenKnap() {
    if (mouseX > 1150 && mouseX < 1150 + 200 && mouseY > 550 && mouseY < 550 + 200) 
      println("Klikker på mit toy");
    if (skabToy == true) {
      toy = toy + 1;
      skabToy = false;
    } else {
      Scene = 1;
    }
  }
}
