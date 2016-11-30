// Blinky follows Pac-Man(mouse), runs away if mousePressed
int lookx = 0; // Blinky's horizontal eye movements
int looky = 0; // Blinky's vertical eye movements
int x = 0; // Blinky's horizontal movement
int y = 0; // Blinky's vertical movement
void setup() {
size(1000,500);
noStroke(); 
frameRate(30);
}
 
void draw() {
  background(255);
  fill(255, 0, 0);
  // Change Blinky's color/activate super pellet.
  if (mousePressed == true){
    background(0);
    fill(50, 0, 255);
  }
  // Blinky
rect(50 + x , 70 + y , 10, 90);
rect(60 + x , 40 + y , 10, 130);
rect(70 + x , 30 + y , 10, 140);
rect(80 + x , 20 + y , 10, 140);
rect(90 + x , 20 + y , 10, 130);
rect(100 + x , 10 + y , 10, 150);
rect(110 + x , 10 + y , 10, 160);
rect(120 + x , 10 + y , 10, 160);
rect(130 + x , 10 + y , 10, 150);
rect(140 + x , 20 + y , 10, 130);
rect(150 + x , 20 + y , 10, 140);
rect(160 + x , 30 + y , 10, 140);
rect(170 + x , 40 + y , 10, 130);
rect(180 + x , 70 + y , 10, 90);
fill(255);
rect(60 + (lookx*10) + x , 50 + y , 10, 30);
rect(70 + (lookx*10) + x , 40 + y , 20, 50);
rect(90 + (lookx*10) + x , 50 + y , 10, 30);
rect(120 + (lookx*10) + x , 50 + y , 10, 30);
rect(130 + (lookx*10) + x , 40 + y , 20, 50);
rect(150 + (lookx*10) + x , 50 + y , 10, 30);
fill(0, 0, 255);
rect(60 + (lookx*20) + x, 60 + (looky*10) + y , 20, 20);
rect(120 + (lookx*20) + x , 60 + (looky*10) + y , 20, 20);
// Pac-man
fill(255, 255, 0);
ellipse (mouseX, mouseY, 160, 160);
// Blinky's movements, move towards Pac-Man
if (mousePressed == false){
  if (mouseX > 120 + x)
  x = x + 5;
  if (mouseX < 120 + x)
  x = x - 5;
  if (mouseX == 120 + x)
  x = 0;
  if (mouseY > 120 + 10 + y)
  y = y + 5;
  if (mouseY < 120 + 10 + y)
  y = y - 5;
  if (mouseY == 120 + 10 + y)
  y = 0;
}
// during mousePressed/superpellet Blinky runs away from Pac-Man
if (mousePressed == true){
  if (mouseX > 120 + x )
  x = x - 5;
  if (mouseX < 120 + x )
  x = x + 5;
  if (mouseX == 120 + x )
  x = 0;
  if (mouseY > 120 + 10 + y )
  y = y - 5;
  if (mouseY < 120 + 10 + y )
  y = y + 5;
  if (mouseY == 120 + 10 + y )
  y = 0;
}
else{
lookx = 1;
looky = 0;
}
// look mechanic doesn't work, looks right and remains looking right
//if (x > 0)
//lookx = 2;
//if (x < 0)
//lookx = 0;
//if (y > 0)
//looky = 1;
//if (y < 0)
//looky = -1;
}



