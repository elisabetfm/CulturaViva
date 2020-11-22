// FUNCIONES DE DIBUJO DE LAS ZONAS

void dibujaBanner(){
  fill(200,50,100);
  rect (2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", 2*margenH + logoWidth + bannerWidth/2,margenV+bannerHeight/2);
}

void dibujaLogo(){
  fill(50,50,50);
  rect (margenH, margenV, logoWidth, logoHeight);
  fill(0);
  text("LOGO", margenH+logoWidth/2,margenV+logoHeight/2); 
}

void dibujaIdioma(){
  fill(50,100,50);
  rect (2*margenH + logoWidth + (bannerWidth-logoWidth*2), 2*margenV, idiomaWidth, idiomaHeight);
  fill(0);
  text("IDIOMA", 2*margenH+ logoWidth + (bannerWidth-logoWidth*2) + idiomaWidth/2, 2*margenV+ idiomaHeight/2);
}

void dibujaCuenta(){
  fill(200,10,150);
  rect (2*margenH + logoWidth + (bannerWidth- margenH-cuentaWidth), 2*margenV + idiomaHeight, cuentaWidth, cuentaHeight);
  fill(0);
  text("CUENTA", 2*margenH+logoWidth + (bannerWidth - margenH - cuentaWidth) + cuentaWidth/2, 2*margenV + idiomaHeight + cuentaHeight/2);
}

void dibujaFiltros(){
  fill(100,10,200);
  rect (2*margenH +logoWidth, 2*margenV + bannerHeight, filtrosWidth, filtrosHeight);
  fill(0);
  text("FILTROS", 2*margenH + logoWidth + filtrosWidth/2, 2*margenV + bannerHeight + filtrosHeight/2);
  }

  void dibujaAcontecimientos1(){
  fill(100,50,100);
  rect (2*margenH, 2*margenV + bannerHeight + margenH + filtrosHeight, acontecimientos1Width, acontecimientos1Height);
  fill(0);
  text("acontecimientos recientes1", 2*margenH + acontecimientos1Width/2, 2*margenV + bannerHeight + margenH + filtrosHeight + acontecimientos1Height/2);
  }

void dibujaAcontecimientos2(){
  fill (50,50,100);
  rect (2*margenH + logoWidth + (bannerWidth-acontecimientos2Width), 2*margenV + bannerHeight + margenH + filtrosHeight, acontecimientos2Width, acontecimientos2Height);
  fill (0);
  text ("Acontecimientos recientes2", 2*margenH + logoWidth + (bannerWidth-acontecimientos2Width) + acontecimientos2Width/2, 2*margenV + bannerHeight + margenH + filtrosHeight + acontecimientos2Height/2);
  }
  
void dibujaIndicador(){
  fill(200,200,100);
  rect (2*margenH + acontecimientos1Width, 2*margenV + bannerHeight + filtrosHeight + acontecimientos1Height + margenV, indicadorWidth, indicadorHeight);
  fill(0);
  text("Indicador de páginas", 2*margenH + acontecimientos1Width + indicadorWidth/2, 2*margenV + bannerHeight + filtrosHeight + acontecimientos1Height + margenV + indicadorHeight/2);
}
