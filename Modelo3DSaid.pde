PShape Mario;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("texture-01.jpg");
  Mario = loadShape("Mario.obj");
  Mario.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (35);
  shape (Mario);
  popMatrix();

  theta+=.01; //increment angle
}
