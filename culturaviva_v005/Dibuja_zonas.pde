// FUNCIONES DE DIBUJO DE LAS ZONAS

void dibujaBanner() { //parámetros para crear el banner
  image(imgBanner, 2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
}

void dibujaLogo() { //parámetros para crear el logo
  image(imgLogo, margenH, margenV, logoWidth, logoHeight);
}

void dibujaApertura() { //parámetros para crear la pantalla de Apertura
  fill(0); 
  textFont(fuente5);
  text ("CULTURA VIVA", margenH + principalWidth/2, margenV + principalHeight/2, 10);
}


void dibujaIniciarSesion() { //parámetros para crear la pantalla de Iniciar Sesión
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  image (imgCuenta, 2*(width/2 - (buttonW3 + margenH)), 2*margenV + bannerHeight + filtrosHeight + 2*margenV, cuentaWidth, cuentaHeight);
  popStyle();
}

void dibujaIniciarSesionError() { //parámetros para crear la pantalla de Iniciar Sesión si se ha equivocado de usuario y/o constraseña (más oportunidades)
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  image (imgCuenta, 2*(width/2 - (buttonW3 + margenH)), 2*margenV + bannerHeight + filtrosHeight + 2*margenV, cuentaWidth, cuentaHeight);
  //Mensaje
  fill(255, 0, 0); 
  textSize(16); 
  text ("El usuario y la contraseña no son coincidentes", width/2 - (buttonW3 + margenH), logoHeight + selectH + 10*margenH);
  popStyle();
}

void dibujaInsertar() { //parámetros para crear la pantalla Insertar
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  popStyle();
  // Etiqueta Título
  fill(0); 
  textSize(20); 
  text("Título:", 590, 300); 
  // Etiqueta Descripción
  fill(0); 
  textSize(20); 
  text("Descripción:", 610, 375); 
  fill(0); 
  textSize(20); 
  // Etiqueta Sección
  text("Sección:", 590, 490); 
  // Etiqueta Lugar
  fill(0); 
  textSize(20); 
  text("Lugar:", 590, 560); 
  //Etiqueta Imagen
  fill(0); 
  textSize(20); 
  text("Imagen:", 710, 560); 
  // Etiqueta Fecha
  fill(0); 
  textSize(20); 
  text("Fecha:", 790, 560);
}

void dibujaEditarBorrar() { //parámetros para crear la interficie para la pantalla Borrar o Editar
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  popStyle();
}
