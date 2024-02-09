float baseH = 20;

float arm1W = 20;
float arm1D = 10;
float arm1L = 20;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 30;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;

float baseH2 = 20;

float arm1W2 = 20;
float arm1D2 = 10;
float arm1L2 = 20;

float arm2W2 = 10;
float arm2D2 = 10;
float arm2L2 = 30;

float arm3W2 = 5;
float arm3D2 = 5;
float arm3L2 = 30;

float angle02 = 0;
float angle12 = 0;
float angle22 = 0;

float dif = 1.0;

void setup() {
  size(1200, 800, P3D);
  camera(300, 300, 300, 0, 0, 0, 0, 0, -1);
  noStroke();
}

void draw() {
  background(255);
  
  if (keyPressed) {
    if (key == 'x') {
      angle0 += dif;
    }
    if (key == 'X') {
      angle0 -= dif;
    }
    if (key == 'y') {
      angle1 += dif;
    }
    if (key == 'Y') {
      angle1 -= dif;
    }
    if (key == 'z') {
      angle2 += dif;
    }
    if (key == 'Z') {
      angle2 -= dif;
    }
    if (key == 'a') {
      angle02 += dif;
    }
    if (key == 'A') {
      angle02 -= dif;
    }
    if (key == 'b') {
      angle12 += dif;
    }
    if (key == 'B') {
      angle12 -= dif;
    }
    if (key == 'c') {
      angle22 += dif;
    }
    if (key == 'C') {
      angle22 -= dif;
    }
  }

  // Base 1
  pushMatrix(); // Save the current transformation
  translate(100, -100, baseH/2);
  rotateZ(radians(angle0));
  xyzAxis(20);
  fill(150);
  box(10, 10, baseH);

  // 1st link 1
  translate(0, 0, baseH/2 + arm1L/2);
  fill(125);
  box(arm1W, arm1D, arm1L);

  // 2nd link 1
  translate(0, 0, arm1L/2);
  rotateX(radians(angle1));  
  translate(0, 0, arm2L/2);
  fill(175);
  box(arm2W, arm2D, arm2L);

  // 3rd link 1
  translate(0, 0, arm2L/2);
  rotateX(radians(angle2));
  translate(0, 0, arm3L/2);
  fill(200, 0, 0);
  box(arm3W, arm3D, arm3L);

  //xyzAxis @ Pr
  translate(0, 0, arm3L/2);
  xyzAxis(10);

  popMatrix(); // Restore the previous transformation

  // Base 2
  pushMatrix();
  translate(0, 0, baseH2/2);
  rotateZ(radians(angle02));
  xyzAxis(20);
  fill(150);
  box(10, 10, baseH2);

  // 1st link 2
  translate(0, 0, baseH2/2 + arm1L2/2);
  fill(125);
  box(arm1W2, arm1D2, arm1L2);

  // 2nd link 2
  translate(0, 0, arm1L2/2);
  rotateX(radians(angle12));  
  translate(0, 0, arm2L2/2);
  fill(175);
  box(arm2W2, arm2D2, arm2L2);

  // 3rd link 2
  translate(0, 0, arm2L2/2);
  rotateX(radians(angle22));
  translate(0, 0, arm3L2/2);
  fill(255, 255, 255);
  box(arm3W2, arm3D2, arm3L2);

  //xyzAxis @ Pr
  translate(0, 0, arm3L2/2);
  xyzAxis(10);

  popMatrix();
}

void xyzAxis(float len) {
  stroke(255, 0, 0);
  line(0, 0, 0, len, 0, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, len, 0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, len);
}
