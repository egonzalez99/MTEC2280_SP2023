//Name: Edward Gonzalez

const int G1LED = 13;
const int BLED = 12;
const int WLED = 11;
const int YLED = 10;
const int RLED = 9;
const int G2LED = 8;

const int buttonPin = 2;

int buttonState = 0;

void setup() {
  // put your setup code here, to run once:

  pinMode(G1LED, OUTPUT);
  pinMode(BLED, OUTPUT);
  pinMode(WLED, OUTPUT);
  pinMode(YLED, OUTPUT);
  pinMode(RLED, OUTPUT);
  pinMode(G2LED, OUTPUT);

  pinMode(buttonPin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  
  if(buttonState == HIGH) {
    
    digitalWrite(G1LED,HIGH);
    digitalWrite(BLED,HIGH);
    digitalWrite(WLED,HIGH);
    digitalWrite(YLED,HIGH);
    digitalWrite(RLED,HIGH);
    digitalWrite(G2LED,HIGH);
  }
  else {
    digitalWrite(G1LED,LOW);
    digitalWrite(BLED,LOW);
    digitalWrite(WLED,LOW);
    digitalWrite(YLED,LOW);
    digitalWrite(RLED,LOW);
    digitalWrite(G2LED,LOW);
  }

}
