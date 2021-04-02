class DayButton {
  
  // Dimensiones del botón
  float x, y, w, h;
  
  // Fecha representativa
  int dia, mes, ano;
  
  // Estado del botón
  boolean selected, enabled;
  
  // Constructor
  DayButton(float x, float y, float w, float h, int d, int m, int a){
    this.x = x; 
    this.y=y; 
    this.w = w;
    this.h = h;
    this.dia = d; 
    this.mes = m; 
    this.ano = a;
    this.selected = false;
    this.enabled = true;
  }
  
  // Setters
  void setEnabled(boolean b){
    this.enabled = b;
  }
  
  void setSelected(boolean b){
    this.selected = b;
  }
  
  // Dibuja el botón
  void display(){
    pushStyle();
    if(enabled){
      fill(255); 
    }
    else{
      fill(254, 127, 45); 
    }
    stroke(0); 
    strokeWeight(1);
    rect(x, y, w, h, 5);
    if(selected){
      fill(252, 202, 70); 
      noStroke();
      ellipse(x + w/2, y+h/2, 80, 80);
    }
    fill(0); 
    textFont(fuente3); 
    textSize(24); 
    textAlign(CENTER);
    text(dia, x + w/2, y + h/2 + 10);
    popStyle();
  }
  
  // Ratón encima del botón
  boolean mouseOver(){
    return mouseX>=this.x && mouseX<=this.x+this.w &&
           mouseY>=this.y && mouseY<=this.y+this.h;
  }
}
