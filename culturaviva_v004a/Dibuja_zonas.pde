// FUNCIONES DE DIBUJO DE LAS ZONAS

void dibujaBanner(){
  image(imgBanner, 2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
}

void dibujaLogo(){
  image(imgLogo, margenH, margenV, logoWidth, logoHeight);
}

void dibujaAcontecimientos1(){
  fill(255);
  rect (2*margenH, 2*margenV + bannerHeight + margenH + filtrosHeight, acontecimientosWidth, acontecimientosHeight);
  fill(0);
  text("acontecimientos recientes1", 2*margenH + acontecimientosWidth/2, 2*margenV + bannerHeight + margenH + filtrosHeight + acontecimientosHeight/2 + 10);
  }

void dibujaAcontecimientos2(){
  fill (255);
  rect (2*margenH + logoWidth + (bannerWidth-acontecimientosWidth), 2*margenV + bannerHeight + margenH + filtrosHeight, acontecimientosWidth, acontecimientosHeight);
  fill (0);
  text ("Acontecimientos recientes2", 2*margenH + logoWidth + (bannerWidth-acontecimientosWidth) + acontecimientosWidth/2, 2*margenV + bannerHeight + margenH + filtrosHeight + acontecimientosHeight/2 + 10);
  }

void dibujaApertura(){
  fill(0); textFont(fuente7);
  text ("CULTURA VIVA", margenH + principalWidth/2, margenV + principalHeight/2, 10);
}

void dibujaAcontecimientosBuscados(){
  fill(255);
  rect (2*margenH, 2*margenV + logoHeight + filtrosHeight + margenV, buscadosWidth, buscadosHeight);
  rect(2*margenH, 2*margenV + logoHeight + filtrosHeight + buscadosHeight + 2*margenV, buscadosWidth, buscadosHeight);
  rect(2*margenH, 2*margenV + logoHeight + filtrosHeight + 2*buscadosHeight + 3*margenV, buscadosWidth, buscadosHeight);
  fill(0);
  text ("Acontecimientos relacionados con la busca", 2*margenH + buscadosWidth/2, 2*margenV + logoHeight + filtrosHeight + margenV + buscadosHeight/2,10);
  text ("Acontecimientos relacionados con la busca", 2*margenH + buscadosWidth/2, 2*margenV + logoHeight + filtrosHeight + buscadosHeight + 2*margenV + buscadosHeight/2,10);
  text ("Acontecimientos relacionados con la busca", 2*margenH + buscadosWidth/2, 2*margenV + logoHeight + filtrosHeight + 2*buscadosHeight + 3*margenV + buscadosHeight/2,10);
}

void dibujaRecomendaciones(){
  fill(255);
  rect(2*margenH + buscadosWidth + margenH, 2*margenV + logoHeight + filtrosHeight + margenV, recomendacionesWidth, recomendacionesHeight);
  fill(0);
  text ("RECOMENDACIONES", 2*margenH + buscadosWidth + margenH + recomendacionesWidth/2, 2*margenV + logoHeight + filtrosHeight + margenV + recomendacionesHeight/2, 10);
}

void dibujaCompraEntradas(){
  fill(255);
  rect(2*margenH + buscadosWidth + margenH, 2*margenV + logoHeight + filtrosHeight + margenV, compraWidth, compraHeight);
  fill(0);
  text ("Compra de entradas", 2*margenH + buscadosWidth + margenH + compraWidth/2, 2*margenV + logoHeight +filtrosHeight + margenV + compraHeight/2, 10);
}

void dibujaReventa1(){
  fill(255);
  rect (2*margenH, 2*margenV + logoHeight + filtrosHeight + margenV, reventa1Width, reventa1Height);
  fill (0);
  text ("Reventa de entradas", 2*margenH + reventa1Width/2, 2*margenV + logoHeight + filtrosHeight + margenV + reventa1Height/2, 10);
}

void dibujaReventa2(){
  fill(255);
  rect (2*margenH, 2*margenV + logoHeight + filtrosHeight + reventa1Height + 2*margenV, reventa2Width, reventa2Height);
  fill (0);
  text ("Reventa de entradas", 2*margenH + reventa2Width/2, 2*margenV + logoHeight + filtrosHeight +  reventa1Height + 2*margenV + reventa2Height/2, 10);
}

void dibujaIniciarSesion(){
  pushStyle();
  rectMode (CENTER);
  fill(255);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  image (imgCuenta, 2*(width/2 - (buttonW3 + margenH)), 2*margenV + bannerHeight + filtrosHeight + 2*margenV, cuentaWidth, cuentaHeight);
  popStyle();
}

void dibujaAcontecimientoIndividual(){
  fill(255);
  rect (margenH, 2*margenV + logoHeight + filtrosHeight + margenV, individualWidth, individualHeight);
  fill(0);
  text ("acontecimiento individual", margenH + individualWidth/2, 2*margenV + logoHeight + filtrosHeight + margenV + individualHeight/2, 10);
}
