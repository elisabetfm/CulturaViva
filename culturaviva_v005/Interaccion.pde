void keyPressed() {
  buscarText.keyPressed(key, (int)keyCode);
  usuarioText.keyPressed(key, (int)keyCode);
  contrasenaText.keyPressed(key, (int)keyCode);
  tituloText.keyPressed(key, (int)keyCode);
  descripcionText.keyPressed(key, (int)keyCode);
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
  
  borrarPressed();
  
  insertarPressed();
  
}

void selectPressed(){
    // Selects

  if (s1.mouseOverSelect() && s1.enabled) {
    if (!s1.collapsed) {
      s1.update();      // Actualitzar valor
    if (s1.selectedValue.equals("obras de teatro")){ //condició per a què es dibuixi un rectangle
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
      s2.update(); // Actualitzar valor
      if (s2.selectedValue.equals("Mallorca")){ //
        numPantalla = 3;
        updatePageCardLugar();
      } else if (s2.selectedValue.equals("Menorca")){ //condició per a què es dibuixi un rectangle
        numPantalla = 3;
        updatePageCardLugar();
      } else if (s2.selectedValue.equals("Ibiza")){ //condició per a què es dibuixi un rectangle
        numPantalla = 3;
        updatePageCardLugar();
      } else if (s2.selectedValue.equals("Formentera")){ //condició per a què es dibuixi un rectangle
        numPantalla = 3;
        updatePageCardLugar();
      } 
    }
    s2.toggle();        // Plegar o desplegar
  } else if (s3.mouseOverSelect() && s3.enabled) {
    if (!s3.collapsed) {
      s3.update();      // Actualitzar valor
      if (s3.selectedValue.equals("evento nocturno")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("evento diurno")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("barra")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("foodtrucks")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("servicio de guardería")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("máximo de 100 personas")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("más de 100 personas")){
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("gratis")){
        numPantalla = 3;
        updatePageCardDescripcion();
      }
    }
    s3.toggle();        // Plegar o desplegar
  } else if (sEB.mouseOverSelect() && sEB.enabled) {
    if (!sEB.collapsed) {
      sEB.update();      // Actualitzar valor
      //numPantalla = 3;
    }
    sEB.toggle();        // Plegar o desplegar
  } else if (sSeccion.mouseOverSelect() && sSeccion.enabled) {
    if (!sSeccion.collapsed) {
      sSeccion.update();      // Actualitzar valor
    }
    sSeccion.toggle();        // Plegar o desplegar
  } else if (sLugar.mouseOverSelect() && sLugar.enabled) {
    if (!sLugar.collapsed) {
      sLugar.update();      // Actualitzar valor
    }
    sLugar.toggle();  // Plegar o desplegar
  }
 }

void buttonPressed() {
    if (bCalendario.mouseOverButton() && bCalendario.enabled) {
    numPantalla = 6;
  } else if(numPantalla==4 && bEnter.mouseOverButton() && bEnter.enabled){
    String usuario = usuarioText.text;
    String password = contrasenaText.text; 
    String[][] datos = getInfoUsuarioContrasena();
    boolean ok = false;
    for(int i=0; i<datos.length; i++){
      if(usuario.equals(datos[i][0]) && password.equals(datos[i][1])){
        ok = true;
        break;
      }
    } if(ok){
      // trobat
       numPantalla = 13;
       println("TROBAT");
    } else {
      // no exiosterix
      println("NO TROBAT");
    }
    
  } else if (bIr.mouseOverButton() && bIr.enabled){
    numPantalla = 3;
  } else if (iCuenta.mouseOverButton() && iCuenta.enabled) {
    numPantalla = 4;
  } else if (iBuscar.mouseOverButton() && iBuscar.enabled){
    String escrito = buscarText.text;
    String[][] datos = getInfoTituloEventos();
    boolean ok = false;
    for(int i=0; i<datos.length; i++){
      if(escrito.equals(datos[i][0])){
        ok = true;
        break;
      }
    } if(ok){
      // trobat
       numPantalla = 3;
       updatePageCardEscrito();
    } else {
      // no existeix
      p1.setVisible(true);
      numPantalla = 19;
    }
  } else if (numPantalla==13 && bInsertaro.mouseOverButton() && bInsertaro.enabled){
    descripcionText.text="";
    numPantalla = 14;
  } else if (numPantalla==13 && bEditaro.mouseOverButton() && bEditaro.enabled){
    numPantalla = 15;
  } else if (numPantalla==13 && bBorraro.mouseOverButton() && bBorraro.enabled){
    numPantalla = 16;
  } 
}

void textfieldPressed(){
  buscarText.isPressed();
  usuarioText.isPressed();
  contrasenaText.isPressed();
  
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
  if(c.mouseOverButtons() || bInsert.mouseOverButton() || bReset.mouseOverButton()){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
}

void resetFormulario(){
  c.resetValue();
  //tituloText.removeAllText();
  //descripcionText.removeAllText();
}

void borrarPressed(){
  if (numPantalla==16 && bBorrar.mouseOverButton() && bBorrar.enabled){
    confirmar.setVisible(true);
    numPantalla = 17;
  } 
  else if (numPantalla==17 && confirmar.bAceptar.mouseOverButton()){
     confirmar.setVisible(false);
     
     // Agafar el valor Id del Select
    String id = String.valueOf(sEB.selectedIndex);
     
    // Actualitza la BBDD
    deleteInfoTablaEventos(id);
    
    // Recarregar informació al select
    String[][] selectValues = getInfoTablaEventos();
    sEB.setData(selectValues);
    sEB.reset();
    
    // Mostra el Popup
    p.setVisible(true);
    numPantalla = 18;
  }
  else if (confirmar.bCancelar.mouseOverButton()){
    confirmar.setVisible(false);
    numPantalla = 16;
  }
  else if (numPantalla==18 && p.bAceptar.mouseOverButton() && p.bAceptar.enabled){
    numPantalla = 2;
  }
}

void insertarPressed(){
  tituloText.isPressed();
  descripcionText.isPressed();
  fechaText.isPressed();
  c.update();
}
