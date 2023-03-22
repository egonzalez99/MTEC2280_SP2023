//Name: Edward Gonzalez
//Title: Space

PImage spaceGif;
PImage outerStars;
PImage portrait;

PImage[] space = new PImage[20];

void setup() {
  
  size(1500, 975);
  smooth();
  space[0] = loadImage("space-travel0.gif");
  space[1] = loadImage("space-travel1.gif");
  space[2] = loadImage("space-travel2.gif");
  space[3] = loadImage("space-travel3.gif");
  space[4] = loadImage("space-travel4.gif");
  space[5] = loadImage("space-travel5.gif");
  space[6] = loadImage("space-travel6.gif");
  space[7] = loadImage("space-travel7.gif");
  space[8] = loadImage("space-travel8.gif");
  space[9] = loadImage("space-travel9.gif");
  space[10] = loadImage("space-travel10.gif");
  space[11] = loadImage("space-travel11.gif");
  space[12] = loadImage("space-travel12.gif");
  space[13] = loadImage("space-travel13.gif");
  space[14] = loadImage("space-travel14.gif");
  space[15] = loadImage("space-travel15.gif");
  space[16] = loadImage("space-travel16.gif");
  space[17] = loadImage("space-travel17.gif");
  space[18] = loadImage("space-travel18.gif");
  
  outerStars = loadImage("outerspace.jpg");
  portrait = loadImage("face.gif");
  
  textSize(100);
  
}

void draw() {
  
  background(outerStars);
  
  imageMode(CENTER);
  image(space[frameCount%16], 750, 487);
  
  if(mousePressed == true) {
    imageMode(CENTER);
    image(portrait, 750, 487);
    
    fill(138, 80, 80);
    textAlign(CENTER);
    text("ALONE.", 560, 437, -110);
    textAlign(RIGHT);
    text("ALONE.", 560, 457);
  }
  
}
