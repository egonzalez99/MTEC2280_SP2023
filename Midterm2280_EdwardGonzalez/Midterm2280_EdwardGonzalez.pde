//Name: Edward GOnzalez
//This project will use two user - defined functions, one array, and one conditional statement.

int [] x = { 150, 161, 183 }; //data set valyes for line
int [] y;
int [] x2;

float circleX1 = 500;
float circleY1 = 500;
float circleSize = 60;

float circleX2 = 500;
float circleY2 = 500;

//Animation image
PImage rockyStargif;
PImage[] rockyStar = new PImage[34];

//Digital Clock
int h =  hour(); 
int m = minute();
int s = second();

int dim;

void setup() {
  size(1000, 1000);
  background(255);
  
  colorMode(RGB, 400);
  
  y = new int[height];
  x2 = new int[width];
  
//THIS IS ANIMATION ARRAY CODE  
  size(1500, 1500);
  smooth();
  rockyStar[0] = loadImage("frame_00.gif");
  rockyStar[1] = loadImage("frame_01.gif");
  rockyStar[2] = loadImage("frame_02.gif");
  rockyStar[3] = loadImage("frame_03.gif");
  rockyStar[4] = loadImage("frame_04.gif");
  rockyStar[5] = loadImage("frame_05.gif");
  rockyStar[6] = loadImage("frame_06.gif");
  rockyStar[7] = loadImage("frame_07.gif");
  rockyStar[8] = loadImage("frame_08.gif");
  rockyStar[9] = loadImage("frame_09.gif");
  rockyStar[10] = loadImage("frame_10.gif");
  rockyStar[11] = loadImage("frame_11.gif");
  rockyStar[12] = loadImage("frame_12.gif");
  rockyStar[13] = loadImage("frame_13.gif");
  rockyStar[14] = loadImage("frame_14.gif");
  rockyStar[15] = loadImage("frame_15.gif");
  rockyStar[16] = loadImage("frame_16.gif");
  rockyStar[17] = loadImage("frame_17.gif");
  rockyStar[18] = loadImage("frame_18.gif");
  rockyStar[19] = loadImage("frame_19.gif");
  rockyStar[20] = loadImage("frame_20.gif");
  rockyStar[21] = loadImage("frame_21.gif");
  rockyStar[22] = loadImage("frame_22.gif");
  rockyStar[23] = loadImage("frame_23.gif");
  rockyStar[24] = loadImage("frame_24.gif");
  rockyStar[25] = loadImage("frame_25.gif");
  rockyStar[26] = loadImage("frame_26.gif");
  rockyStar[27] = loadImage("frame_27.gif");
  rockyStar[28] = loadImage("frame_28.gif");
  rockyStar[29] = loadImage("frame_29.gif");
  rockyStar[30] = loadImage("frame_30.gif");
  rockyStar[31] = loadImage("frame_31.gif");
  rockyStar[32] = loadImage("frame_32.gif");
  rockyStar[33] = loadImage("frame_33.gif");
  
  dim = width/2;
  
}


void draw() {
  
  slideUp();
  
  slideX();
  //DIGITAL CLOCK SHAPE
  fill(255,36,0);
  ellipse(700,600, 50, 50);
  
  fill(105,105,105);
  ellipse(800,600, 50, 50);
  
  fill(0, 0 , 0);
  rect(450, 610, 520, 220);
  
  imageMode(CENTER);
  image(rockyStar[frameCount%34], 210, 230);
  
  //DIGITAL CLOCK TIME FORMAT
  String s = String.valueOf(h);
  fill(255,36,0);
  textSize(128);
  text(s, 500, 750);
  
  text(":", 620, 740);
  
  s = String.valueOf(m);
  fill(255,36,0);
  textSize(128);
  text(s, 650, 750);
  
  text(":", 770, 740);
  
  s = String.valueOf(s);
  fill(255,36,0);
  textSize(128);
  text(s, 800, 750);
  
  if( h >= 00 && h < 12 || h >= 24) {
    textSize(30);
    text("AM", 930, 750);
  }
  if( h >= 12 && h < 23) {
    textSize(30);
    text("PM", 930, 750);
  }
  
  int xPos = 1200;
  int yPos = 250;
  drawEllipse(xPos, yPos);
  
//THIS IS FOR DRAWINGING LINE ALONG USER'S MOUSE    
//this function starts at 100 mouseY postion and draws a line with the decreasing y value.
     y[100] = mouseY;
     for (int i = 1; i < y.length; i++) {
      line(i, y[i], i-1, y[i-1]);
    }

/*this for loop is the line on the x acis. we must you y length since 
x value has an array data. */

     x2[900] = mouseX;
     for (int i = 1; i < y.length; i++) {
      line(x2[i], i, x2[i-1], i-1);
    }
}
  
  
//this function will raise the ellipse upwards from the point of origin
void slideUp(){
  fill(0);
  ellipse(circleX1, circleY1, circleSize, circleSize);
  circleY1--;
  if(circleY1 > height) {
    circleY1 = 0;
  }
  
}

//this function will loop the moving ellipse on the X - axis from right to left
void slideX(){
  fill(0);
  ellipse(circleX2, circleY2, circleSize, circleSize);
  circleX2++;
  if(circleX2 > width) {
    circleX2 = 0;
  }
  
}

/*This function will draw an ellipse with a set x and y position on the canvas. The eadius 
and dim are responsible for the ellipse size/structure. The ellipse os set to about 2/3 because a value of 2 is half 
and 1 is whole number. The ellipse are being overlapped constantly in the for loop with th colors of red and green.
The colors are changing woth the random function in h. Additionally the for loop is iterating the ellipse(in raians) 
multiple times until it reachess zero of the main ellipse. So the lines are actually overla[[ing 
ellipses being looped with a 2/3 radius/ */
void drawEllipse(float xPos, float yPos) {
  float radius = dim/1.5;
  float h = random(0, 200);
  for(float r = radius; r > 0; r--) {
    fill(253, h, 190);
    ellipse(xPos, yPos , r, r);
    h = (h + 3) % width;
  }
  
}
