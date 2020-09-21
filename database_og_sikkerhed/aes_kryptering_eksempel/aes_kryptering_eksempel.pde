//VIGTIGT:
//javax.crypto pakken ligger ikke i processing... desværre
//Men du kan hente den på f.eks.http://www.java2s.com/Code/Jar/j/Downloadjavaxcryptojar.htm
//og lave drag/drop i dit processing vindue, så burde det virke!!
import javax.crypto.*; 

//de andre to ligger i processing allerede
import java.security.*;
import java.util.Arrays;
import java.util.Base64;

try {

  //Koden nedenfor har jeg mere eller mindre hugget fra: 
  //https://howtodoinjava.com/java/java-security/java-aes-encryption-example/
  
  String myKey   = "password";
  String besked  = "Dette er hemmeligt: Der er kage i elevophold!";

  //Sådan laves en nøgle, variablen kaldet "key"
  byte[] key = myKey.getBytes("UTF-8");
  MessageDigest sha = MessageDigest.getInstance("SHA-1");
  key = sha.digest(key);
  key = Arrays.copyOf(key, 16); 
  SecretKeySpec secretKey = new SecretKeySpec(key, "AES");

  //sådan kan man "kryptere"
  Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
  cipher.init(Cipher.ENCRYPT_MODE, secretKey);
  String beskedCrypteret = Base64.getEncoder().encodeToString(cipher.doFinal(besked.getBytes("UTF-8")));

  //sådan kan man "dekryptere"
  cipher.init(Cipher.DECRYPT_MODE, secretKey);
  String beskedDekrypteret =  new String(cipher.doFinal(Base64.getDecoder().decode(beskedCrypteret)));
  
  println("original besked: "+ besked);
  println("krypetert: " + beskedCrypteret);
  println("dekrypteret: " + beskedDekrypteret);

}
catch(Exception e) {
  println("" + e);
}
