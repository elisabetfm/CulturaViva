//diseño de las pantallas de Cultura Viva

int numPantalla = 1;

void setup(){
  fullScreen(); //dimensión de la pantalla
  noStroke(); // figuras sin bordes
  textAlign(CENTER);textSize(20); //alineación y tamaño del texto
}

void draw(){
  background (0);
  if (numPantalla==1){
    dibujaPantalla01();
  }
  else if (numPantalla==2){
    dibujaPantalla02();
  }
  else if (numPantalla==3){
    dibujaPantalla03();
  }
  else if (numPantalla==4){
    dibujaPantalla04();
  }
  else if (numPantalla==5){
    dibujaPantalla05();
  }
  else if (numPantalla==6){
    dibujaPantalla06();
  }
  else if (numPantalla==7){
    dibujaPantalla07();
  }
}
