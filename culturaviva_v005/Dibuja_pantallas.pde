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
  print("dfghjk");
  pc.display(55, 260, cardW, cardH*3);
  /*
  c1.display(55,260,cardW, cardH, 10);
  c2.display(55,20+ margenH + logoHeight + selectH + cardH + margenH*3,cardW,cardH,10);
  c3.display(55,20+ margenH + logoHeight + selectH + cardH*2 + margenH*4, cardW, cardH, 10);
  */
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
  bPrev.display();
  bNext.display();
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
  pc.display(55, 260, cardW, cardH*3);
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

void dibujaPantallaArte(){
  image(imgArte, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  //c1.display(55,260,cardW, cardH, 10);
  //c2.display(55,20+ margenH + logoHeight + selectH + cardH + margenH*3,cardW,cardH,10);
  //c3.display(55,20+ margenH + logoHeight + selectH + cardH*2 + margenH*4, cardW, cardH, 10);
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

void dibujaPantallaFestival(){
  image(imgFestival, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  //c1.display(55,260,cardW, cardH, 10);
  //c2.display(55,20+ margenH + logoHeight + selectH + cardH + margenH*3,cardW,cardH,10);
  //c3.display(55,20+ margenH + logoHeight + selectH + cardH*2 + margenH*4, cardW, cardH, 10);
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

void dibujaPantallaConcierto(){
  image(imgConcierto, 0, 0, width, height);
  dibujaBanner();
  dibujaLogo();
  pc.display(55, 260, cardW, cardH*3);
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
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
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
  s1.display();
  s2.display();
  s3.display();
  iCuenta.display();
  iBuscar.display();
}
