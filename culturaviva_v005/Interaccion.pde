void keyPressed() { //cuando el teclado está pulsado
  buscarText.keyPressed(key, (int)keyCode);
  usuarioText.keyPressed(key, (int)keyCode);
  contrasenaText.keyPressed(key, (int)keyCode);
  tituloText.keyPressed(key, (int)keyCode);
  descripcionText.keyPressed(key, (int)keyCode);
  fechaText.keyPressed(key, (int)keyCode);  

  // Ir un mes atrás
  if (keyCode==LEFT) {
    calendario.prevMonth();
    println("PREV MONTH");
  }
  // Ir un mes delante
  else if (keyCode==RIGHT) {
    calendario.nextMonth();
    println("PREV MONTH");
  }
}

void mousePressed() { // cuando el ratón está pulsado

  buttonPressed(); // encima de los botones

  selectPressed(); // encima de los selects

  textfieldPressed(); // encima de los campos de textos

  calendarioPressed(); // encima del calendario

  borrarPressed(); 

  insertarPressed();
}

void selectPressed() {
  // Selects

  if (s1.mouseOverSelect() && s1.enabled) { // cuando el select 1 está seleccionado y habilitado
    if (!s1.collapsed) {
      s1.update();      // Actualizar valor
      if (s1.selectedValue.equals("obras de teatro")) { //condición para quee se dibuje una pantalla u otra
        numPantalla = 7;
        updatePageCard();
      } else if (s1.selectedValue.equals("exposiciones de arte")) { 
        numPantalla = 8;
        updatePageCard();
      } else if (s1.selectedValue.equals("festivales")) { 
        numPantalla = 9;
        updatePageCard();
      } else if (s1.selectedValue.equals("conciertos")) { 
        numPantalla = 10;
        updatePageCard();
      } else if (s1.selectedValue.equals("ferias")) { 
        numPantalla = 11;
        updatePageCard();
      } else if (s1.selectedValue.equals("clubs de lectura")) {
        numPantalla = 12;
        updatePageCard();
      }
    }
    s1.toggle();        // Plegar o desplegar
  } else if (s2.mouseOverSelect() && s2.enabled) { // cuando el select 2 está seleccionado y habilitado
    if (!s2.collapsed) {
      s2.update(); // Actualizar valor
      if (s2.selectedValue.equals("Mallorca")) { //condición para quee se dibuje una pantalla u otra
        numPantalla = 3;
        updatePageCardLugar(); //Actualizar el valor de los PagedCard
      } else if (s2.selectedValue.equals("Menorca")) { 
        numPantalla = 3;
        updatePageCardLugar();
      } else if (s2.selectedValue.equals("Ibiza")) { 
        numPantalla = 3;
        updatePageCardLugar();
      } else if (s2.selectedValue.equals("Formentera")) { 
        numPantalla = 3;
        updatePageCardLugar(); 
      }
    }
    s2.toggle();        // Plegar o desplegar
  } else if (s3.mouseOverSelect() && s3.enabled) { // cuando el select 3 está seleccionado y habilitado
    if (!s3.collapsed) {
      s3.update();      // Actualizar valor
      if (s3.selectedValue.equals("evento nocturno")) { //condición para quee se dibuje una pantalla u otra
        numPantalla = 3;
        updatePageCardDescripcion(); //Actualizar el valor de los PagedCard
      } else if (s3.selectedValue.equals("evento diurno")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("barra")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("foodtrucks")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("servicio de guardería")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("máximo de 100 personas")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("más de 100 personas")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      } else if (s3.selectedValue.equals("gratis")) {
        numPantalla = 3;
        updatePageCardDescripcion();
      }
    }
    s3.toggle();        // Plegar o desplegar
  } else if ((numPantalla==15 || numPantalla==16) && sEB.mouseOverSelect() && sEB.enabled) { // cuando el selectEB está seleccionado y habilitado
    if (!sEB.collapsed) {
      sEB.update();      // Actualizar valor
    }
    sEB.toggle();        // Plegar o desplegar
  } else if ((numPantalla==15 || numPantalla==16) && sSeccionEditar.mouseOverSelect() && sSeccionEditar.enabled) { // cuando el select de la seccion a elegir para editar está seleccionado y habilitado
    if (!sSeccionEditar.collapsed) {
      sSeccionEditar.update();      // Actualizar valor
    }
    sSeccionEditar.toggle();        // Plegar o desplegar
  } else if ((numPantalla==20 || numPantalla==14) && sSeccion.mouseOverSelect() && sSeccion.enabled) { // cuando el select de Sección está seleccionado y habilitado
    if (!sSeccion.collapsed) {
      sSeccion.update();      // Actualizar valor
    }
    sSeccion.toggle();        // Plegar o desplegar
  } else if ((numPantalla==20 || numPantalla==14) && sLugar.mouseOverSelect() && sLugar.enabled) { // cuando el select de Lugar está seleccionado y habilitado
    if (!sLugar.collapsed) {
      sLugar.update();      // Actualizar valor
    }
    sLugar.toggle();  // Plegar o desplegar
  }
}

void buttonPressed() { // cuando el botón está pulsado
  if (bCalendario.mouseOverButton() && bCalendario.enabled) { // cuando el ratón está encima del botón Calendario y está habilitado
    numPantalla = 6;
  } else if ((numPantalla==4 || numPantalla==21) && bEnter.mouseOverButton() && bEnter.enabled) { // cuando el ratón está encima del botón Enter y está habilitado
    String usuario = usuarioText.text;
    String password = contrasenaText.text; 
    String[][] datos = getInfoUsuarioContrasena();
    boolean ok = false;
    for (int i=0; i<datos.length; i++) {
      if (usuario.equals(datos[i][0]) && password.equals(datos[i][1])) {
        ok = true;
        idUsuarioLogin=datos[i][2];
        break;
      }
    } 
    if (ok) {
      // encontrado
      numPantalla = 13;
      bBorraro.setEnabled(true);
      println("¡Encontrado!");
    } else {
      // no existe
      numPantalla = 21;
      println("¡No encontrado!");
    }
  } else if (numPantalla==6 && bIr.mouseOverButton() && bIr.enabled) { // cuando el ratón está encima del botón bIr y está habilitado
    numPantalla = 3;
    String fecha = calendario.selectedDay+"/"+ calendario.selectedMonth+"/"+calendario.selectedYear;
    String [][] datos = getInfoTablaEventosCalendario (fecha);
    if (datos.length==0) {
      p1.setVisible(true);
      numPantalla = 19;
    } else {
      numPantalla = 3;
      pc.setData(datos);
      pc.setCards();
    }
  } else if (iCuenta.mouseOverButton() && iCuenta.enabled) { // cuando el ratón está encima del botón iCuenta y está habilitado
    numPantalla = 4;
    resetFormulario();
  } else if (iBuscar.mouseOverButton() && iBuscar.enabled) { // cuando el ratón está encima del botón iBuscar y está habilitado
    String escrito = buscarText.text.toUpperCase();
    String[][] datos = getInfoTablaEventosBuscar(escrito);

    if (datos.length==0) {
      p1.setVisible(true);
      numPantalla = 19;
    } else {
      numPantalla = 3;
      pc.setData(datos);
      pc.setCards();
    }
  } else if (numPantalla==19 && p1.bAceptar.mouseOverButton() && p1.bAceptar.enabled) { // cuando el ratón está encima del botón bAceptar y está habilitado
    numPantalla = 2;
  } else if (numPantalla==13 && bInsertaro.mouseOverButton() && bInsertaro.enabled) { // cuando el ratón está encima del botón bInsertaro y está habilitado
    descripcionText.text="";
    bBorraro.setEnabled(false);
    resetFormulario();
    numPantalla = 14;
  } else if (numPantalla==13 && bEditaro.mouseOverButton() && bEditaro.enabled) { // cuando el ratón está encima del botón bEditaro y está habilitado
    numPantalla = 15;
  } else if (numPantalla==13 && bBorraro.mouseOverButton() && bBorraro.enabled) { // cuando el ratón está encima del botón bBorraro y está habilitado
    numPantalla = 16; 
  } else if (bInicio.mouseOverButton() && bInicio.enabled) { // cuando el ratón está encima del botón bInicio y está habilitado
    numPantalla = 2;
  } else if (bSiguiente.mouseOverButton() && bSiguiente.enabled) { // cuando el ratón está encima del botón bSiguiente y está habilitado
    pc.nextPage();
    pc1.nextPage();
  } else if (bAnterior.mouseOverButton() && bAnterior.enabled) { // cuando el ratón está encima del botón bAnterior y está habilitado
    pc.prevPage();
    pc1.prevPage();
  } else if (numPantalla==14 && bInsert.mouseOverButton() && bInsert.enabled) { // cuando el ratón está encima del botón bInsert y está habilitado
    // Coger los valores de los campos del formulario
    String titulo = tituloText.text;
    String descripcion = descripcionText.text;
    String fecha = fechaText.text;
    String idSeccion = sSeccion.selectedId;
    String idLugar = sLugar.selectedId;
    String usuario = idUsuarioLogin;
    String foto = tituloImagen;
    // Insertar a la BBDD
    insertInfoTablaEventos(titulo, descripcion, fecha, idSeccion, idLugar, usuario, foto);
    // Resetear los campos del formulario
    resetFormulario();
    p.setVisible(true);
    numPantalla = 18;
  } else if ((numPantalla== 14 || numPantalla==20) && bReset.mouseOverButton() && bReset.enabled) { // cuando el ratón está encima del botón bReset y está habilitado
    //Resetear los cmapos del formulario
    resetFormulario();
  } else if (numPantalla==15 && bEditar.mouseOverButton() && bEditar.enabled) { // cuando el ratón está encima del botón bEditar y está habilitado
    idEvento = sEB.selectedId;
    String[] info = getInfoEvento(idEvento);
    printArray(info);
    sLugar.selectById(info[3]);
    sSeccion.selectById(info[4]);
    tituloText.text = info[1];
    descripcionText.text = info[2];
    fechaText.text = info [5];

    numPantalla = 20;
  } else if ((numPantalla==14 || numPantalla==20) && iFoto.mouseOverButton() && iFoto.enabled) { // cuando el ratón está encima del botón iFoto y está habilitado
    // Se abre el diálogo el dialeg
    selectInput("Selecciona una imagen ...", "fileSelected");
    
    // Copiar la imagen
    copiar (rutaImagen, rutaCopia, tituloImagen);

  } else if (numPantalla==20 && bUpdate.mouseOverButton() && bUpdate.enabled) { // cuando el ratón está encima del botón bUpdate y está habilitado
    
    //Coger los datos escritos y seleccionados de los campos del formulario
    String titulo = tituloText.text;
    String descripcion = descripcionText.text;
    String fecha = fechaText.text;
    String idSeccion = sSeccion.selectedId;
    String idLugar = sLugar.selectedId;
    String foto = tituloImagen;
    
    //Actualizar la BBDD
    updateInfoTablaEventos(idEvento, titulo, descripcion, idLugar, idSeccion, fecha, foto);
    
    //Resetear el formulario
    resetFormulario();
    //Avisar al usuario que la BBDD ha sido actualizada
     p.setVisible(true);
    numPantalla = 18;
  } else if ((numPantalla==15 || numPantalla==16) && bFiltro.mouseOverButton() && bFiltro.enabled) { // cuando el ratón está encima del botón bFiltro y está habilitado
    //Filtrar la información del select
    String idTipo = sSeccionEditar.selectedId; 
    String [][] info = getInfoFiltroEventos(idTipo);
    //Cambiar la información del select
    sEB.setData(info);
    sEB.enabled = true;
  } 
}

void textfieldPressed() {  // cuando el campo de texto está pulsado
  buscarText.isPressed();
  usuarioText.isPressed();
  contrasenaText.isPressed();
}

void calendarioPressed() { // cuando el calendario está pulsado
  calendario.checkButtons();
}

// Modifica el cursor
void updateCursor() {

  if (iCuenta.mouseOverButton() && iCuenta.enabled ) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  if (bInsert.mouseOverButton() || bReset.mouseOverButton()) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  } 
  if (iFoto.mouseOverButton()) {
    cursor (HAND);
  } else {
    cursor (ARROW);
  }
}

void resetFormulario() { // para poder resetear el formulario
  tituloText.removeAllText();
  descripcionText.removeAllText();
  fechaText.removeAllText();
  usuarioText.removeAllText();
  contrasenaText.removeAllText();
}

void borrarPressed() { 
  if (numPantalla==16 && bBorrar.mouseOverButton() && bBorrar.enabled) { // cuando el ratón está encima del botón bBorrar y está habilitado
    confirmar.setVisible(true);
    numPantalla = 17;
  } else if (numPantalla==17 && confirmar.bAceptar.mouseOverButton()) { // cuando el ratón está encima del botón bAceptar y está habilitado
    confirmar.setVisible(false);

    // Coger el valor Id del Select
    String id = String.valueOf(sEB.selectedIndex);

    // Actualiza la BBDD
    deleteInfoTablaEventos(id);

    // Voler a cargar la información al select
    String[][] selectValues = getInfoTablaEventos();
    sEB.setData(selectValues);
    sEB.reset();

    // Visualiza el PopUp
    p.setVisible(true);
    numPantalla = 18;
    
  } else if (numPantalla==17 && confirmar.bCancelar.mouseOverButton()) { // cuando el ratón está encima del botón bCancelar y está habilitado
    confirmar.setVisible(false);
    numPantalla = 16;
  } else if (numPantalla==18 && p.bAceptar.mouseOverButton() && p.bAceptar.enabled) { // cuando el ratón está encima del botón p.bAceptar y está habilitado
    numPantalla = 2;
  }
}

void insertarPressed() { 
  tituloText.isPressed(); 
  descripcionText.isPressed();
  fechaText.isPressed();
}
