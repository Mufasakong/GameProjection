// fjenett 20120226

import de.bezier.data.sql.*;
import java.security.*;

SQLite db;



void setup()
{
    size( 100, 100 );
    try {
  //Vha. MessageDigest kan vi anvende en hashing algoritme.... her SHA-256 ...
  //prøv f.eks. MD-5 og se om du kan bryde den ved at søge på nettet!
  MessageDigest md = MessageDigest.getInstance("SHA-256"); 
  
  //Input er en tekst der skal "hashes"
  String inputTekst="aabbccddeeff";
    
  //MassageDigest objektet "fodres" med teksten, der skal "hashes"
    md.update(inputTekst.getBytes());    

  //digest funktionen giver "hash-værdien", men i hexadecimale bytes 
  byte[] byteList = md.digest();
  
  //Her anvendes processings hex funktion, der kan konvertere hexadecimale bytes til Strings
  //så det er muligt at læse "hash-værdien"
  StringBuffer hashedValueBuffer = new StringBuffer();
  for (byte b : byteList)hashedValueBuffer.append(hex(b)); 
  
  //Her udskrives den oprindelige tekst
  println("Den oprindelige tekst: "+ inputTekst);
  //Her udskrives "hash-værdien" af teksten
  println("SHA-256 værdien af teksten: " +hashedValueBuffer.toString());
  
}
catch (Exception e) {
  System.out.println("Exception: "+e);
}

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


class TableOne
{
    public String User;
    public String Password;
    
    public String toString ()
    {
        return String.format("User: %s Password: %s", User, Password);
    }
}
