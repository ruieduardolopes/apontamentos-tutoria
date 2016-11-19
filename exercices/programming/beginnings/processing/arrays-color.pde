// adapted from Processing website - Arrays

float[] coswave;

int rValue = 255;
int gValue = 255;
int bValue = 255;

void setup() {
  size(640, 360);
  coswave = new float[width];
  for (int i = 0; i < width; i++) {
    float amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  background(0, 0, 0);
  noLoop();
}

void draw() {

  int y1 = 0;
  int y2 = height/3;
  for (int i = 0; i < width; i++) {
    stroke(coswave[i]*rValue, coswave[i]*gValue, coswave[i]*bValue);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = y1 + y1;
  for (int i = 0; i < width; i++) {
    stroke(coswave[i]*rValue / 4, coswave[i]*gValue / 4, coswave[i]*bValue / 4);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = height;
  for (int i = 0; i < width; i++) {
    stroke(rValue - coswave[i]*rValue, gValue - coswave[i]*gValue, bValue - coswave[i]*bValue);
    line(i, y1, i, y2);
  }

}

void keyPressed() {
  if (key == 'R') {
    if (rValue < 245) {
      rValue += 10;
    }
  } else if (key == 'r') {
    if (rValue > 10) {
      rValue += -10;
    }
  } else if (key == 'G') {
    if (gValue < 245) {
      gValue += 10;
    }
  } else if (key == 'g') {
    if (gValue > 10) {
      gValue += -10;
    }
  } else if (key == 'B') {
    if (bValue < 245) {
      bValue += 10;
    }
  } else if (key == 'b') {
    if (bValue > 10) {
      bValue += -10;
    }
  }
  redraw();
  print("r:" + rValue + " g:" + gValue + " b:" + bValue + "\n");
}
