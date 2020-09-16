class SkabTask {

  void displayOpenSkab() {
    image(OpenCloset, width/2, height/2);
    image(Grimlock, 1240, 650);

    if (mousePressed ==true) {
      if (mouseX>1150 &&mouseX<1150+200 && mouseY> 550 && mouseY < 550+200) {
        println("Transformer trykket");
        Scene = 1;
      }
    }
  }
}
