class Card {

  // Propiedades
  PImage img;
  String titulo, lugar, fecha;
  String seccion;
  String descripcion;

  float sizeTitulo = 24;

  // Constructores
  Card() {
  }

  Card(String titulo, String lugar, String fecha, String seccion, String descripcion) {
    this.titulo = titulo;
    this.lugar = lugar;
    this.fecha = fecha;
    this.seccion = seccion;
    this.descripcion = descripcion;
  }

  Card(String[] info) {
    this.titulo = info[0];
    this.lugar = info[1];
    this.fecha = info[2];
    this.seccion = info[3];
    this.descripcion = info[4];
  }

  //Setters
  void setSizeTitulo(float t) {
    this.sizeTitulo = t;
  }

  void setImage(PImage img) {
    this.img = img;
  }

  // Dibuja la Card
  void display(float x, float y, float w, float h, float b) {
    pushStyle();
    textFont(fuente6); 
    // Rectángulo inferior
    stroke(0); 
    fill(255, 255, 255);
    rect(x, y, w, h, b/2);

    // imagen descriptiva
    float imgW = (w/3) - 2*b;
    float imgH = h - 2*b;
    if (img!=null) {
      image(img, x + b, y + b, imgW, imgH);
      noFill(); 
      rect(x + b, y + b, imgW, imgH);
    } else {
      fill(50);
      rect(x + b, y + b, imgW, imgH);
    }

    // Título
    fill(0); 
    textSize(sizeTitulo); 
    textAlign(CENTER);
    text(titulo, x + 2*w/3, y + h/5);

    // Lugar y fecha
    fill(0); 
    textSize(sizeTitulo - 4); 
    textAlign(CENTER);
    text(lugar+", "+fecha, x + 2*w/3, y + 3*h/5);

    // Sección
    fill(0); 
    textSize(sizeTitulo - 4); 
    textAlign(CENTER);
    text(seccion, x + 2*w/3, y + 2*h/5);

    // Descripción
    fill(0);
    textSize(sizeTitulo - 8); 
    textAlign(LEFT);
    text(descripcion, x + w/3 + b, y+2*h/3 - b +10, 2*w/3, 4*h/5);

    popStyle();
  }
}
