//Clase PopUp
class PopUp {

  // Dimensiones
  float x, y, w, h;

  // Propiedades
  PImage img;
  String titulo;
  String mensaje;

  Button bAceptar;
  float buttonW = 200;
  float buttonH = 80;

  boolean visible = true;

  // Constructor
  PopUp(String titulo, String mensaje, float x, float y, float w, float h) {
    this.titulo = titulo;
    this.mensaje = mensaje;
    this.x = x; 
    this.y = y; 
    this.w = w; 
    this.h = h;
    this.bAceptar = new Button("Aceptar", x + w/2 - buttonW/2, y + h - buttonH*1.5, buttonW, buttonH);
  }

  //Setters
  void setImage(PImage img) {
    this.img = img;
  }

  void setTexts(String titulo, String mensaje) {
    this.titulo = titulo;
    this.mensaje = mensaje;
  }

  void setVisible(boolean b) {
    this.visible = b;
    if (!this.visible) {
      this.bAceptar.setEnabled(false);
    } else {
      this.bAceptar.setEnabled(true);
    }
  }

  // Dibuja el PopUp 
  void display() {
    if (this.visible) {
      float b = 40;
      pushStyle();
      textFont(fuente4); 
      // Rectángulo
      stroke(0); 
      strokeWeight(4);
      fill(184, 153, 138);
      rect(x, y, w, h, b/2);
      line(x, y + 2*b, x+w, y + 2*b);

      // Título
      fill(0); 
      textSize(38); 
      textAlign(LEFT);
      text(titulo, x + b, y + 1.4*b);

      // Mensaje
      fill(0);
      textSize(24); 
      textAlign(CENTER);
      text(mensaje, x + w/2, y + 4*b);

      // Botón "Aceptar"
      bAceptar.display();
      popStyle();
    }
  }

  // Comprueba si el ratón está encima del PopUp
  boolean mouseOverButton() {
    return bAceptar.mouseOverButton() && bAceptar.enabled;
  }
}
