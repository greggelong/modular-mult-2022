# modular-mult-2022
a place to hold code for classes visualizing modular multiplication

Mathologer

Times Tables, Mandelbrot and the Heart of Mathematics

https://youtu.be/qhbuKbxJsk8


Coding train did a coding challenge on the topic

https://youtu.be/bl3nc_a1nvs

however, his approach to the problem was more complicated.

For better or worse, I kept it as simple as possible.

see an earlier discussion here

https://greggelong.github.io/modular-mult/


I have also made this into a object Class in p5js see here:


https://editor.p5js.org/greggelong/full/Dz1N6pBMA

here I have also included a simple example of how to evenly space

points on a circle, using polar to cartesian cooridinates

```processing
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

````

