
import ddf.minim.*;
Minim minim;
AudioSample sound;

PImage circback;

//musicfile named supdasmash.mp3

void setup() {
  circback= loadImage("hello.jpg");
  size(1000, 800);
  
  minim = new Minim (this);
sound = minim.loadSample ("supdasmash.mp3", 128);
}
int ballx=500;
int bally=200;
int xspeed=5;
int yspeed=5;
void draw() {


  background(circback);
  stroke(0, 200, 55);
  fill(0, 255, 0);
  ellipse(ballx, bally, 30, 30);


  if (ballx <=800){
    ballx += xspeed;
  }

  if (ballx >= 800) {
    xspeed = -xspeed;
  }

    if (bally >= 800) {
      yspeed = -yspeed;
      bally += -yspeed;
      bally += 0;     
      sound.trigger();
     
    }
    if (bally <=800){
      bally += yspeed;
    }
    rect(300, 750, mouseX,20);
    

    
  }

