import processing.serial.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.io.PrintWriter;
import java.io.FileWriter;
import java.io.*;
import java.io.PrintStream;
import java.io.File;
import processing.net.*; 

PrintWriter output;
String var = "";
int x;
String serialcheck = "/dev/tty.wchusbserial1450";

Serial myPort;  

void setup() {
   // detect command line invocation
  if (args != null) {
    if (args.length != 0) {
      println("args!");
       }
  }
  String fileName = "/Users/d059566/Documents/Avocado_Buster/Data/" + new SimpleDateFormat("yyyy-MM-dd-HH;mm;ss").format(new Date()) + ".txt";
  output = createWriter(fileName);
  printArray(Serial.list());
  //if (Serial.list().toString().matches(serialcheck)){
  myPort = new Serial(this, "/dev/tty.wchusbserial1430", 115200);
//}
//{ println("No serial connector found");
//}
}

void draw() {
  //try {
    while (myPort.available() > 0) {
    String inBuffer = myPort.readString();
    //String[] valueArray = split(inBuffer, ' ');
//println(valueArray);
if (inBuffer == null) {
inBuffer = "0";
}
      println(inBuffer);
      //System.out.println(inBuffer);
      //PrintStream fileStream = new PrintStream("/Users/d059566/Downloads/test.txt");
      //System.setOut(fileStream);
      //saveStrings("/Users/d059566/Downloads/output.txt", valueArray);
  output.append(inBuffer);
  output.flush(); // Writes the remaining data to the file
  //output.close(); // Finishes the file
  delay(2000);
exit();
}
  
  //}
//catch (FileNotFoundException fnf) {
//    // TODO Auto-generated catch block
//    fnf.printStackTrace();
//} 

}