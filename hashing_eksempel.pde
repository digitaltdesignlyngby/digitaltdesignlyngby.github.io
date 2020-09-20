import java.security.*;


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
  println("Den orindelige tekst: "+ inputTekst);
  //Her udskrives "hash-værdien" af teksten
  println("SHA-256 værdien af teksten: " +hashedValueBuffer.toString());
  
}
catch (Exception e) {
  System.out.println("Exception: "+e);
}
