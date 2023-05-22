
// defines pins numbers
const int trigPin = 9; //2nd pin on ultrasound board
const int echoPin = 8; //3rd pin on ultrasound board
// defines variables
int duration = 0;
int distance = 0;

const int GLED = 13;
const int YLED = 12;
const int RLED = 11;

int val = 0;

void setup() {
  // put your setup code here, to run once:


  pinMode(GLED, OUTPUT);
  pinMode(YLED, OUTPUT);
  pinMode(RLED, OUTPUT);

  pinMode(trigPin, OUTPUT); 
  pinMode(echoPin, INPUT);

  Serial.begin(9600); // Starts the serial communication

}

void loop() {
  // put your main code here, to run repeatedly:

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(1000);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);
  distance = (duration/2) / 28.5 ;
  
  //Serial.print("Distance: ");
  //Serial.println(distance);
  Serial.write(distance);
  if(distance >= 110 ) {
    digitalWrite(GLED, HIGH);   // turn on the LED
    //Serial.println("Sound dectected");      
  }
  else {
    digitalWrite(GLED, LOW);
  }


  if (distance >= 60 && distance < 110) {
    digitalWrite(YLED, HIGH);   // turn on the LED
    //Serial.println("Sound dectected");   
  }
  else {
    digitalWrite(YLED, LOW); 
  }


  if (distance < 60) {
    digitalWrite(RLED, HIGH);   // turn on the LED
    //Serial.println("Sound dectected");   
  }
  else { 
    digitalWrite(RLED, LOW);
  }
  
  //
  //distance = calculateDiustance(); //calculating distance intervals on the ultrasound sensor

}
