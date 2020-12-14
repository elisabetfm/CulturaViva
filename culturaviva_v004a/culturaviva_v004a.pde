//diseño de las pantallas de Cultura Viva

int numPantalla = 1;

void setup(){
  fullScreen(); //dimensión de la pantalla
  noStroke(); // figuras sin bordes
  textAlign(CENTER);textSize(20); //alineación y tamaño del texto
  setGUI();
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

//Cambio de pantalla con las tecla UP y DOWN
void keyPressed(){
  if(keyCode==UP){
    numPantalla++;
  }
  else if(keyCode==DOWN){
    numPantalla--;
  }
  numPantalla = constrain(numPantalla, 1, 7);
}

void mousePressed(){
  
  if(bIdioma1.mouseOverButton() && bIdioma1.enabled){
    
  }else if (bIdioma2.mouseOverButton() && bIdioma2.enabled){
    
  }else if (bIdioma3.mouseOverButton() && bIdioma3.enabled){
    
  }else if (bIdioma4.mouseOverButton() && bIdioma4.enabled){
    
  }else if (bCuenta.mouseOverButton() && bCuenta.enabled){
    
  //}else if (bSecciones.mouseOverButton() && bSecciones.enabled){
    
  //}else if (bLugares.mouseOverButton() && bLugares.enabled){
    
  //}else if (bOtros.mouseOverButton() && bOtros.enabled){
    
  //}else if (bReventas.mouseOverButton() && bReventas.enabled){
    
  }else if (bBuscar.mouseOverButton() && bBuscar.enabled){
    
  }else if (bCalendario.mouseOverButton() && bCalendario.enabled){
    
  }else if (bComprar.mouseOverButton() && bComprar.enabled){
    
  }
  
}
