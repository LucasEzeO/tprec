PImage img; 
void setup() {
size(400, 800);
img = loadImage("cuadradopng.png");
}
void draw (){
image(img, 0, 0);
}
