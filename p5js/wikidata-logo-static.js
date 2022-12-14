function setup() {
  createCanvas(720, 400);
  background(255);
  noStroke();
  textSize(24);
  myFont = loadFont('https://fontsfree.net//wp-content/fonts/basic/sans-serif/FontsFree-Net-Gill-Sans-Bold.ttf')  
}

function draw(){
  fill(153, 0, 0);
  rect(80, 81, 5, 99);
  
  fill(153, 0, 0);
  rect(90, 81, 15, 99);
  
  fill(153, 0, 0);
  rect(110, 81, 15, 99);
  
  fill(51, 153, 102);
  rect(130, 81, 5, 99);
  
  fill(51, 153, 102);
  rect(140, 81, 5, 99);
  
  fill(0, 102, 153);
  rect(150, 81, 15, 99);
  
  fill(0, 102, 153);
  rect(170, 81, 5, 99);
  
  fill(0, 102, 153);
  rect(180, 81, 15, 99);
  
  fill(51, 153, 102);
  rect(200, 81, 5, 99);
  
  fill(51, 153, 102);
  rect(210, 81, 5, 99);
  
  fill(72);
  textFont(myFont);
  text('WIKIDATA', 80, 203);
}
