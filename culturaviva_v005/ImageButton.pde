// Clase Botón con Imágenes

class ImageButton {

  // Propiedades de un botón:
  float x, y, w, h;  // Posición y dimensiones
  PImage img;  // Imágenes del botón
  boolean enabled;   // Habilitado / Deshabilitado

  // Método Constructor
  ImageButton(PImage img, float x, float y, float w, float h) {
    this.img = img;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
  }

  // Setters
  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuja el botón
  void display() {
    imageMode(CORNER);
    image(img, this.x, this.y, this.w, this.h);
  }

  // Indica si el ratón está encima del botón
  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y) && 
      (mouseY<= this.y + this.h);
  }
}
