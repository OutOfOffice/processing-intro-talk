void setup() {
  size(800,800);
}

void draw() {
  ellipse(mouseX, mouseY, 50, 50);
  if (mousePressed) {
    fill(#FF0000);
  }
}
