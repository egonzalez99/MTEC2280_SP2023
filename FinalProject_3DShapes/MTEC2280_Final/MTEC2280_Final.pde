/* create a visual response as the user gets closer and farther to the device/
put sphere inside box and special effects at specific effects.
OR physics based swing saw with a ball that the user must balance going back & forth
*/
import processing.serial.*;

Serial myPort;

String  ang="";
String distance="";
String data="";

PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

int val = 0;
int valM = 0;
 
void setup() {
  //size(1000, 1000);
  size(1000, 1000, P3D);
  noFill();
  
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}
        
void draw() {
  background(255);
  
  seeSaw();
  ballOne();
  seeSaw();
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  if ( myPort.available() > 0) { // If data is available,
    valM= myPort.read(); // read it and store it in val
  }
  
}


void seeSaw() {
  /*
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  */
  float val = map(valM, 0, width, 0, height);
  strokeWeight(20);
  noFill();
  translate(width/2, height/2);
  rotateZ(map(width/2, 0, width/2, 0, PI));
  box(width/2 + val, height/2 + val , val);
  scale(0.5, 0.5);
  box(width/2 + val, height/2 + val, val);
  
  //ellipse(width/2 + x, height/2 + x, x,  x);
}

void ballOne() {
  /*
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  */
  float rotationSpeed = 0.01;// control the frame rate to control the rotational speed
  
  background(255);
  stroke(10, 75);
  translate(10, 30, 60);
  
  rotateX(frameCount * rotationSpeed);
  rotateY(frameCount * rotationSpeed);
  fill(valM , 170, 210); // fill the the color range as the sphere increase its value on the axis
  sphereDetail(valM / 2); //the sphere becomes more detail as the value increased. While scaling the detail to run smoother
  sphere(50);
  
  //create a 3D grid for with a coordinate and spcing
   for (int x = 100; x <= width/2; x += 80) { 
    for (int y = 100; y <= height/2; y += 80) {
      pushMatrix(); //save current location
      translate(x, y);
      rotateY(map(valM , 0, width , 0, PI/2));
      rotateX(map(valM , 0, height , 0, PI/2));
      sphere(80);
      popMatrix(); //restore previous transoformation
    }
  }
  
      pushMatrix(); //save current location
      rotateY(map(valM , 0, width , 0, PI/2));
      rotateX(map(valM , 0, height , 0, PI/2));
      box(100);
      popMatrix(); //restore previous transoformation
}
