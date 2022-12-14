// 2022-12-06: Create a processing sketch with small white boxes flying in one direction across a dark background as projectiles
// To create a processing sketch with small white boxes flying in one direction
// across a dark background as projectiles, you can use the following code:

void setup() {
  size(600, 400);
  background(0);
}

void draw() {
  // Move the boxes to the right
  for (int i = 0; i < width; i += 20) {
    fill(255);
    rect(i, random(height), 10, 10);
  }
}


/*

This code creates a window that is 600 pixels wide and 400 pixels tall, with a black background.
In the draw function, the code creates small white boxes that are 10 pixels wide and 10 pixels tall,
and positions them at random heights across the screen. The boxes are then moved to the right
by 20 pixels on each iteration of the draw loop. This creates the appearance of the boxes moving
across the screen as projectiles.

*/
