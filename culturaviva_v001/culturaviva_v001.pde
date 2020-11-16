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
  rect (margenH, margenV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", margenH+bannerWidth/2,margenV+bannerHeight/2);

  //zona logo
  fill(50,50,50);
  rect (margenH, margenV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", margenH+bannerWidth/2,margenV+bannerHeight/2);


  //zona idioma

  //zona cuenta

  //zona barra de filtros

  //zona acontecimientos recientes1

  //zona acontecimientos recientes2

  //zona indicador cantidad de páginas


}
