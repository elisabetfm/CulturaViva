// Disseny de les pantalles de l'App Trivio v1.4
// Elements comuns: botons del Menú Principal

// Enumerat de les Pantalles de l'APP
enum PANTALLA {APERTURA, INICIO, BUSQUEDA, ENTRADAS, REVENTA, MAPA, INDIVIDUAL};

// Pantalla actual
PANTALLA pantalla = PANTALLA.BUSQUEDA;

void setup(){
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  
  loadMedia();    // Càrrega dels elements multimèdia
  //setGUI();      // Estableix els paràmetres de la GUI
}

void draw(){
  
  image(imgFondo, 0, 0, width, height);   //Imatge de fons
  
  // Dibuixa la pantalla corresponent
  switch(pantalla){
    case APERTURA: dibujaPantalla01(); break;
    case INICIO: dibujaPantalla02(); break;
    case BUSQUEDA: dibujaPantalla03(); break;
    case ENTRADAS: dibujaPantalla04(); break;
    case REVENTA:  dibujaPantalla05(); break;
    case MAPA:  dibujaPantalla06(); break;
    case INDIVIDUAL: dibujaPantalla07(); break;
  } 
}
