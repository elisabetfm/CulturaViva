
//Cambio de pantalla con las tecla UP y DOWN
void keyPressed() {
  if (keyCode==UP) {
    numPantalla++;
  } else if (keyCode==DOWN) {
    numPantalla--;
  }
  numPantalla = constrain(numPantalla, 1, 7);
}

void mousePressed() {

  buttonPressed();
  
  selectPressed();

  
}

void selectPressed(){
    // Selects

  if (s1.mouseOverSelect() && s1.enabled) {
    if (!s1.collapsed) {
      s1.update();      // Actualitzar valor
      numPantalla = 3;
    }
    s1.toggle();        // Plegar o desplegar
  } else if (s2.mouseOverSelect() && s2.enabled) {
    if (!s2.collapsed) {
      s2.update();      // Actualitzar valor
      numPantalla = 3;
    }
    s2.toggle();        // Plegar o desplegar
  } else if (s3.mouseOverSelect() && s3.enabled) {
    if (!s3.collapsed) {
      s3.update();      // Actualitzar valor
      numPantalla = 3;
    }
    s3.toggle();        // Plegar o desplegar
  }
}


void buttonPressed() {
  if (bIdioma1.mouseOverButton() && bIdioma1.enabled) {
  } else if (bIdioma2.mouseOverButton() && bIdioma2.enabled) {
  } else if (bIdioma3.mouseOverButton() && bIdioma3.enabled) {
  } else if (bIdioma4.mouseOverButton() && bIdioma4.enabled) {
  } else if (bCalendario.mouseOverButton() && bCalendario.enabled) {
  }
  //ImageButtons
  else if (ib1.mouseOverButton() && ib1.enabled) {
    
  } 
  else if (ib2.mouseOverButton() && ib2.enabled) {
    numPantalla = 4;
  }
}

// Modifica el cursor
void updateCursor() {

  if ((ib1.mouseOverButton() && ib1.enabled ) ||
    (ib2.mouseOverButton() && ib2.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
