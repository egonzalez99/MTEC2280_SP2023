
// defines pins numbers
const int trigPin = 9; //2nd pin on ultrasound board
const int echoPin = 8; //3rd pin on ultrasound board
// defines variables
int duration = 0;
int distance = 0;

const int YLED = 13;
const int BLED = 12;
const int WLED = 11;

int reading = 0;

void setup() {
  // put your setup code here, to run once:


  pinMode(YLED, OUTPUT);
  pinMode(BLED, OUTPUT);
  pinMode(WLED, OUTPUT);

  pinMode(trigPin, OUTPUT); 
  pinMode(echoPin, INPUT);

  Serial.begin(9600); // Starts the serial communication

}

void loop() {
  // put your main code here, to run repeatedly:
  reading = digitalRead(trigPin);
  reading = digitalRead(echoPin);
  
  
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(1000);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);
  distance = (duration/2) / 28.5 ;
  
  //Serial.print("Distance: ");
  //Serial.println(distance);// serila montior values

  Serial.write(distance);//sends binary
     
  if(distance >= 110 ) {
    digitalWrite(YLED, HIGH);   // turn on the LED
    //Serial.println("Sound dectected");      
  }    
  else {
    digitalWrite(YLED, LOW);
  }
  
  
  if (distance >= 60 && distance < 110) {
    digitalWrite(BLED, HIGH);   // turn on the LED
    //Serial.println("Sound dectected");   
  }
  else {
    digitalWrite(BLED, LOW);
  }
  
    
  if (distance < 60) {
    digitalWrite(WLED, HIGH);   // turn on the LED
    //Serial.println("Sound dectected");   
  }
  else {
    digitalWrite(WLED, LOW);
  }
  
 

}
