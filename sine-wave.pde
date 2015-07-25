void setup() {
  size(1000, 500);
  strokeWeight(width / 100);
}

float offset = 0, pointX, sinY, cosY, i;

void draw() {
  background(255);
  text(frameRate, 10, 20);
  text(offset, 10, 40);
  fill(0);

  stroke(random(0, 255), random(0, 255), random(0, 255));

  for(i = 0; i < TWO_PI; i += 0.08) {
     pointX = map(i, 0, TWO_PI, 0, width);
     sinY = map(sin(i + offset), -1, 1, 0, height);
     cosY = map(cos(i + offset), -1, 1, 0, height);

     stroke(255, 0, 0);
     point(pointX + offset, sinY);
     stroke(0, 0, 255);
     point(pointX + offset, cosY);
  }

  offset += map(mouseX, 0, height, 0, 0.1);

  if(offset > TWO_PI) {
     offset = 0;
  }

}
