class KommodeTask{

  //variabler
  Boolean kommodeToy = true;

  void displayOpenKommode() {
    image(KommodeOpen,width/2,height/2);
    image(RT, 700, 680);
    image(LBT, 725, 680);
    image(LT, 750, 680);
    if (kommodeToy) {
      image(Isbjoern, 1200, 650);
    }
  }

  void kommodeOpenKnap() {
    if (kommodeToy == true) {
      if (mouseX > 1010 && mouseX < 1010 + 365 && mouseY > 530 && mouseY < 530 + 235) {
      toy = toy + 1;
      kommodeToy = false;
      }
    } else {
      Scene = 1;
    }
  }
}
