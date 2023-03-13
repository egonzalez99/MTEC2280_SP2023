//Name: Edward GOnzalez
//This project will use two user - defined functions, one array, and one conditional statement.

int [] x = { 150, 161, 183 }; //data set valyes
int [] y;
int [] x2;

float circleX1 = 500;
float circleY1 = 500;
float circleSize = 60;

float circleX2 = 500;
float circleY2 = 500;

void setup() {
  size(1000, 1000);
  background(255);
  colorMode(RGB, 400);
  
  y = new int[height];
  x2 = new int[width];
}

void draw() {
  
  slideUp();
  
  slideX();
  
/*this for loop will create quad that will iterate over the lelements on the array.  
the code will increment the current elements with i and input y array values.
the code is incrementing by 2. Because of i++ in the loop and quad.*/
  for(int i = 0; i < x.length; i++) {
    quad(900, i, x[i], y[i++], height*2, 620, 752, 820);
  }  
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
