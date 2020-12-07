// Elementos multimedia de la APP
// Imágenes, tipografías, sonidos, ...
// Imatges
PImage imgLogo, imgFondo, imgBanner, imgCuenta;
//Tipografies
PFont fuente1, fuente2, fuente3, fuente4, fuente5, fuente6;
//Audios
SoundFile audio1, audio2, audio3, audio4, audio5, audio6, audio7, audio8, audio9, audio10, audio11, audio12, audio13, audio14, audio15, audio16, audio17, audio18, audio19, audio20, audio21;
import processing.sound.*;


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
  fuente3 = createFont("../DATA/fonts/CRYSRG.ttf", 32);
  fuente4= createFont("../DATA/fonts/HunDIN1451.ttf", 32);
  fuente5 = createFont("../DATA/fonts/monkey.ttf", 32);
  fuente6 = createFont("../DATA/fonts/saxmono.ttf", 32);
}

// Càrrega dels àudios
void loadSounds(){
  audio1 = new SoundFile(this, "../DATA/sounds/alegria.mp3");
  audio2 = new SoundFile(this, "../DATA/sounds/amy-winehouse-back-to-black.mp3");
  audio3 = new SoundFile(this, "../DATA/audios/andrea-motis-la-gavina.mp3");
  audio4 = new SoundFile(this, "../DATA/audios/cacauet-torrat.mp3");
  audio5 = new SoundFile(this, "../DATA/audios/chet-faker-talk-is-cheap.mp3");
  audio6 = new SoundFile(this, "../DATA/audios/etta-james-id-rather-go-blind.mp3");
  audio7 = new SoundFile(this, "../DATA/audios/extremoduro-so-payaso.mp3");
  audio8 = new SoundFile(this, "../DATA/audios/ginesta-estimar-te-com-la-terra.mp3");
  audio9 = new SoundFile(this, "../DATA/audios/girl-in-red-we-fell-in-love-in-october.mp3");
  audio10 = new SoundFile(this, "../DATA/audios/ido-un-cafe-maria-hein.mp3");
  audio11 = new SoundFile(this, "../DATA/audios/j-boog-lets-do-it-again.mp3");
  audio12 = new SoundFile(this, "../DATA/audios/junaito-makande-nina-voladora.mp3");
  audio13 = new SoundFile(this, "../DATA/audios/kings-of-leon-sex-on-fire.mp3");
  audio14 = new SoundFile(this, "../DATA/audios/lana-del-rey-summertime-sadness.mp3");
  audio15 = new SoundFile(this, "../DATA/audios/lp-muddy-waters.mp3");
  audio16 = new SoundFile(this, "../DATA/audios/maria-del-mar-bonet-alenar.mp3");
  audio17 = new SoundFile(this, "../DATA/audios/mariner.mp3");
  audio18 = new SoundFile(this, "../DATA/audios/mediterraniament.mp3");
  audio19 = new SoundFile(this, "../DATA/audios/milky-chance-stolen-dance.mp3");
  audio20 = new SoundFile(this, "../DATA/audios/no-te-veig-maria-hein.mp3");
  audio21 = new SoundFile(this, "../DATA/audios/oques-grasses-fer-te-felic.mp3");
}
