// FUNCIONES DE DIBUJO DE LAS ZONAS

void dibujaBanner(){
  image(imgBanner, 2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
}

void dibujaLogo(){
  image(imgLogo, margenH, margenV, logoWidth, logoHeight);
}

void dibujaAcontecimientos1(){
  fill(100,50,100);
  rect (2*margenH, 2*margenV + bannerHeight + margenH + filtrosHeight, acontecimientosWidth, acontecimientosHeight);
  fill(0);
  text("acontecimientos recientes1", 2*margenH + acontecimientosWidth/2, 2*margenV + bannerHeight + margenH + filtrosHeight + acontecimientosHeight/2 + 10);
  }

void dibujaAcontecimientos2(){
  fill (50,50,100);
  rect (2*margenH + logoWidth + (bannerWidth-acontecimientosWidth), 2*margenV + bannerHeight + margenH + filtrosHeight, acontecimientosWidth, acontecimientosHeight);
  fill (0);
  text ("Acontecimientos recientes2", 2*margenH + logoWidth + (bannerWidth-acontecimientosWidth) + acontecimientosWidth/2, 2*margenV + bannerHeight + margenH + filtrosHeight + acontecimientosHeight/2 + 10);
  }

void dibujaApertura(){
  fill(0);
  text ("CULTURA VIVA", margenH + principalWidth/2, margenV + principalHeight/2, 10);
}

void dibujaAcontecimientosBuscados(){
  fill(0,0,200);
  rect (2*margenH, 2*margenV + logoHeight + filtrosHeight + margenV, buscadosWidth, buscadosHeight);
  fill(0);
  text ("Acontecimientos relacionados con la busca", 2*margenH + buscadosWidth/2, 2*margenV + logoHeight + filtrosHeight + margenV + buscadosHeight/2,10);
}

void dibujaRecomendaciones(){
  fill(0,150,10);
  rect(2*margenH + buscadosWidth + margenH, 2*margenV + logoHeight + filtrosHeight + margenV, recomendacionesWidth, recomendacionesHeight);
  fill(0);
  text ("RECOMENDACIONES", 2*margenH + buscadosWidth + margenH + recomendacionesWidth/2, 2*margenV + logoHeight + filtrosHeight + margenV + recomendacionesHeight/2, 10);
}

void dibujaCompraEntradas(){
  fill(150,10,150);
  rect(2*margenH + buscadosWidth + margenH, 2*margenV + logoHeight + filtrosHeight + margenV, compraWidth, compraHeight);
  fill(0);
  text ("Compra de entradas", 2*margenH + buscadosWidth + margenH + compraWidth/2, 2*margenV + logoHeight +filtrosHeight + margenV + compraHeight/2, 10);
}

void dibujaReventa1(){
  fill(0,200,50);
  rect (2*margenH, 2*margenV + logoHeight + filtrosHeight + margenV, reventa1Width, reventa1Height);
  fill (0);
  text ("Reventa de entradas", 2*margenH + reventa1Width/2, 2*margenV + logoHeight + filtrosHeight + margenV + reventa1Height/2, 10);
}

void dibujaReventa2(){
  fill(0,200,50);
  rect (2*margenH, 2*margenV + logoHeight + filtrosHeight + reventa1Height + 2*margenV, reventa2Width, reventa2Height);
  fill (0);
  text ("Reventa de entradas", 2*margenH + reventa2Width/2, 2*margenV + logoHeight + filtrosHeight +  reventa1Height + 2*margenV + reventa2Height/2, 10);
}

void dibujaIniciarSesion(){
  pushStyle();
  rectMode (CENTER);
  fill(5,50,50);
  rect (width/2 - (buttonW3 + margenH), height/2 + filtrosHeight + margenV, SesionWidth, SesionHeight);
  popStyle();
}

void dibujaAcontecimientoIndividual(){
  fill(15,75,20);
  rect (margenH, 2*margenV + logoHeight + filtrosHeight + margenV, individualWidth, individualHeight);
  fill(0);
  text ("acontecimiento individual", margenH + individualWidth/2, 2*margenV + logoHeight + filtrosHeight + margenV + individualHeight/2, 10);
}
