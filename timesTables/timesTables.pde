float x;
float y;
float x1;
float y1;
float theta=0;
float theta1=0;
float r;
float m =2;//multiplier for second point
float lines =200;
void setup(){
  
  size(800,800); 
  //fullScreen();
  background(0,0,0);
  strokeWeight(1);
  stroke(0,255,0);
  r= width/2-20;
 // frameRate(2);
}

void draw(){
  
  // clear screen and increace multiple, reset theta to 0
  if (theta >360){
   background(0);
   theta = 0;
   m=m+1;
  }
  
  theta += 360/lines;  // step around the circule
  theta1=theta*m;
  //theta = theta%360; // constrains theta
  //theta1 =theta1%360; // if not gets out of phase
  
  // cartesian to polar coordinates 
  x= cos(radians(theta))*r;
  y= sin(radians(theta))*r;
  x1= cos(radians(theta1))*r;
  y1= sin(radians(theta1))*r;
  textSize(12);
  text("multiple: "+str(floor(m)),20,20);
  text("lines: "+str(floor(lines)),20,40);
   
  translate(width/2,height/2);
  
  // draw line 
  line(x,y,x1,y1);
  
  
}
