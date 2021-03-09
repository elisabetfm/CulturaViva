//Funciones de dibujo de las pantallas

void dibujaPantalla01(){
  dibujaApertura();
  }

void dibujaPantallaInicio(){
  dibujaBanner();
  dibujaLogo();
  dibujaAcontecimientos1();
  dibujaAcontecimientos2();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  buscarText.display();
  iBuscar.display();
}

void dibujaPantallaEventos(){
  dibujaBanner();
  dibujaLogo();
  dibujaAcontecimientosBuscados();
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
}

void dibujaPantallaSesion(){
  dibujaBanner();
  dibujaLogo();
  dibujaIniciarSesion();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
  buscarText.display();
  bCalendario.display();
  tituloText.display();
  descripcionText.display();
  seccionText.display();
  lugarText.display();
  fechaText.display();
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
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  dibujaEditarBorrar.display();
  sEB.display();
}

void dibujaPantallaBorrar(){
  dibujaBanner();
  dibujaLogo();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
  buscarText.display();
  bCalendario.display();
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
  dibujaEditarBorrar.display();
  sEB.display();
}

void dibujaPantallaIndividual(){
  dibujaBanner();
  dibujaLogo();
  dibujaAcontecimientoIndividual();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
  buscarText.display();
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
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
}

void dibujaPantallaArte(){
  image(imgArte, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
}

void dibujaPantallaFestival(){
  image(imgFestival, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
}

void dibujaPantallaConcierto(){
  image(imgConcierto, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
}

void dibujaPantallaFeria(){
  image(imgFeria, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
}

void dibujaPantallaLectura(){
  image(imgLectura, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  dibujaRecomendaciones();
  bIdioma1.display();
  bIdioma2.display();
  bIdioma3.display();
  bIdioma4.display();
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
}
