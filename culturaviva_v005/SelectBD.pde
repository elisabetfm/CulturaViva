//Clase Select Base de Datos
class SelectBD {
  float x, y, w, h;            // Posición y dimensiones
  String[][] texts;            // Valores posibles
  int selectedIndex;         // Fila seleccionada
  String selectedId;
  String selectedValue;      // Valor Seleccionado
  boolean collapsed = true;  // Plegado / Desplegado
  boolean enabled;           // Habilitado / Deshabilitado
  float lineSpace = 15;      // Espacio entre líneas

  SelectBD(String[][] texts, float x, float y, float w, float h) {
    this.texts = texts;
    this.selectedId = "";
    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }

  void selectById(String id) {
    this.selectedIndex = 0;
    this.selectedId = "";
    this.selectedValue = "";
    for (int i=0; i<texts.length; i++) {
      if (texts[i][0].equals(id)) {
        this.selectedIndex = i;
        this.selectedId = texts[i][0];
        this.selectedValue = texts[i][1];
      }
    }
  }

  void reset() {
    this.selectedId = "";
    this.selectedValue = "";
  }

  void setData(String[][] info) {
    this.texts = info;
  }

  void display() {
    pushStyle();
    textAlign(LEFT);
    stroke(0); 
    strokeWeight(2); 
    fill(255);
    rect(x, y, w, h);

    fill(100);
    rect(x + w - 30, y, 30, h);

    fill(0); 
    stroke(0);
    triangle(x + w - 25, y+5, x + w - 15, y + 25, x + w - 5, y+5);

    fill(0); 
    textSize(14); 
    text(selectedValue, x + 10, y + 20);

    if (!this.collapsed) {
      fill(255); 
      stroke(0);
      rect(x, y+h, w, (h + lineSpace)*texts.length);

      for (int i=0; i<texts.length; i++) {
        if (i== clickedOption()) {
          fill(149, 127, 239); 
          noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8);
        }

        fill(0);
        textAlign(LEFT);
        text(texts[i][1], x + 10, y + h + 25 + (h + lineSpace)*i);
      }
    }
    popStyle();
  }

  void setCollapsed(boolean b) {
    this.collapsed = b;
  }

  void toggle() {
    this.collapsed = !this.collapsed;
  }


  void update() {
    int option = clickedOption();
    println(option);
    selectedIndex = Integer.valueOf(texts[option][0]);
    selectedValue = texts[option][1];
    selectedId = texts[option][0];
    textAlign (CENTER);
  }

  // Indica si el ratón está encima del select
  boolean mouseOverSelect() {
    if (this.collapsed) {
      return (mouseX >= x) && 
        (mouseX <= x + w) && 
        (mouseY >= y) && 
        (mouseY <= y + h);
    } else {
      return (mouseX>= x) && 
        (mouseX<= x + w) && 
        (mouseY>= y) && 
        (mouseY<= y + h + (h + lineSpace)*texts.length);
    }
  }

  int clickedOption() {
    int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length, 0, texts.length);
    return i;
  }
}
