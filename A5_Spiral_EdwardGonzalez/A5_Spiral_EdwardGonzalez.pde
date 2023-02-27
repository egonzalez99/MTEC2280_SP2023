//Name: Edward Gonzalez
//Title: THe Spiral

void setup() {
  size(700, 700);
}

int count;

void draw() {
  //fills the huge circle at the top left 
  circle(0, 0, 709);
  fill(mouseX, mouseY);
  
  //the lines of the squares around the geometric shapes
  stroke(143, 200, 243);

  //this affects the wifth size of the squares. As a result I made the sqaures into a huge spiral
  count = width/2;
  
  //this calculates the user's mouse postiion on the canvas
  int move = mouseX;
  /* Depending on the mouse location, a different rectangle is displayed.if the usercan change the color pallet based on 
  their mouse position. the mouse range between 500 will give you different shades of red and green. Whilke the else is
  for different shades of red and blue.
  */
  if (move < 500) {
    fill(mouseX, 240, 150);
  } else {
    fill(193, 116, mouseY);
  } 
  
  //colorMode givrs me an RGB color model between 00 to 255 for the squares being affected by the mouse dynamic position.
  colorMode(HSB, 400);
  for(int i = 0; i <= width; i+= count) {
    for(int j = 0;j <= 499; j++) {
        //radians allows me to change the parameter of the squares to make them closer together wiothin their rotation/
        rotate(radians(2));
        square(count, i, height/2);
    }
  }
  
}
