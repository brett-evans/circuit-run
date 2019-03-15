Player P1 = new Player (25 , 200 , 5 , 25);
Enemy E1 = new Enemy (150 , 200 , 5 , 25);

void setup () {
  background(255);
  size(400,400);
}

void draw () {
  background(255);
  
  collisionDetection();
}

void collisionDetection () {
  if (radius > dist(x,200,250,y)) {
    xSpeed = 0;
    ySpeed = 0;
    fill(#3DFA0A);
  }
}
