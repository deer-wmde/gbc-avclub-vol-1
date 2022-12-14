PFont myFont;

int canvasWidth = 640;
int canvasHeight = 480;

float centerX = canvasWidth / 2;
float centerY = canvasHeight / 2;

float yMod = 25;
float positionY = 75 + yMod;

float scale = 10;

float shortBarWidth = 1 * scale;
float longBarWidth  = shortBarWidth * 3;

float barHeight     = 200;
float spacing       = 0 + scale;

//float cursor = centerX - 150;
float cursor = 0;

void moveCursor(boolean longBar) {
  if (longBar) {
    cursor += longBarWidth;
  } else {
    cursor += shortBarWidth;
  }
  
  cursor += spacing;
}

void settings() {
  size(canvasWidth, canvasHeight, P3D);
}

void setup() {
  noStroke();
  
  myFont = loadFont("GillSans-Bold-48.vlw");
}

void drawBar(boolean longBar) {
  float barWidth = shortBarWidth;
  
  if (longBar) {
    barWidth = longBarWidth;
  }
  
  //fillOriginalRed();
  fill(random(100, 255), random(100, 255), random(100, 255));
  rect(cursor, positionY, barWidth, barHeight);
  moveCursor(longBar);
}

void fillOriginalRed()   { fill(153, 0, 0);    }
void fillOriginalGreen() { fill(51, 153, 102); }
void fillOriginalBlue()  { fill(0, 102, 153);  }

void mouseClicked() {
  barHeight = random(100, 10);
}

void draw() {
  clear();
  background(255);
  cursor = 175;
 
  drawBar(false);
  drawBar(true);
  drawBar(true);
  drawBar(false);
  drawBar(false);
  drawBar(true);
  drawBar(false);
  drawBar(true);
  drawBar(false);
  drawBar(false);
  
  fill(72);
  textFont(myFont);
  textSize(50);
  text("WIKIDATA", centerX - 148, centerY + 85 + yMod);
  
  delay(200);
}
