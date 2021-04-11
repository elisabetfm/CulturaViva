import processing.sound.*;
// Elementos multimedia de la APP
// Imágenes, tipografías, sonidos, ...
// Imágenes
PImage imgLogo, imgFondo, imgBanner, imgCuenta, imgBuscar, imgTeatro, imgArte, imgFestival, imgConcierto, imgFeria, imgLectura, imgFoto;
//Tipografías
PFont fuente1, fuente2, fuente3, fuente4, fuente5, fuente6;


// Carga de los elementos multimedia
void loadMedia() {
  loadImages();
  loadFonts();
}

// Carga de les Imágenes
void loadImages() {
  imgLogo = loadImage("../DATA/imgs/imgLogo1.jpg");
  imgFondo = loadImage("../DATA/imgs/imgFondo5.jpg");
  imgCuenta = loadImage("../DATA/imgs/buttonCuenta.png");
  imgBuscar = loadImage("../DATA/imgs/buttonBuscar.png");
  imgBanner = loadImage ("../DATA/imgs/Banner4.jpg");
  imgTeatro = loadImage("../DATA/imgs/Teatro.jpg");
  imgArte = loadImage("../DATA/imgs/Arte.jpg");
  imgTeatro = loadImage("../DATA/imgs/Teatro.jpg");
  imgFestival = loadImage("../DATA/imgs/Festival.jpg");
  imgConcierto = loadImage("../DATA/imgs/Concierto.jpg");
  imgFeria = loadImage("../DATA/imgs/Feria.jpg");
  imgLectura = loadImage("../DATA/imgs/Lectura.jpg");
  imgFoto = loadImage ("../DATA/imgs/imgFoto.png");
}

// Carga de las Tipografías
void loadFonts() {
  fuente1 = createFont("../DATA/fonts/Borgen.ttf", 32); //si
  fuente2 = createFont("../DATA/fonts/BorgenBold.ttf", 32);
  fuente3 = createFont("../DATA/fonts/HunDIN1451.ttf", 32); //si
  fuente4 = createFont("../DATA/fonts/saxmono.ttf", 32);
  fuente5= createFont("../DATA/fonts/Hiddencinema.ttf", 70); //si
  fuente6 = createFont("../DATA/fonts/Cinzel-Regular.otf", 30); //si
}
