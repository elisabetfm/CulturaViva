//diseño de las pantallas de Cultura Viva

int numPantalla = 2;

void setup() {
  //fullScreen(); //dimensión de la pantalla
  size(1600, 800);
  noStroke(); // figuras sin bordes
  textAlign(CENTER);
  textSize(20); //alineación y tamaño del texto
  loadMedia();
  setGUI();
}

void draw() {
  image(imgFondo, 0, 0, width, height);
  
  if(frameCount<20){
    dibujaPantalla01();
  }
  else {
     if (numPantalla==2) {
      dibujaPantalla02();
    } else if (numPantalla==3) {
      dibujaPantalla03();
    } else if (numPantalla==4) {
      dibujaPantalla04();
    } else if (numPantalla==5) {
      dibujaPantalla05();
    } else if (numPantalla==6) {
      dibujaPantalla06();
    } else if (numPantalla==7) {
      dibujaPantalla07();
    } else if (numPantalla==8) {
      dibujaPantalla08();
    }
  }
  
  updateCursor();
  
 //println(mouseX+", "+mouseY);
}
