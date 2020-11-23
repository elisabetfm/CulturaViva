// FUNCIONES DE DIBUJO DE LAS ZONAS

void dibujaBanner(){
  fill(200,50,100);
  rect (2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", 2*margenH + logoWidth + bannerWidth/2,margenV+bannerHeight/2 + 10);
}

void dibujaLogo(){
  fill(50,50,50);
  rect (margenH, margenV, logoWidth, logoHeight);
  fill(0);
  text("LOGO", margenH+logoWidth/2,margenV+logoHeight/2 + 10); 
}

void dibujaIdioma(){
  fill(50,100,50);
  rect (2*margenH + logoWidth + (bannerWidth-logoWidth*2), 2*margenV, idiomaWidth, idiomaHeight);
  fill(0);
  text("IDIOMA", 2*margenH+ logoWidth + (bannerWidth-logoWidth*2) + idiomaWidth/2, 2*margenV+ idiomaHeight/2 + 10);
}

void dibujaCuenta(){
  fill(200,10,150);
  rect (2*margenH + logoWidth + (bannerWidth- margenH-cuentaWidth), 2*margenV + idiomaHeight, cuentaWidth, cuentaHeight);
  fill(0);
  text("CUENTA", 2*margenH+logoWidth + (bannerWidth - margenH - cuentaWidth) + cuentaWidth/2, 2*margenV + idiomaHeight + cuentaHeight/2 + 10);
}

void dibujaFiltros(){
  fill(100,10,200);
  rect (2*margenH +logoWidth, 2*margenV + bannerHeight, filtrosWidth, filtrosHeight);
  fill(0);
  text("FILTROS", 2*margenH + logoWidth + filtrosWidth/2, 2*margenV + bannerHeight + filtrosHeight/2 + 10);
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
  
void dibujaIndicador(){
  fill(200,200,100);
  rect (2*margenH + acontecimientosWidth, 2*margenV + bannerHeight + filtrosHeight + acontecimientosHeight + margenV, indicadorWidth, indicadorHeight);
  fill(0);
  text("Indicador de páginas", 2*margenH + acontecimientosWidth + indicadorWidth/2, 2*margenV + bannerHeight + filtrosHeight + acontecimientosHeight + margenV + indicadorHeight/2 + 10);
}

void dibujaApertura(){
  fill(150,150,150);
  rect (margenH, margenV, principalWidth, principalHeight);
  fill(0);
  text ("CULTURA VIVA", margenH + principalWidth/2, margenV + principalHeight/2, 10);
}

void dibujaAcontecimientosBuscados(){
  fill(0,0,200);
  rect (2*margenH, 2*margenV + logoHeight + margenV, buscadosWidth, buscadosHeight);
  fill(0);
  text ("Acontecimientos relacionados con la busca", 2*margenH + buscadosWidth/2, 2*margenV + logoHeight + margenV + buscadosHeight/2,10);
}

void dibujaRecomendaciones(){
  fill(0,150,10);
  rect(2*margenH + buscadosWidth + margenH, 2*margenV + logoHeight + margenV, recomendacionesWidth, recomendacionesHeight);
  fill(0);
  text ("RECOMENDACIONES", 2*margenH + buscadosWidth + margenH + recomendacionesWidth/2, 2*margenV + logoHeight + margenV + recomendacionesHeight/2, 10);
}

void dibujaCompraEntradas(){
  fill(150,10,150);
  rect(2*margenH + buscadosWidth + margenH, 2*margenV + logoHeight + margenV, compraWidth, compraHeight);
  fill(0);
  text ("Compra de entradas", 2*margenH + buscadosWidth + margenH + compraWidth, 2*margenV + logoHeight + margenV + compraHeight, 10);
}

void dibujaReventa(){
  fill(0,200,50);
  rect (2*margenH, 2*margenV + logoHeight + margenV, reventaWidth, reventaHeight);
  fill (0);
  text ("Reventa de entradas", 2*margenH + reventaWidth/2, 2*margenV + logoHeight + margenV + reventaHeight/2, 10);
}

void dibujaMapaLocalizacion(){
  fill(5,50,50);
  rect (width/2, height/2, mapaWidth, mapaHeight);
  fill (0);
  text ("mapa de localización", width/2 + mapaWidth, height/2 + mapaHeight, 10);
}

void dibujaAcontecimientoIndividual(){
  fill(15,75,20);
  rect (2*margenH, 2*margenV + logoHeight + margenV, individualWidth, individualHeight);
  text ("acontecimiento individual", 2*margenH + individualWidth, 2*margenV + logoHeight + margenV + individualHeight, 10);
}
