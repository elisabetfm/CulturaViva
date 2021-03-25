//Funciones de dibujo de las pantallas

void dibujaPantalla01(){
  dibujaApertura();
  }

void dibujaPantallaInicio(){
  dibujaBanner();
  dibujaLogo();
  pc1.displayH(200, 260, 800, 800);
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

void dibujaPantallaEventos(){
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
}

void dibujaPantallaSesion(){
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

void dibujaPantallaInsBorrEdi(){
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

void dibujaPantallaInsertar(){
  dibujaBanner();
  dibujaLogo();
  dibujaInsertar();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  tituloText.display();
  descripcionText.display();
  fechaText.display();
  sSeccion.display();
  sLugar.display();
  c.display();
  bInsert.display();
  bReset.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
}

void dibujaPantallaEditar(){
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
  sEB.display();
}

void dibujaPantallaBorrar(){
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
  sEB.display();
  bBorrar.display();
}

void dibujaPantallaConfirmar(){
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

void dibujaPantallaPopUp(){
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

void dibujaPantallaPopUp1(){
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

void dibujaPantallaIndividual(){
  dibujaBanner();
  dibujaLogo();
  dibujaAcontecimientoIndividual();
  bInicio.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
}

void dibujaPantallaCalendario(){
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

void dibujaPantallaTeatro(){
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

void dibujaPantallaArte(){
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

void dibujaPantallaFestival(){
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

void dibujaPantallaConcierto(){
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

void dibujaPantallaFeria(){
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

void dibujaPantallaLectura(){
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
