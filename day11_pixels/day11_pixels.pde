PImage pizza;
float r;
float g;
float b;
int cols, rows;
int cellSize = 4;

void setup(){
  size(900, 780, P3D);
  //size(650, 388, P3D);

  pizza = loadImage("puppetshow.png");
  cols = width/ cellSize;
  rows = height/ cellSize;
}

void draw(){
  background(255,255,255);
  noStroke();
  
  loadPixels();
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
    int x = i * cellSize + cellSize/2;
    int y = j * cellSize + cellSize/2;    
    int location = x + y * pizza.width;
    color c = pizza.pixels[location];
    float z = (mouseX/float(width)) * (brightness(pizza.pixels[location]+ 100));
    pushMatrix();
      //translate(x,y);
      translate(x,y,z);
      fill(c);
      rectMode(CENTER);
      rect(0,0,cellSize,cellSize);
    popMatrix();
    }
  }
}