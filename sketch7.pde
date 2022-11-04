PImage landscape;
void setup() {
  size (600, 600);
  landscape = loadImage("background.jpg");
}

void draw () {
  image (landscape, 0, 0);
  loadPixels();
  landscape.loadPixels();
    if (mousePressed == false)

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x+y*width;
      float r = red(landscape.pixels[loc]);
      float g = green(landscape.pixels[loc]);
      float b = blue(landscape.pixels[loc]);
      float d = dist (mouseX, mouseY, x, y);
      float factor = map(d, 0, 200, 0, 2);
      pixels[loc] = color (r*2*factor, g*factor, b*factor);
    }
  }
  if (mousePressed == true)
  {
    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
        int loc = x+y*width;
        float r = red(landscape.pixels[loc]);
        float g = green(landscape.pixels[loc]);
        float b = blue(landscape.pixels[loc]);
        float d = dist (mouseX, mouseY, x, y);
        float factor = map(d, 0, 200, 0, 2);
        pixels[loc] = color (g*factor, r*factor, b*2*factor);
      }
    }
    updatePixels();
  }
}
