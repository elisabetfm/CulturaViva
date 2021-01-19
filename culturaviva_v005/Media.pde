import processing.sound.*;
// Elementos multimedia de la APP
// Imágenes, tipografías, sonidos, ...
// Imatges
PImage imgLogo, imgFondo, imgBanner, imgCuenta, imgComprar, imgBuscar, imgTeatro, imgArte, imgFestival, imgConcierto, imgFeria, imgLectura;
//Tipografies
PFont fuente1, fuente2, fuente3, fuente4, fuente5, fuente6, fuente7;

//Audios
SoundFile[] audio;
String[] songs = {"alegria.mp3", 
                  "amy-winehouse-back-to-black.mp3",
                  "andrea-motis-la-gavina.mp3",
                  "cacauet-torrat.mp3",
                  "chet-faker-talk-is-cheap.mp3",
                  "etta-james-id-rather-go-blind.mp3",
                  "extremoduro-so-payaso.mp3",
                  "ginesta-estimar-te-com-la-terra.mp3",
                  "girl-in-red-we-fell-in-love-in-october.mp3",
                  "ido-un-cafe-maria-hein.mp3",
                  "j-boog-lets-do-it-again.mp3",
                  "juanito-makande-nina-voladora.mp3",
                  "kings-of-leon-sex-on-fire.mp3",
                  "lana-del-rey-summertime-sadness.mp3",
                  "lp-muddy-waters.mp3",
                  "maria-del-mar-bonet-alenar.mp3",
                  "mariner.mp3",
                  "mediterraniament.mp3",
                  "milky-chance-stolen-dance.mp3",
                  "no-te-veig-maria-hein.mp3",
                  "oques-grasses-fer-te-felic.mp3"};

// Càrrega dels elements multimèdia
void loadMedia(){
  loadImages();
  loadFonts();
  //loadSounds();
}

// Càrrega de les Imatges
void loadImages(){
  imgLogo = loadImage("../DATA/imgs/imgLogo1.jpg");
  imgFondo = loadImage("../DATA/imgs/imgFondo5.jpg");
  imgCuenta = loadImage("../DATA/imgs/buttonCuenta.png");
  imgComprar = loadImage("../DATA/imgs/buttonComprar.png");
  imgBuscar = loadImage("../DATA/imgs/buttonBuscar.png");
  imgBanner = loadImage ("../DATA/imgs/Banner4.jpg");
  imgTeatro = loadImage("../DATA/imgs/Teatro.jpg");
  imgArte = loadImage("../DATA/imgs/Arte.jpg");
  imgTeatro = loadImage("../DATA/imgs/Teatro1.jpg");
  imgFestival = loadImage("../DATA/imgs/Festival.jpg");
  imgConcierto = loadImage("../DATA/imgs/Concierto.jpg");
  imgFeria = loadImage("../DATA/imgs/Feria.jpg");
  imgLectura = loadImage("../DATA/imgs/Lectura.jpg");
}

// Càrrega de les Tipografies
void loadFonts(){
  fuente1 = createFont("../DATA/fonts/Borgen.ttf", 32);
  fuente2 = createFont("../DATA/fonts/BorgenBold.ttf", 32);
  fuente3 = createFont("../DATA/fonts/secrcode.ttf", 32);
  fuente4= createFont("../DATA/fonts/HunDIN1451.ttf", 32);
  fuente5 = createFont("../DATA/fonts/monkey.ttf", 32);
  fuente6 = createFont("../DATA/fonts/saxmono.ttf", 32);
  fuente7= createFont("../DATA/fonts/Hiddencinema.ttf", 70);
}

// Càrrega dels àudios
void loadSounds(){
  
  audio = new SoundFile[21];
  for(int i=0; i<songs.length; i++){
    audio[i] = new SoundFile(this, "../DATA/sounds/"+songs[i]);
  }
}
