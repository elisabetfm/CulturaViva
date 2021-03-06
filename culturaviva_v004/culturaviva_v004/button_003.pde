// Components de la GUI
// Botons d'Imatge

// Botons de la GUI
ImageButton ib;

// Icones dels botons
PImage img1, img2;

// Dimensions dels botons
float buttonW01 = 80;
float buttonW02 = 50;
float buttonH01 = 80;
float buttonH02 = 50;

// Color de fons de l'App
//color bgColor = color(255);

void setup(){
  
  size(1800, 1000);      // Dimensions de la Pantalla
  
  // Carregar de les imatges (icones);
  img1 = loadImage("button01.png");
  img2 = loadImage("button02.png");
  
  PImage[] buttonImages = {img1, img2};
  
  // Creació dels botons
  ib1 = new img1 (2*margenH + logoWidth + bannerWidth - buttonW4, 2*margenV + logoHeight - buttonW4, buttonW4, buttonH);
  ib2 = new img2 (2*margenH + logoWidth + 5*buttonW1 + buttonW2 + margenH, 2*margenV + bannerHeight + margenV, buttonW3, buttonH);
  
}

void draw(){
  
  // Fons de la finestra
 // background(bgColor);
  
  // Dibuixa els botons
  ib.display();
  
  // Actualitza forma del cursor
  updateCursor();
}

// En cas de pitjar el ratolí
void mousePressed(){
  
  if(ib.mouseOverButton() && ib.enabled){
    bgColor = color(random(255), random(255), random(255));
    ib.enabled= false;
  }
  else if(!ib.mouseOverButton() && !ib.enabled){
    ib.enabled = true;
  }
}


// Modifica el cursor
void updateCursor(){
  
  if((ib.mouseOverButton() && ib.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
  
}
