//Globale Variabler


//Objekter
GameRoom GR;

//Setup
void setup(){
  //fullScreen();
  size(1920, 1080);
  imageMode(CENTER);
  rectMode(CENTER);
  background(0, 175, 0);
  
  GR = new GameRoom();
}

void draw(){
<<<<<<< HEAD
  GR.display(); 
}

void mousePressed(){
  GR.MouseInteractions();
=======
  GR.displayGameRoom();
>>>>>>> 734f32f50f45812ddec9ec7eda35a250abebc6ad
}
