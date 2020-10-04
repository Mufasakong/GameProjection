import de.bezier.data.sql.*; //<>//
import java.security.*;

SQLite db;

boolean send = false;
String msg = "";
ArrayList<InputField> textboxes = new ArrayList<InputField>();
String userTekst, passTekst, msgTekst;
StringBuffer hashedValueBuffer = new StringBuffer();



public int Phase = 0;

void setup() //<>//
{
  size( 1200, 800 );
  background(180);
  fill(0);
  textSize(24);
    text("Username", 325, 75);
  InitLayout();
  db = new SQLite( this, "test.db" );  // open database file

  if ( db.connect() )
  {
    String[] tableNames = db.getTableNames();

    db.query( "SELECT * FROM %s", tableNames[0] );

    while (db.next())
    {
      TableOne t = new TableOne();
      db.setFromRow( t );
      println(t.User);
      println(t.Password);
    }
  }
}

void draw() {
  //background(180);
  if (Phase == 0) {
  userTekst = textboxes.get(Phase).Text; 
  } else if (Phase == 1) {
    //text("Password", 325, 75);
  passTekst = textboxes.get(Phase).Text;
  } else if (Phase == 2) {
    text("Password", 325, 75);
  msgTekst = textboxes.get(Phase).Text;
  }
  
  
  
  for (InputField t : textboxes) {
    t.DRAW();
  }
  if (Phase != 2) {
  fill(180);
  rect((width - 700) / 2, 500, 700, 300);
  } else {
    fill(180);
  rect((width - 300) / 2, 50, 300, 35);
  }
}

void InitLayout() {
  InputField User = new InputField((width - 300) / 2, 50, 300, 35);
  InputField Password = new InputField((width - 300) / 2, 50, 300, 35);
  InputField Message = new InputField((width - 700) / 2, 500, 700, 300);
  
   textboxes.add(User); 
  textboxes.add(Password);
  textboxes.add(Message);
 
}

void keyPressed() {


  /*
  if (send) {
   println("krypteret");
   send=false;
   } */

  for (InputField t : textboxes) {
    if (t.KEYPRESSED(key, keyCode)) {
      clear(); 
      background(180);



      if (Phase == 0) {
      dat();
      send = true;
      msg = "Username:" + userTekst;
      fill(0);
      text(msg, 10, 260);
      fill(0, 200, 0);
      rect(width/2, height/2, 50, 50); 
      } else if (Phase == 1) {
      dat();
      send = true;
      msg = "Username:" + userTekst + "\n" + "Password: " + passTekst + "\n" + "Encrypted: " + hashedValueBuffer.toString();;
      fill(0);
      text(msg, 10, 260);
      fill(0, 200, 0);
      rect(width/2, height/2, 50, 50); 
      } else if (Phase == 2) {
      msg = msgTekst;
      send = true;
      fill(0,0,235);
      text(msg, 800, 400);
      
      }
      //db.saveToDatabase(passTekst);

      //Her udskrives den oprindelige tekst

      println("Den oprindelige tekst: "+ passTekst);
      //Her udskrives "hash-værdien" af teksten
      println("SHA-256 værdien af teksten: " + hashedValueBuffer.toString());
    }}
  }


void mousePressed() {
  for (InputField t : textboxes) {
    t.PRESSED(mouseX, mouseY);
  }
  
  if (Phase == 0 && send == true) {
    if (mouseX >= width/2 && mouseX <= width/2 + 50) {
      if (mouseY >= height/2 && mouseY <= height/2 + 50) {
        clear();
        background(180);
        Phase = 1;
        send = false;
      }
    }
  } else if (Phase == 1 && send == true) {
    if (mouseX >= width/2 && mouseX <= width/2 + 50) {
      if (mouseY >= height/2 && mouseY <= height/2 + 50) {
        clear();
        background(180);
        Phase = 2;
        send = false;
      }
    }
  }
}

void dat() {
  try {
    //Vha. MessageDigest kan vi anvende en hashing algoritme.... her SHA-256 ...
    //prøv f.eks. MD-5 og se om du kan bryde den ved at søge på nettet!
    MessageDigest md = MessageDigest.getInstance("SHA-256"); 

    //Input er en tekst der skal "hashes"

    //MassageDigest objektet "fodres" med teksten, der skal "hashes"
    md.update(passTekst.getBytes());    

    //digest funktionen giver "hash-værdien", men i hexadecimale bytes 
    byte[] byteList = md.digest();

    //Her anvendes processings hex funktion, der kan konvertere hexadecimale bytes til Strings
    //så det er muligt at læse "hash-værdien"

    hashedValueBuffer  = new StringBuffer();

    for (byte b : byteList) {
      hashedValueBuffer.append(hex(b));
    }
  }

  catch (Exception e) {
    System.out.println("Exception: "+e);
  }
}

class TableOne
{
  public String User;
  public String Password;

  public String toString ()
  {
    return String.format("User: %s Password: %s", User, Password);
  }
}
