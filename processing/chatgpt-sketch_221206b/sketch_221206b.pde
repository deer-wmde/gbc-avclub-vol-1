// Set the width and height of the sketch
int width = 800;
int height = 600;

// Set the speed of the projectiles
int speed = 5;

// Create a list to store the projectiles
ArrayList<Box> boxes = new ArrayList<Box>();

void setup() {
  // Set the size of the sketch window
  size(800, 600);

  // Set the background color to black
  background(0);
}

void draw() {
  // Clear the screen
  background(0);

  // Update the position of each projectile
  for (Box b : boxes) {
    b.update();
  }

  // Draw each projectile
  for (Box b : boxes) {
    b.draw();
  }
}

// This function is called whenever a key is pressed
void keyPressed() {
  // Check if the space bar was pressed
  if (key == ' ') {
    // Create a new projectile and add it to the list
    boxes.add(new Box());
  }
}

// This class represents a single projectile
class Box {
  // The x and y position of the projectile
  float x;
  float y;

  // The constructor sets the initial position of the projectile
  Box() {
    x = 0;
    y = random(height);
  }

  // This function updates the position of the projectile
  void update() {
    x += speed;
  }

  // This function draws the projectile on the screen
  void draw() {
    fill(255);
    rect(x, y, 10, 10);
  }
}
