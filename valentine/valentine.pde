PImage img;
PImage e;
PFont a;
PImage pocha;
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
  e = loadImage("pocha!.jpg");
  background(255);
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
  a = createFont("Georgia", 100);
  //ellipseMode(CENTER);
}

public void draw() {
  fill(#D46471);
  textSize(100);
  textFont(a);
  text("be my valentine?!", 100, 380);
  img.resize(200, 200);
  image(img, 50, 50);
  e.resize(200, 200);
  image(e, 700, 700);
  update(mouseX, mouseY);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  noStroke();
  rect(rectX, rectY, rectXSize, rectSize);
  fill(255);
  textSize(35);
  text("no..", rectX+45, rectY+55);
  
  if (rect2Over) {
    fill(rect2Highlight);
  } else {
    fill(rect2Color);
  }
  rect(rect2X, rect2Y, rect2XSize, rect2Size);
  fill(255);
  textSize(35);
  text("yes!", rect2X+45, rect2Y+55);
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
    background(255);
    fill(#F5DFDD);
    rect(50, 50, 900, 900);
    textSize(20);
    String s = "i love you so much arvi, happy valentines to my favorite person on this earth, i'm so grateful for you, and i can't wait to see you again to give you your gifts. you're the sweetest person i've ever met, so kind, loving, caring, etc. just thinking about you makes me blush. i know things have been tough doing a ldr, but i'm sure that it will pay off soon, and we will both be happy! i remember the way you looked at me in the movie theater, the dim light from the movie lit your face up and it made me so happy. that is my favorite day and favorite memory. ever. you make me ever so happy and i'm so glad to have you. i love yapping to you because i know you don't care (unless you do, fuck you) and it's fun to yap. i love yapping. i love doing the little things we do over call too. doing work together in silence, watching movies, playing games, all of it. anyway i love you a lot and i'm so happy to have you, love you lots baby. happy valentines day my love <3.";
    fill(255);
    text(s, 120, 120, 790, 900);
    pocha = loadImage("POCHAHAH.jpg");
    pocha.resize(400, 400);
    image(pocha, 500, 550);
    frameRate(0);
  }
  if (rectOver) {
    currentColor = #F5E3E5;
    fill(#F5DFDD);
    rect(50, 50, 900, 900);
    textSize(50);
    String kys = "fuck you reload the page now.";
    fill(255);
    text(kys, 200, 200);
    textAlign(CENTER);
    frameRate(0);
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
