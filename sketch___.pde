int maxDepth = 4; 
void setup() {
  size(800, 600);
  background(255);
  noLoop();
}

void draw() {
  background(255);
  translate(width / 2, height);
  randomSeed(millis());
  drawBranch(200, maxDepth);
}

void drawBranch(float len, int depth) {
  if (depth == 0) {
    return;
  }

  stroke(map(depth, 0, maxDepth, 0, 255), 50, 150); 
  strokeWeight(map(depth, 0, maxDepth, 2, 0.5)); 

  line(0, 0, 0, -len); 

  translate(0, -len); 


  for (int i = 0; i < 4; i++) {
    pushMatrix();
    rotate(radians(random(-45, 45))); //
    drawBranch(len * random(0.5, 0.8), depth - 1); 
    popMatrix();
  }
}
