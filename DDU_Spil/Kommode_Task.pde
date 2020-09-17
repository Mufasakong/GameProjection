class KommodeTask{

  //variabler
  Boolean kommodeToy = true;

  void displayOpenKommode() {
    image(KommodeOpen,width/2,height/2);
    if (kommodeToy) {
      image(Isbjoern, 1240, 650);
    }
  }

  void kommodeOpenKnap() {
    if (kommodeToy == true) {
      if (mouseX > 1050 && mouseX < 1050 + 365 && mouseY > 530 && mouseY < 530 + 235) {
      toy = toy + 1;
      kommodeToy = false;
      }
    } else {
      Scene = 1;
    }
  }
}
