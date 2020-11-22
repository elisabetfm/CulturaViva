// Disseny de la maquetació de l'App TRIVIO v1.2
// Establir les zones comunes entre pantalles.

void setup(){
  fullScreen();            // dimensión de la pantalla
  noStroke();              // figuras sin bordes
  textAlign(CENTER);textSize(20);  // alineación y tamaño del texto del text
}

void draw(){
  background(0);          // color del fondo
     
  dibujaBanner();
  dibujaLogo();
  dibujaIdioma();
  dibujaCuenta();
  dibujaFiltros();
  dibujaAcontecimientos1();
  dibujaAcontecimientos2();
  dibujaIndicador();
  
}
