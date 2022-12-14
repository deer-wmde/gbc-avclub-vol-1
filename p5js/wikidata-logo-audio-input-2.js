// https://editor.p5js.org/ledeniz/sketches/8i0pZqwBh
// logo with mic listener 2
let mic;

function setup() {
  createCanvas(1000, 1000);

  myFont = loadFont('https://fontsfree.net//wp-content/fonts/basic/sans-serif/FontsFree-Net-Gill-Sans-Bold.ttf');
  

  // Create an Audio input
  mic = new p5.AudioIn();

  // start the Audio Input.
  // By default, it does not .connect() (to the computer speakers)
  mic.start();
}

function draw() {
  background(1000);

  // Get the overall volume (between 0 and 1.0)
  let vol = mic.getLevel();

  // Draw an ellipse with height based on volume

  let h = map(vol, 0, 0.5, 100, 0);
  fill(153,0,1,255);
  noStroke();
  rect(100, 300, 5, h-200);
  rect(110, 300, 20, h-200);
  rect(135, 300, 20, h-200);

  h = map(vol, 0, 0.4, 100, 0);

  fill(51,153,103,255);
  rect(160, 300, 5, h-200);
  rect(170, 300, 5, h-200);

  h = map(vol, 0, 0.3, 100, 0);
  fill(0,102,153,255);
  rect(180, 300, 20, h-200);
  rect(205, 300, 5, h-200);
  rect(215, 300, 20, h-200);

  h = map(vol, 0, 0.2, 100, 0);
  fill(51,153,103,255);
  rect(240, 300, 5, h-200);
  rect(250, 300, 5, h-200);

  textSize(27.5);
  textFont(myFont);
  fill(90);
  text('WIKIDATA', 101, 330);



}