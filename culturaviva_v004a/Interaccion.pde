
//Cambio de pantalla con las tecla UP y DOWN
void keyPressed() {
  if (keyCode==UP) {
    numPantalla++;
  } else if (keyCode==DOWN) {
    numPantalla--;
  }
  numPantalla = constrain(numPantalla, 1, 7);
  
  buscarText.keyPressed(key, (int)keyCode);
  usuarioText.keyPressed(key, (int)keyCode);
  contrasenaText.keyPressed(key, (int)keyCode);

// Anar un mes enrere
  if(keyCode==LEFT){
    calendario.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if(keyCode==RIGHT){
    calendario.nextMonth();
    println("PREV MONTH");
  }
}

void mousePressed() {

  buttonPressed();
  
  selectPressed();

  textfieldPressed();
  
  calendarioPressed();
  
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
    numPantalla = 8;
  } else if (bEnter.mouseOverButton() && bEnter.enabled){
    numPantalla = 2;
  } else if (bIr.mouseOverButton() && bIr.enabled){
    numPantalla = 3;
  }
  //ImageButtons
  else if (iCuenta.mouseOverButton() && iCuenta.enabled) {
    numPantalla = 6;
    
  } 
  else if (iComprar.mouseOverButton() && iComprar.enabled) {
    numPantalla = 4;
  } else if (iBuscar.mouseOverButton() && iBuscar.enabled){
    numPantalla = 3;
}
}

void textfieldPressed(){
  buscarText.isPressed();
  usuarioText.isPressed();
  contrasenaText.isPressed();
}

void calendarioPressed(){
  calendario.checkButtons();
}
// Modifica el cursor
void updateCursor() {

  if ((iCuenta.mouseOverButton() && iCuenta.enabled ) ||
    (iComprar.mouseOverButton() && iComprar.enabled))  
    //|| (iBuscar.mouseOverButton () && iBuscar.enabled)
    {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
