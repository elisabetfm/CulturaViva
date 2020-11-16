//Disenyo de la maquetación de la pantalla 2
//Establecer las zonas comunes de la pantalla

void setup(){
  size (1500,700); //dimensión de la pantalla
  noStroke(); // figuras sin bordes
  textAlign(CENTER);textSize(20); //alineación y tamaño del texto
}

void draw(){
  background(0); //color de fondo
  
  //zona banner
  fill(200,50,100);
  rect (2*margenH +logoWidth, margenV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", margenH+bannerWidth/2,margenV+bannerHeight/2);

  //zona logo
  fill(50,50,50);
  rect (margenH, margenV, bannerWidth, bannerHeight);
  fill(0);
  text("LOGO", margenH+logoWidth/2,margenV+logoHeight/2);


  //zona idioma
  fill(200,50,100);
  rect (margenH, margenV, idiomaWidth, idiomaHeight);
  fill(0);
  text("IDIOMA", margenH+idiomaWidth/2,margenV+idiomaHeight/2);
  
  //zona cuenta
  fill(200,10,150);
  rect (margenH, margenV, cuentaWidth, cuentaHeight);
  fill(0);
  text("CUENTA", margenH+cuentaWidth/2,margenV+cuentaHeight/2);
  
  //zona barra de filtros
  fill(100,0,200);
  rect (margenH, margenV, filtrosWidth, filtrosHeight);
  fill(0);
  text("FILTROS", margenH+filtrosWidth/2,margenV+filtrosHeight/2);
  
  //zona acontecimientos recientes1
  fill(100,50,100);
  rect (margenH, margenV, acontecimientos1Width, acontecimientos1Height);
  fill(0);
  text("acontecimientos recientes1", margenH+acontecimientos1Width/2,margenV+acontecimientos1Height/2);
  
  //zona acontecimientos recientes2
  fill(50,50,100);
  rect (margenH, margenV, acontecimientos2Width, acontecimientos2Height);
  fill(0);
  text("Acontecimientos recientes2", margenH+acontecimientos2Width/2,margenV+acontecimientos2Height/2);

  //zona indicador cantidad de páginas
  fill(50,50,100);
  rect (margenH, margenV, indicadorWidth, indicadorHeight);
  fill(0);
  text("Indicador de páginas", margenH+indicadorWidth/2,margenV+indicadorHeight/2);

}
