// FUNCIONES DE DIBUJO DE LAS ZONAS

void dibujaBanner(){
  image(imgBanner, 2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
}

void dibujaLogo(){
  image(imgLogo, margenH, margenV, logoWidth, logoHeight);
}

void dibujaApertura(){
  fill(0); textFont(fuente5);
  text ("CULTURA VIVA", margenH + principalWidth/2, margenV + principalHeight/2, 10);
}


void dibujaIniciarSesion(){
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  image (imgCuenta, 2*(width/2 - (buttonW3 + margenH)), 2*margenV + bannerHeight + filtrosHeight + 2*margenV, cuentaWidth, cuentaHeight);
  popStyle();
}

void dibujaInsertar(){
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  popStyle();
  // Etiqueta Título
  fill(0); textSize(20); 
  text("Título:", 590, 300); 
  // Etiqueta Descripción
  fill(0); textSize(20); 
  text("Descripción:", 610, 360); 
  fill(0); textSize(20); 
  // Etiqueta Sección
  text("Sección:", 590, 470); 
  // Etiqueta Lugar
  fill(0); textSize(20); 
  text("Lugar:", 590, 530); 
  //Etiqueta Imagen
   fill(0); textSize(20); 
  text("Imagen:", 710, 530); 
  // Etiqueta Fecha
  fill(0); textSize(20); 
  text("Fecha:", 790, 530); 
}

void dibujaEditarBorrar(){
  pushStyle();
  rectMode (CENTER);
  fill(184, 153, 138);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  popStyle();
}
