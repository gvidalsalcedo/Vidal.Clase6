int x = 0;
int y = 20;

float level;
float rad;

void setup () {
  size (800, 800);
  background (255);
}


void draw() {
  //Valor provisional
  level= random (0, 1);
  //Tamano de los circulos
  rad= (level* width/3);


  if (y<height) {
    fill (255, 10);
    //definir color aleatorio
    stroke(random(0, 255), random(100, 255), random(200, 255));
    
    ellipse (x, y, rad, rad);
    delay (100);
    x= x + 50;

    if (x> width) {
      x = 0;
      y += 50;
    }
  } else {
    noLoop();
  }
}
