String lines[];
int dot_index = 0;
int dots_per_frame = 100;
int MAX_DOTS = 1521068;

color getColor(int prop_price) {
  if (prop_price >= 1000000) {
    return #FF0000;
  }
  else if (prop_price <= 200000) {
    return #00FF00;
  }
  else {
    return #0000FF;
  }
}

void drawPoint(int i) {
  String [] row = new String[5];
    row = split(lines[i], ',');
  float x = map(float(row[4]), -160, -154, 0, width);
  float y = map(float(row[3]), 23, 19, 0, height);
  stroke(getColor(int(row[1])));
  point(x, y);
  
  fill(#000000);
  stroke(#000000);
  rect(0, 0, 200, 30);
  fill(#FFFFFF);
  text(row[0], 10, 20);

}

void setup() {
  size(1400,700);
  background(#000000);
  stroke(#FFFFFF);
  lines = loadStrings("/Users/kevin/props_sorted.csv");
}

void draw() {
  int i = 0;
  while (i < dots_per_frame) {
    if (dot_index > MAX_DOTS) {
      return;
    }
    drawPoint(dot_index);
    
    dot_index += 1;
    i += 1;
  }
  println(float(dot_index) / float(MAX_DOTS));
}
