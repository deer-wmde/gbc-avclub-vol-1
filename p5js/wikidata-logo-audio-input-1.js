// https://editor.p5js.org/ledeniz/sketches/ZpHMcj8Ni
// logo w mic listener 1

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
  rect(100, 100, 5, 0.8 *h);
  rect(110, 100, 20, 0.8*h);
  rect(135, 100, 20, 0.8*h);

  fill(51,153,103,255);
  rect(160, 180, 5, h-180);
  rect(170, 180, 5, h-180);

  fill(0,102,153,255);
  rect(180, 100, 20, 0.8* h);
  rect(205, 100, 5, 0.8 * h);
  rect(215, 100, 20, 0.8* h);


  fill(51,153,103,255);
  rect(240, 180, 5, h-180);
  rect(250, 180, 5, h-180);


  textSize(27.5);
  textFont(myFont);
  fill(90);
  text('WIKIDATA', 101, 210);



} 

