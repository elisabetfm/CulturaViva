//Funciones de dibujo de las pantallas

void dibujaPantalla01() {//parámetros necesarios para dibujar la Pantalla de Apertura
  dibujaApertura();
}

void dibujaPantallaInicio() { //parámetros necesarios para dibujar la Pantalla de Inicio
  dibujaBanner();
  dibujaLogo();
  pc1.displayH(20, 300, 1250, 800);
  bInicio.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  buscarText.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
}

void dibujaPantallaEventos() { //parámetros necesarios para dibujar la Pantalla de Eventos
  dibujaBanner();
  dibujaLogo();
  pc.display(190, 250, 800, 400);
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display(); 
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}

void dibujaPantallaSesion() { //parámetros necesarios para dibujar la Pantalla de Iniciar Sesión
  dibujaBanner();
  dibujaLogo();
  dibujaIniciarSesion();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  usuarioText.display();
  contrasenaText.display();
  bEnter.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
}

void dibujaPantallaSesionError(){ //parámetros necesarios para dibujar la Pantalla de Iniciar Sesión si se ha equivocado de usuario y/o constraseña (más oportunidades)
  dibujaBanner();
  dibujaLogo();
  dibujaIniciarSesionError();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  usuarioText.display();
  contrasenaText.display();
  bEnter.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
}

void dibujaPantallaInsBorrEdi() { //parámetros necesarios para dibujar la Pantalla para elegir si el usuario quiere Insertar, Editar o Borrar
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  bInsertaro.display();
  bEditaro.display();
  bBorraro.display();
}

void dibujaPantallaInsertar() { //parámetros necesarios para dibujar la Pantalla de Insertar
  dibujaBanner();
  dibujaLogo();
  dibujaInsertar();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  tituloText.display();
  descripcionText.display();
  fechaText.display();
  bInsert.display();
  bReset.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  iFoto.display();
  sLugar.display();
  sSeccion.display();
}

void dibujaPantallaEditar() { //parámetros necesarios para dibujar la Pantalla de Editar (para elegir qué evento se quiere modificar)
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  dibujaEditarBorrar();
  bEditar.display();
  sEB.display();
  sSeccionEditar.display();
  bFiltro.display();
}

void dibujaPantallaModificar() { //parámetros necesarios para dibujar la Pantalla de Editar el evento elegido
  dibujaBanner();
  dibujaLogo();
  dibujaInsertar();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  tituloText.display();
  descripcionText.display();
  fechaText.display();
  bUpdate.display();
  bReset.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  iFoto.display();
  sLugar.display();
  sSeccion.display();
}

void dibujaPantallaBorrar() { //parámetros necesarios para dibujar la Pantalla de Borrar
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  dibujaEditarBorrar();
  bBorrar.display();
  sEB.display();
  sSeccionEditar.display();
  bFiltro.display();
}

void dibujaPantallaConfirmar() { //parámetros necesarios para dibujar la Pantalla de Confirmar la acción de borrar
  dibujaBanner();
  dibujaLogo();
  buscarText.display();
  bInicio.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  //p.display();
  confirmar.display();
}

void dibujaPantallaPopUp() { //parámetros necesarios para dibujar la Pantalla de PopUp, para comunicar al usuario con un mensaje
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  p.display();
}

void dibujaPantallaPopUp1() { //parámetros necesarios para dibujar la Pantalla de PopUp, para comunicar al usuario con un mensaje
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  p1.display();
}

void dibujaPantallaCalendario() { //parámetros necesarios para dibujar la Pantalla de Calendario
  dibujaBanner();
  dibujaLogo();
  buscarText.display();
  bInicio.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  calendario.display();
  bIr.display();
}

void dibujaPantallaTeatro() { //parámetros necesarios para dibujar la Pantalla de Usuario
  image(imgTeatro, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  pc.display(190, 250, 800, 400);
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}

void dibujaPantallaArte() { //parámetros necesarios para dibujar la Pantalla de Arte
  image(imgArte, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  pc.display(190, 250, 800, 400);
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}

void dibujaPantallaFestival() { //parámetros necesarios para dibujar la Pantalla de Festival
  image(imgFestival, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  pc.display(190, 250, 800, 400);
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}

void dibujaPantallaConcierto() { //parámetros necesarios para dibujar la Pantalla de Concierto
  image(imgConcierto, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  pc.display(190, 250, 800, 400);
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}

void dibujaPantallaFeria() { //parámetros necesarios para dibujar la Pantalla de Feria
  image(imgFeria, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  pc.display(190, 250, 800, 400);
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}

void dibujaPantallaLectura() { //parámetros necesarios para dibujar la Pantalla de Club de Lectura
  image(imgLectura, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  buscarText.display();
  bCalendario.display();
  pc.display(190, 250, 800, 400);
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  bInicio.display();
  iBuscar.display();
  bAnterior.display();
  bSiguiente.display();
  pc2.display(1110, 260, 200, 300);
}
