// Clase Campo de Texto

class TextField {
  // Propiedades del campo de texto
  float x, y, h, w;
  
  // Colores
  color bgColor = color(255, 255, 255);
  color fgColor = color(0, 0, 0);
  color selectedColor = color (149, 127, 239);
  color borderColor = color(30, 30, 30);
  int borderWeight = 1;
  
  // Texto del campo
  String text = "";
  int textLength = 0;
  int textSize = 20;
  boolean selected = false;
   
  // Constructor
  TextField(float x, float y, float w, float h) {
    this.x = x; this.y = y; this.w = w; this.h = h;
   }
  
  // Dibuja el Campo de Texto
  void display() {
  pushStyle();
    if (selected) {
       fill(selectedColor);
    } 
    else {
       fill(bgColor);
    }
      
      strokeWeight(borderWeight);
      stroke(borderColor);
      rect(x, y, w, h, 5);
      textFont(fuente2);
      fill(fgColor);
      textSize(textSize);
      textAlign(LEFT);
      text(text, x + 5, y + textSize);
      popStyle();
   }
   
   // Añadir y borrar el texto que se teclea
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
             addText(' '); // SPACE
         } else {
             addText(key);
         }
      }
   }
   
   // Añadir la letra c al final del texto
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // Quitar la última letra del texto
   void removeText() {
     println("Borrant de "+text);
      if (text.length() >= 1) {
         text = text.substring(0, text.length() - 1);
         textLength--;
      }
   }

//Quitar todo el texto
void removeAllText(){
     this.text = "";
   }
   
   // Indica si el ratón está encima del campo de texto
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }

   //Selecciona y Deselecciona el campo de texto si se pulsa fuera
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
}
