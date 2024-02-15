PImage img;
int rectX, rectY;      // Position of square button
int rect2X, rect2Y;  // Position of circle button
int rectXSize = 150;
int rect2XSize = 150;
int rectSize = 90;     // Diameter of rect
int rect2Size = 90;   // Diameter of rect2
color rectColor, rect2Color, baseColor;
color rectHighlight, rect2Highlight;
color currentColor;
boolean rectOver = false;
boolean rect2Over = false;

public void setup() {
  size(1000, 1000);
  img = loadImage("pochacco.jpg");
  background(#FFF5F6);
  rectColor = color(#F6ABB5);
  rectHighlight = color(#D27C87);
  rect2Color = color(#FFCED4);
  rect2Highlight = color(#E8ADB4);
  baseColor = color(102);
  currentColor = baseColor;
  rect2X = 300;
  rect2Y = 450;
  rectX = 550;
  rectY = 450;
  //ellipseMode(CENTER);
}

public void draw() {
  image(img, 100, 100);
  update(mouseX, mouseY);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  noStroke();
  rect(rectX, rectY, rectXSize, rectSize);
  
  if (rect2Over) {
    fill(rect2Highlight);
  } else {
    fill(rect2Color);
  }
  rect(rect2X, rect2Y, rect2XSize, rect2Size);
}

public void update(int x, int y) {
  if(overRect2(rect2X, rect2Y, rect2XSize, rect2Size) ) {
    rect2Over = true;
    rectOver = false;
  } else if (overRect(rectX, rectY, rectXSize, rectSize) ) {
    rectOver = true;
    rect2Over = false;
  } else {
    rect2Over = rectOver = false;
  }
}

public void mousePressed() {
  if (rect2Over) {
    currentColor = #F6ABB5;
  }
  if (rectOver) {
    currentColor = #F5E3E5;
  }
}

public boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

public boolean overRect2(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
