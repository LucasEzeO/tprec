PImage trabajo;
float angulo = 0;
boolean rotar = false;

void setup(){
size (800, 400);
trabajo= loadImage ("cuadrado.jpg");
trabajo.resize (400,400);
}
void draw() {
  image(trabajo, 0, 0);
  if (rotar){
  angulo += 0.01;
  }
  pushMatrix();
  translate(600, 200);
  rotate(angulo);
  translate(-200, -200);
  dibujarcentro(14, 400);
  dibujarbarras(80);
  dibujarcentrocentro();
  popMatrix();
}
void keyPressed (){
if (key =='r' || key == 'R') {
rotar = true; 
}
  if (key == ' ') {
rotar = false;
angulo = 0;
}
}
//y2 viene a representar el 80 que aparece en muchos rect
void dibujarbarras(int y2){
  int tam = 29;
//noStroke();
for (int i = 0; i < 12; i++) {
  if (mousePressed) {
        if (i % 2 == 0) {
          fill(255);
        } else {
          fill (0);
        }
      } else {
  if (i % 2 == 0) {
    fill (255);
  } else {
    fill(0);
  }
rect(160, i * tam / 2, y2, 16);             // barra arriba
rect(i * tam / 2, 160, 16, y2);             // barra izquierda
rect(160, 385 - i * tam / 2, y2, 16);       // barra de abajo
rect(385 - i * tam / 2, 160, 16, y2);       // barra derecha
}
}
}
//cant es un parametro que viene a representar el 14 que son la cantidad de cuadrados que se van dibujar.
//tamñopan es un parametro para el 400 que representaba la mitad del tamaño de la pantalla. 
void dibujarcentro (int cant, int tamañopan){
int tam = (29);
strokeWeight (0);
for (int i = 0; i < cant; i++){
if (mousePressed){
if (i % 2 == 0){
fill (255);
}else{
fill (0);
}
}else{
if (i % 2 == 0) {
fill (0);
}else{
 fill (255);
}
}
rect (i*tam/2, i * tam/ 2, tamañopan - i * tam, tamañopan - i * tam);
}
}
void dibujarcentrocentro(){
int tam = 29; 
strokeWeight (0);
translate (173, 172);
for (int i = 0; i < 2; i ++){
if (i % 2 == 0){
fill (255);
}else{
fill (0);
}
rect (i*tam/2, i * tam/ 2, 55 - i * tam, 55 - i * tam);
}
}
