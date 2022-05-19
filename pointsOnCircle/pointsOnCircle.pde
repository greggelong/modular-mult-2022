
// global variables so other functions can use them
float points =10;
float r;
float theta;

void setup(){
 size(800,800);
 background(0); // set background to black
 stroke(0,255,0); // set line color to green
 noFill(); // do not fill shapes
 textSize(20);
 textAlign(CENTER,CENTER);
 r= width/2;

}


void draw(){
  translate(width/2,height/2);
 
  circle(0,0,r*2); // circle(x,y,diameter) 
  for (int i =0; i<points; i++){
    float x = cos(radians(theta))*r;
    float y = sin(radians(theta))*r;
    circle(x,y,20); // small circle
    text(i,x,y);
    println(x,y);
    // increace 
    theta += 360/points;
   
    
  }
  noLoop();
}
