//diseño de las pantallas de Cultura Viva

int numPantalla = 2;

void setup() {
  //fullScreen(); //dimensión de la pantalla
  size(1600, 800);
  noStroke(); // figuras sin bordes
  textAlign(CENTER);
  textSize(20); //alineación y tamaño del texto
  conexion();
  loadMedia();
  setGUI();
}

void draw() {
  image(imgFondo, 0, 0, width, height);

  if (frameCount<20) {
    dibujaApertura();
  } else {
    if (numPantalla==2) {
      dibujaPantallaInicio();
    } else if (numPantalla==3) {
      dibujaPantallaEventos();
    } else if (numPantalla==4) {
      dibujaPantallaSesion();
    } else if (numPantalla==6) {
      dibujaPantallaCalendario();
    } else if (numPantalla==7) {
      dibujaPantallaTeatro();
    } else if (numPantalla==8) {
      dibujaPantallaArte();
    } else if (numPantalla==9) {
      dibujaPantallaFestival();
    } else if (numPantalla==10) {
      dibujaPantallaConcierto();
    } else if (numPantalla==11) {
      dibujaPantallaFeria();
    } else if (numPantalla==12) {
      dibujaPantallaLectura();
    } else if (numPantalla==13) {
      dibujaPantallaInsBorrEdi();
    } else if (numPantalla==14) {
      dibujaPantallaInsertar();
    } else if (numPantalla==15) {
      dibujaPantallaEditar();
    } else if (numPantalla==16) {
      dibujaPantallaBorrar();
    } else if (numPantalla==17) {
      dibujaPantallaConfirmar();
    } else if (numPantalla==18) {
      dibujaPantallaPopUp();
    } else if (numPantalla==19) {
      dibujaPantallaPopUp1();
    } else if (numPantalla==20) {
      dibujaPantallaModificar();
    }

    updateCursor();
  }
}
