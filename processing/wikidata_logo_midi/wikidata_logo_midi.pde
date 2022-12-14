import themidibus.*; //Import the library

MidiBus myBus; // The MidiBus

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

float colR = random(100, 255);
float colG = random(100, 255);
float colB = random(100, 255);

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
  
  myBus = new MidiBus(this, "M8 [hw:2,0,0]", -1);
}

void drawBar(boolean longBar) {
  float barWidth = shortBarWidth;
  
  if (longBar) {
    barWidth = longBarWidth;
  }
  
  //fillOriginalRed();

  rect(cursor, positionY, barWidth, barHeight);
  moveCursor(longBar);
}

void fillOriginalRed()   { fill(colR, 0, 0);    }
void fillOriginalGreen() { fill(51, colG, 102); }
void fillOriginalBlue()  { fill(0, 102, colB);  }

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
 // println();
 // println("Note On:");
 // println("--------");
 // println("Channel:"+channel);
 // println("Pitch:"+pitch);
 // println("Velocity:"+velocity);
  scale( random(0.5, 1.0) );
    
      
  //barHeight = random(10, 100);
  
  colR = random(100, 180);
  colG = random(100, 180);
  colB = random(100, 180);
  
  barHeight = random(180, 200);
}

void draw() {
  clear();
  background(255);
  cursor = 175;
 
  fillOriginalRed();
  drawBar(false);
  drawBar(true);
  drawBar(true);
  
  fillOriginalGreen();
  drawBar(false);
  drawBar(false);
  
  fillOriginalBlue();
  drawBar(true);
  drawBar(false);
  drawBar(true);
  
  fillOriginalGreen();
  drawBar(false);
  drawBar(false);
  
  fill(72);
  textFont(myFont);
  textSize(50);
  text("WIKIDATA", centerX - 148, centerY + 85 + yMod);
}
