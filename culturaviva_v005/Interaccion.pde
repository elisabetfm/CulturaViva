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
        idUsuarioLogin=datos[i][2];
        break;
      }
    } if(ok){
      // trobat
       numPantalla = 13;
       bBorraro.setEnabled(true);
       println("TROBAT");
    } else {
      // no exiosterix
      println("NO TROBAT");
    }
    
  } else if (numPantalla==6 && bIr.mouseOverButton() && bIr.enabled){
    numPantalla = 3;
    String fecha = calendario.selectedDay+"/"+ calendario.selectedMonth+"/"+calendario.selectedYear;
    String [][] datos = getInfoTablaEventosCalendario (fecha);
    if(datos.length==0){
       p1.setVisible(true);
      numPantalla = 19;
    } else{
      numPantalla = 3;
      pc.setData(datos);
      pc.setCards();
    }
  } else if (iCuenta.mouseOverButton() && iCuenta.enabled) {
    numPantalla = 4;
  } else if (iBuscar.mouseOverButton() && iBuscar.enabled){
    String escrito = buscarText.text.toUpperCase();
    String[][] datos = getInfoTablaEventosBuscar(escrito);
    
    if(datos.length==0){
      p1.setVisible(true);
      numPantalla = 19;
    } 
    else {
      numPantalla = 3;
      pc.setData(datos);
      pc.setCards();
    } 
  } else if (numPantalla==19 && p1.bAceptar.mouseOverButton() && p1.bAceptar.enabled){
    numPantalla = 2;
  } else if (numPantalla==13 && bInsertaro.mouseOverButton() && bInsertaro.enabled){
    descripcionText.text="";
    bBorraro.setEnabled(false);
    numPantalla = 14;
  } else if (numPantalla==13 && bEditaro.mouseOverButton() && bEditaro.enabled){
    numPantalla = 15;
  } else if (numPantalla==13 && bBorraro.mouseOverButton() && bBorraro.enabled){
    numPantalla = 16;
  } else if (bInicio.mouseOverButton() && bInicio.enabled){
    numPantalla = 2;
  } else if (bSiguiente.mouseOverButton() && bSiguiente.enabled){
    pc.nextPage();
    pc1.nextPage();
  } else if(bAnterior.mouseOverButton() && bAnterior.enabled){
    pc.prevPage();
    pc1.prevPage();
  } else if (numPantalla==14 && bInsert.mouseOverButton() && bInsert.enabled){
     // Agafar els valors dels camps del formulari
     String titulo = tituloText.text;
     String descripcion = descripcionText.text;
     String fecha = fechaText.text;
     String idSeccion = sSeccion.selectedId;
     String idLugar = sLugar.selectedId;
     String usuario = idUsuarioLogin;
    // Inserir a la BBDD
    insertInfoTablaEventos(titulo, descripcion, fecha, idSeccion, idLugar, usuario);
    // Resetear los campos del formulario
    resetFormulario();
     p.setVisible(true);
     numPantalla = 18;
  } else if (bReset.mouseOverButton() && bReset.enabled){
    //Resetear los cmapos del formulario
    resetFormulario();
  } else if (numPantalla==15 && bEditar.mouseOverButton() && bEditar.enabled){
    String idEvent = sEB.selectedId;
    String[] info = getInfoEvento(idEvent);
    printArray(info);
    sLugar.selectById(info[3]);
    sSeccion.selectById(info[4]);
    tituloText.text = info[1];
    descripcionText.text = info[2];
    fechaText.text = info [5];
    numPantalla = 14;
     //Actualiza la 
  } else if (numPantalla==14 && iFoto.mouseOverButton() && iFoto.enabled){
     // Se abre el diálogo el dialeg
    selectInput("Selecciona una imagen ...", "fileSelected");
     // Copiam la imatge
    // get (rutaImagen, rutaCopia, tituloImagen);
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

  if (iCuenta.mouseOverButton() && iCuenta.enabled ){
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  if(bInsert.mouseOverButton() || bReset.mouseOverButton()){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  } if (iFoto.mouseOverButton()){
    cursor (HAND);
  } 
  else {
    cursor (ARROW);
  }
}

void resetFormulario(){
  //c.resetValue();
  tituloText.removeAllText();
  descripcionText.removeAllText();
  fechaText.removeAllText();
  //sSeccion.removeAllText();
  //sLugar.removeAllText();
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
  else if (numPantalla==18 && confirmar.bCancelar.mouseOverButton()){
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
  
}
