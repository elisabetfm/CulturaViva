// Clase Counter

class Counter {
  
  // Valor del contador
  int value = 255;
  int minValue = 0,
      maxValue = 255;
  int stepValue = 1;
  
 // Propiedades de un "counter":
 float x, y, w, h;  // Posición y dimensiones
 
 // Colores de relleno y contorno
 color fillColor, strokeColor;
 
 // Iconos del botón
 PImage imgMas, imgMenos;       

 // Método Constructor
 Counter(PImage imgMas, PImage imgMenos, float x, float y, float w, float h){
   this.imgMas = imgMas;
   this.imgMenos = imgMenos;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   fillColor = color(155, 155, 155);
   strokeColor = color(0);
 }
 
 // Setters
 void setInitialValue(int n){
   this.value = n;
 }
 
 void setValues(int minValue, int maxValue){ 
   this.minValue = minValue; 
   this.maxValue = maxValue;
 }
 
 void setStepValue(int v){
   this.stepValue = v;
 }
 
 void resetValue(){
   this.value = this.minValue;
 }
 
 int getValue(){
   return this.value;
 }
 
// Dibuja el botón
 void display(){
   
   fill(fillColor);     // Color 
   stroke(strokeColor); //Color del contorno
   strokeWeight(2);     //Anchura del contorno
   rect(this.x, this.y, this.w + 2*this.h, this.h, 10); // Rectángulo del botón
   
   fill(0); 
   textSize(32);
   text(value, this.x + 20, this.y + this.h/2 + 10);
   
   // Icono del botón
   fill(255); 
   stroke(0);
   rect(this.x + this.w, this.y, this.h, this.h, 10);
   image(imgMas,   this.x + this.w, this.y, this.h, this.h);
   rect(this.x + this.w + this.h, this.y, this.h, this.h, 10);
   image(imgMenos, this.x + this.w + this.h, this.y, this.h, this.h);
 }
 
 boolean mouseOverButtons(){
   return mouseOverButtonMas() || mouseOverButtonMenos();
 }
 
 // Indica si el cursor está encima del botón "mas" 
 boolean mouseOverButtonMas(){
   return mouseX >= this.x + this.w && mouseX <= this.x + this.w + this.h &&
          mouseY >= this.y && mouseY <= this.y + this.h; 
 }
 
 // Indica si el cursor está encima del botón "menos" 
 boolean mouseOverButtonMenos(){
   return mouseX >= this.x + this.w + this.h && mouseX <= this.x + this.w + 2*this.h &&
          mouseY >= this.y && mouseY <= this.y + this.h; 
 }
 
 void increment(){
   this.value += stepValue;
   if(this.value>this.maxValue){
     this.value = this.maxValue;
   }
 }
 
 void decrement(){
   this.value -= stepValue;
   if(this.value<this.minValue){
     this.value = this.minValue;
   }
 }
 
 void update(){
   if(mouseOverButtonMas()){
     increment();
   }
   else if(mouseOverButtonMenos()){
     decrement();
   }
 }
  
}
