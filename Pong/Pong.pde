PImage circback;
//musicfile named supdasmash.mp3

void setup() {
  circback= loadImage("hello.jpg");
  size(1000, 1000);
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


  if (ballx <=1000){
    ballx += xspeed;
  }

  if (ballx >= 1000) {
    xspeed = -xspeed;
  }

    if (bally >= 1000) {
      yspeed = -yspeed;
      bally += -yspeed;
    }
    if (bally <=1000){
      bally += yspeed;
    }
  }

