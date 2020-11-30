// Elementos multimedia de la APP
// Imágenes, tipografías, sonidos, ...

import processing.sound.*;

// Imatges
PImage imgLogo, imgFondo, imgBanner;
// Tipografies
PFont font1, font2, font3;
// Audios
SoundFile audio1, audio2, audio3;
import processing.sound;


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
}

// Càrrega de les Tipografies
void loadFonts(){
  font1 = createFont("../DATA/fonts/Sweet Creamy.ttf", 32);
  font2 = createFont("../DATA/fonts/secrcode.ttf", 32);
  font3 = createFont("../DATA/fonts/Fluo Gums.ttf", 32);
}

// Càrrega dels àudios
void loadSounds(){
  audio1 = new SoundFile(this, "../DATA/sounds/click.wav");
  audio2 = new SoundFile(this, "../DATA/sounds/encert.wav");
  audio3 = new SoundFile(this, "../DATA/audios/error.wav");
}
