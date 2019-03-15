float x , y;
float xSpeed , ySpeed;
float radius;


void setup () {
  background(255);
  size(400,400);
  
  x = 26;
  y = 25;
  
  xSpeed = 5;
  ySpeed = 5;
  
  radius = 25;
  
}

void draw () {
  background(255);
  
  drawPlayer();
  drawEnemy();

  moveEnemy();
  movePlayer();
  
  collisionDetection();
}



void drawPlayer () {
  fill(#FA0A26);
  ellipse(x, 200, radius, radius);
}

void drawEnemy () {
  fill(#0A3CFA);
  ellipse(250, y, radius, radius);
}


void moveEnemy () {
  y = y + ySpeed;
  if (y > 375 || y < 25) {
    ySpeed = ySpeed * -1;
  }
}


void movePlayer () {
  if (mousePressed == true) {
    x = x + xSpeed;
  }
  if (x > 375) {
    x = 25;
  }

}

void collisionDetection () {
  if (radius > dist(x,200,250,y)) {
    xSpeed = 0;
    ySpeed = 0;
    fill(#3DFA0A);
  }
}
