import processing.sound.*;
// Elementos multimedia de la APP
// Imágenes, tipografías, sonidos, ...
// Imatges
PImage imgLogo, imgFondo, imgBanner, imgCuenta;
//Tipografies
PFont fuente1, fuente2, fuente3, fuente4, fuente5, fuente6;

//Audios
SoundFile[] audio;
String[] songs = {"alegria.mp3", 
                  "amy-winehouse-back-to-black.mp3",
                  "andrea-motis-la-gavina.mp3",
                  "cacauet-torrat.mp3"};

// Càrrega dels elements multimèdia
void loadMedia(){
  loadImages();
  loadFonts();
  loadSounds();
}

// Càrrega de les Imatges
void loadImages(){
  imgLogo = loadImage("../DATA/imgs/imgLogo.jpg");
  imgFondo = loadImage("../DATA/imgs/imgFondo.jpg");
  imgBanner = loadImage("../DATA/imgs/imgBanner.jpg");
  imgCuenta = loadImage("../DATA/imgs/imgBanner.jpg");
}

// Càrrega de les Tipografies
void loadFonts(){
  fuente1 = createFont("../DATA/fonts/Borgen.ttf", 32);
  fuente2 = createFont("../DATA/fonts/BorgenBold.ttf", 32);
  fuente3 = createFont("../DATA/fonts/HunDIN1451.ttf", 32);
  fuente4= createFont("../DATA/fonts/HunDIN1451.ttf", 32);
  fuente5 = createFont("../DATA/fonts/monkey.ttf", 32);
  fuente6 = createFont("../DATA/fonts/saxmono.ttf", 32);
}

// Càrrega dels àudios
void loadSounds(){
  
  audio = new SoundFile[21];
  for(int i=0; i<songs.length; i++){
    audio[i] = new SoundFile(this, "../DATA/sounds/"+songs[i]);
  }
}
