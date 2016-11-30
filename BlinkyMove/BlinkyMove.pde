// Blinky is controllable via arrow keys
int lookx = 0; // controls horizontal eye movements
int looky = 0; // controls vertical eye movements
int x = 0;
int y = 0;
void setup() {
size(500,500);
noStroke(); 
frameRate(50);
}
 
void draw() {
  // Blinky
  background(255);
  fill(255, 0, 0);
rect(50 + x, 70 + y, 10, 90);
rect(60 + x, 40 + y, 10, 130);
rect(70 + x, 30 + y, 10, 140);
rect(80 + x, 20 + y, 10, 140);
rect(90 + x, 20 + y, 10, 130);
rect(100 + x, 10 + y, 10, 150);
rect(110 + x, 10 + y, 10, 160);
rect(120 + x, 10 + y, 10, 160);
rect(130 + x, 10 + y, 10, 150);
rect(140 + x, 20 + y, 10, 130);
rect(150 + x, 20 + y, 10, 140);
rect(160 + x, 30 + y, 10, 140);
rect(170 + x, 40 + y, 10, 130);
rect(180 + x, 70 + y, 10, 90);
fill(255);
rect(60 + (lookx*10) + x, 50 + y, 10, 30);
rect(70 + (lookx*10) + x, 40 + y, 20, 50);
rect(90 + (lookx*10) + x, 50 + y, 10, 30);
rect(120 + (lookx*10) + x, 50 + y, 10, 30);
rect(130 + (lookx*10) + x, 40 + y, 20, 50);
rect(150 + (lookx*10) + x, 50 + y, 10, 30);
fill(0, 0, 255);
rect(60 + (lookx*20) + x, 60 + (looky*10) + y, 20, 20);
rect(120 + (lookx*20) + x, 60 + (looky*10) + y, 20, 20);
// binds arrow keys to Blinky's movements and where it looks
if (keyPressed && (key == CODED)){
  if (keyCode == LEFT){
    x = x - 10;
    lookx = 0;
  }
}
if (keyPressed && (key == CODED)){
  if (keyCode == RIGHT){
    x = x + 10;
    lookx = 2;
  }
}
if (keyPressed && (key == CODED)){
  if (keyCode == DOWN){
    y = y + 10;
    looky = 1;
  }
}
if (keyPressed && (key == CODED)){
  if (keyCode == UP){
    y = y - 10;
    looky = -1;
  }
}
// Blinky looks at center by default
else{
lookx = 1;
looky = 0;
}
}
