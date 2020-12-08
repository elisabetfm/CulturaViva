// Components de la GUI
// Select Desplegable

// Selects de la GUI
Select s1, s2;

// Valors dels Selects
String[] selectValues1 = {"obras de teatro", "exposiciones de arte", "festivales", "conciertos", "ferias", "clubs de lectura"};
String[] selectValues2 = {"Islas: Malloca", "Menorca", "Eivissa", "Formentera", "Espacio: Exterior", "Interior"};
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "mercados artesanales", "merchandising", "barra", "foodtrucks o comida para picar", "servicio de guardería", "aforo de personas: máximo 50 personas", "máximo 100 personas", "más de 100 personas", "gratuïto"};
String[] selectValues4 = {"calendario"};

// Dimensions dels botons
float selectW = 130;
float selectH = 50;

// Valor numèric
int n = 0;

void setup(){
  
  size(1800, 1000);      // Dimensions de la Pantalla
  
  // Creació dels selects
  s1 = new Select(selectValues1, 2*margenH + logoWidth + margenH, 2*margenV + bannerHeight + margenV, selectW, selectH);
  s2 = new Select(selectValues2, 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight + margenV, selectW, selectH);
  s3 = new Select(selectValues3, 2*margenH + logoWidth + 2*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, selectW, selectH);
  s4 = new Select (selectValues4, 2*margenH + logoWidth + 4*buttonW1 + buttonW2 + margenH,  2*margenV + bannerHeight + margenV, selectW, selectH);
}

void draw(){
  
  // Fons de la finestra
 // background(bgColor);
  
  // Dibuixa els selects
  s1.display();
  s2.display();
  s3.display();
  s4.display();
  
  // Actualitza forma del cursor
  updateCursor();
  
  // Dibuixa número n
  //fill(0); textSize(38);
  //text(n, 50, 50);
}

// En cas de pitjar el ratolí
void mousePressed(){
  
  // Si pitjam sobre el select 1
  if(s1.mouseOverSelect() && s1.enabled){
    if(!s1.collapsed){
      s1.update();      // Actualitzar valor
      updateColor();    // Fer acció amb valor
    }
    s1.toggle();        // Plegar o desplegar
  }
  
  // Si pitjam sobre el select 2
  if(s2.mouseOverSelect() && s2.enabled){
    if(!s2.collapsed){
      s2.update();      // Actualitzar valor
      updateNumber();   // Fer acció amb valor
    }
    s2.toggle();        // Plegar o desplegar
  }
}

// Modifica el color segons Select 1
void updateColor(){
  if(s1.selectedValue=="RED"){
    bgColor = color(255, 0, 0);
  }
  else if(s1.selectedValue=="GREEN"){
    bgColor = color(0, 255, 0);
  }
  else if(s1.selectedValue=="BLUE"){
    bgColor = color(0, 0, 255);
  }
}

// Modificar el número segons Select 2
void updateNumber(){
  n = Integer.parseInt(s2.selectedValue);
}

 // Modifica el cursor
void updateCursor(){
  if((s1.mouseOverSelect() && s1.enabled)||
     (s2.mouseOverSelect() && s2.enabled)){
      cursor(HAND);
  }
  else {
     cursor(ARROW);
  }
}
