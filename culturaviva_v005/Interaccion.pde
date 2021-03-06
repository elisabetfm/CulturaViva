
//
void keyPressed() {
  numPantalla = constrain(numPantalla, 1, 7);
  
  buscarText.keyPressed(key, (int)keyCode);
  usuarioText.keyPressed(key, (int)keyCode);
  contrasenaText.keyPressed(key, (int)keyCode);
  tituloText.keyPressed(key, (int)keyCode);
  descripcionText.keyPressed(key, (int)keyCode);
  seccionText.keyPressed(key, (int)keyCode);
  lugarText.keyPressed(key, (int)keyCode);
  fechaText.keyPressed(key, (int)keyCode);  

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
  
  counterPressed();  
  
}

void selectPressed(){
    // Selects

  if (s1.mouseOverSelect() && s1.enabled) {
    if (!s1.collapsed) {
      s1.update();      // Actualitzar valor
      if (s1.selectedValue.equals("obras de teatro")){ //condició per a què es dibuixi un rectangle
      println("ANANT a pantalla Teatre");
        numPantalla = 7;
       updatePageCard();
      } else if (s1.selectedValue.equals("exposiciones de arte")){ //condició per a què es dibuixi un rectangle
        numPantalla = 8;
        updatePageCard();
      } else if (s1.selectedValue.equals("festivales")){ //condició per a què es dibuixi un rectangle
        numPantalla = 9;
        updatePageCard();
      } else if (s1.selectedValue.equals("conciertos")){ //condició per a què es dibuixi un rectangle
        numPantalla = 10;
        updatePageCard();
      } else if (s1.selectedValue.equals("ferias")){ //condició per a què es dibuixi un rectangle
        numPantalla = 11;
        updatePageCard();
      } else if (s1.selectedValue.equals("clubs de lectura")){ //condició per a què es dibuixi un rectangle
        numPantalla = 12;
        updatePageCard();
      }
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
    numPantalla = 6;
  } else if (bEnter.mouseOverButton() && bEnter.enabled){
    numPantalla = 13;
  } else if (bIr.mouseOverButton() && bIr.enabled){
    numPantalla = 3;
  }
  //ImageButtons
  else if (iCuenta.mouseOverButton() && iCuenta.enabled) {
    numPantalla = 4;
    
  } else if (iBuscar.mouseOverButton() && iBuscar.enabled){
    numPantalla = 3;
}
}

void textfieldPressed(){
  buscarText.isPressed();
  usuarioText.isPressed();
  contrasenaText.isPressed();
  tituloText.isPressed();
  descripcionText.isPressed();
  seccionText.isPressed();
  lugarText.isPressed();
  fechaText.isPressed();
  
}

void counterPressed(){
  c.update();
}

void calendarioPressed(){
  calendario.checkButtons();
  
}
// Modifica el cursor
void updateCursor() {

  if (iCuenta.mouseOverButton() && iCuenta.enabled ){
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  if(c.mouseOverButtons() || bInsertar.mouseOverButton() || bReset.mouseOverButton()){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
}

void resetFormulari(){
  c.resetValue();
 // tituloText.removeAllText();
 // descripcionText.removeAllText();
}
