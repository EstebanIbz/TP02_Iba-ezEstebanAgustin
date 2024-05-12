class Dado extends GameObject{
 private int[] valores;
 private int indiceImagenActual;
 
 public Dado(){
  valores = new int[6];
  posicion = new PVector(0,0); 
 }
 
 public void Posicion(float x,float y){
  posicion.set(x,y); 
 }
 @Override 
 public void display(){
   indiceImagenActual = (int) random(imagenes.length);
   for(int dado = 0; dado<valores.length; dado++){
     valores[dado] = (int) random(1,7);
   }
 }
  
  public int obtenerIndiceActual(){
   return indiceImagenActual; 
  }
  public void texto(){
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text(indiceImagenActual + 1,posicion.x,posicion.y);
 }
}
