// changed from Processing website - loop with IF-THEN-ELSE control flow

float y = 100;
boolean isPressed = false;

// The statements in the setup() function
// run once when the program begins
void setup() {
  size(640, 360);  // Size should be the first statement
  stroke(255);     // Set stroke color to white
  noLoop();

  y = height * 0.5;
}

// The statements in draw() are run until the
// program is stopped. Each statement is run in
// sequence and after the last line is read, the first
// line is run again.
void draw() {
  background(0);   // Set the background to black
  line(0, y, width, y);

  y = y - 1;
  if (y < 0) {
    y = height;
  }
}

void mousePressed() {
  isPressed = !isPressed;
  if (isPressed) {
    noLoop();
  } else {
    loop();
  }
}
