// fjenett 20120226 //<>// //<>// //<>// //<>// //<>// //<>// //<>//

import de.bezier.data.sql.*;
import java.security.*;

SQLite db;

boolean send = false;
String msg = "";
ArrayList<InputField> textboxes = new ArrayList<InputField>();
String inputTekst;
StringBuffer hashedValueBuffer = new StringBuffer();

void setup()
{
  size( 1200, 800 );
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
      println( t );
    }
  }
}

void draw() {
  //background(180);
  inputTekst = textboxes.get(1).Text;

  for (InputField t : textboxes) {
    t.DRAW();
  }
}

void InitLayout() {
  InputField User = new InputField((width - 300 / 2), 50, 300, 35);
  textboxes.add(User);

  InputField Password = new InputField((width - 300) / 2, 100, 300, 35);
  textboxes.add(Password);
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



      send = true;
      dat();
      msg = "Password: " + textboxes.get(1).Text + "\n" + "Encrypted: " + hashedValueBuffer.toString();
      text(msg, 10, 260);

      //Her udskrives den oprindelige tekst

      println("Den oprindelige tekst: "+ inputTekst);
      //Her udskrives "hash-værdien" af teksten
      println("SHA-256 værdien af teksten: " + hashedValueBuffer.toString());
    }
  }
}

void mousePressed() {
  for (InputField t : textboxes) {
    t.PRESSED(mouseX, mouseY);
  }
}

void dat() {
  try {
    //Vha. MessageDigest kan vi anvende en hashing algoritme.... her SHA-256 ...
    //prøv f.eks. MD-5 og se om du kan bryde den ved at søge på nettet!
    MessageDigest md = MessageDigest.getInstance("SHA-256"); 

    //Input er en tekst der skal "hashes"


    //MassageDigest objektet "fodres" med teksten, der skal "hashes"
    md.update(inputTekst.getBytes());    

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
