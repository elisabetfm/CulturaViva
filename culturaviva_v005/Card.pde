class Card {
  
 // Propiedades
 PImage img;
 String title, place, date;
 String section;
 String description;
 
 float sizeTitulo = 24;
 
 // Constructores
 Card(){
 }
 
 Card(String title, String place, String date, String section, String description){
   this.title = title;
   this.place = place;
   this.date = date;
   this.section = section;
   this.description = description;
 }
 
 Card(String[] info){
   this.title = info[0];
   this.place = info[1];
   this.date = info[2];
   this.section = info[3];
   this.description = info[4];
 }
 
 //Setters
 void setSizeTitulo(float t){
   this.sizeTitulo = t;
 }
 
 void setImage(PImage img){
   this.img = img;
 }
 
 // Dibuja la Card
 void display(float x, float y, float w, float h, float b){
   pushStyle();
   
   // Rectángulo inferior
   stroke(0); 
   fill(255,255,255);
   rect(x, y, w, h, b/2);
   
   // imagen descriptiva
   float imgW = (w/3) - 2*b;
   float imgH = h - 2*b;
   if(img!=null){
     image(img, x + b, y + b, imgW, imgH);
     noFill(); 
     rect(x + b, y + b, imgW, imgH);
   }
   else {
     fill(50);
     rect(x + b, y + b, imgW, imgH);
   }
   
   // Título
   fill(0); textSize(sizeTitulo); textAlign(CENTER);
   text(title, x + 2*w/3, y + h/5);
   
   // Lugar y fecha
   fill(0); 
   textSize(sizeTitulo - 4); 
   textAlign(CENTER);
   text(place+", "+date, x + 2*w/3, 8*h/5);
   
   // Sección
   fill(0); textSize(sizeTitulo - 4); textAlign(CENTER);
   text(section, x + 2*w/3, y + 2*h/5);
   
   // Descripción
   fill(0);textSize(sizeTitulo - 8); 
   textAlign(LEFT);
   text(description, x + w/3 + b, y + 2*h/3 - b, 2*w/3, 4*h/5);
   
   popStyle();
 }
}
