private Tablero tablero;
private Dado dado;
PImage[] imagenes;
int indiceImagenActual = 0;

void setup(){
  size(600,400);
  tablero = new Tablero();
  tablero.tablero(new PVector(50,50));
  dado = new Dado();
  imagenes = new PImage[6];
  for (int img=0;img<imagenes.length;img++){
    imagenes[img] = loadImage("dado" +img+".png");
    
    dado.Posicion(width-70,80);
 }
}

void draw(){
  background(0);
  tablero.display();
  imageMode(CENTER);
  image(imagenes[dado.obtenerIndiceActual()], width/2, height/2,150,150);
  dado.texto();
}

void keyPressed(){
 if(key=='r'){
   dado.display();
   int indiceImagen = dado.obtenerIndiceActual();
   int num = indiceImagen +1;
   println("valor: "+num);
 }
}
