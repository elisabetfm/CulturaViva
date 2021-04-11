// Clase Botón

class Button {

  // Propiedades de un botón:
  float x, y, w, h;  // Posición y dimensiones
  // Colores de contorno, relleno, activación y desactivación
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;
  String textBoton;  // Texto
  boolean enabled;  // Habilitado / deshabilitado

  // Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoton = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(138, 163, 155);
    fillColorOver = color(35, 61, 77);
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibujar el botón
  void display() {
    if (!enabled) {
      fill(fillColorDisabled);  // Color deshabilitado
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color cuando el ratón está encima
    } else {
      fill(fillColor);          // Color activo sin el ratón encima
    }
    stroke(strokeColor);  //Color del contorno
    strokeWeight(2);        //Anchura del contorno
    rect(this.x, this.y, this.w, this.h, 10);    // Rectángulo del botón

    // Texto: color, alineación y medidas
    fill(0); 
    textAlign(CENTER); 
    textFont(fuente1); 
    textSize(20);
    text(textBoton, this.x + this.w/2, this.y + this.h/2 + 10);
  }

  // Indica si el cursor está sobre el botón
  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y) && 
      (mouseY<= this.y + this.h);
  }
}
