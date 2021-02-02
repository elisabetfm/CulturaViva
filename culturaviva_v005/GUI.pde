
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bBuscar, bCalendario, bEnter, bIr, bPrev, bNext, bInsert, bReset;
Select s1, s3;
SelectBD s2;
String[] selectValues1 = {"obras de teatro", "exposiciones de arte", "festivales", "conciertos", "ferias", "clubs de lectura"};
String[] selectValues2 = {"Malloca", "Menorca", "Eivissa", "Formentera"};
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "mercados artesanales", "barra/foodtrucks", "servicio de guardería", "máximo 100 personas", "más de 100 personas", "exterior", "interior"};

ImageButton iCuenta, iBuscar;

TextField usuarioText, contrasenaText, buscarText, n;

Calendari calendario;

Card c1, c2, c3;

PagedCard pc;

Counter c;

String[] info1 = {"Titol Esdeveniment 1", 
                  "Lloc 1", "Data 1", 
                  "Secció 1", 
                  "Descripció 1 bla bl bla bla bl bla bla bl blabla bl bla bla bl bla bla bl bla bla bl bla bla bl bla"};
                  
String[] info2 = { "Titol Esdeveniment 2", 
                  "Lloc 2", "Data 2", 
                  "Secció 2", 
                  "Descripció 2  bla bl bla bla bl bla bla bl bla bla bl blabla bl bla bla bl bla bla bl bla bla bl bla bla bl bla"};

String[] info3 = { "Titol Esdeveniment 3", 
                  "Lloc 3", "Data 3", 
                  "Secció 3", 
                  "Descripció 3  bla bl bla bla bl bla bla bl bla bla bl blabla bl bla bla bl bla bla bl bla bla bl bla bla bl bla"};

void setGUI(){
  setButtons();
  setImageButtons();
  setSelect();
  setTextField();
  setCalendario();
  setCard();
  setCounter();
}

void setButtons(){
  bIdioma1     = new Button("Català", 2*margenH + logoWidth + bannerWidth - (4*buttonW1),0, buttonW1, buttonH2);
  bIdioma2     = new Button("Castellano", 2*margenH + logoWidth + bannerWidth - (3*buttonW1), 0, buttonW1, buttonH2);
  bIdioma3     = new Button("English", 2*margenH + logoWidth + bannerWidth - (2*buttonW1), 0, buttonW1, buttonH2);
  bIdioma4     = new Button("Deutsch", 2*margenH + logoWidth + bannerWidth - buttonW1, 0, buttonW1, buttonH2);
  bCalendario = new Button ("Calendario", 2*margenH + logoWidth + 3*selectW + buttonW2 + margenH*4, 2*margenV + bannerHeight, buttonW1, selectH);
  bEnter = new Button ("Aceptar", 550, 600, 350, buttonH1);
  bIr = new Button ("Ir", 1050, 320, 200, buttonH1 );
  bPrev = new Button ("Previo", 500, 685, buttonW1, buttonH1);
  bNext = new Button ("Siguiente", 650, 685, buttonW1, buttonH1);
  bInsert = new Button ("Insertar", 650, 685, buttonW1, buttonH1);
  bReset = new Button ("Reset", 500, 685, buttonW1, buttonH1);
}

void setSelect(){
  s1 = new Select(selectValues1, 2*margenH + logoWidth, 2*margenV + bannerHeight, selectW, selectH);
  String[][] selectLugares = getInfoTablaLugar();
  s2 = new SelectBD(selectLugares, 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight, selectW, selectH);
  s3 = new Select(selectValues3, 2*margenH + logoWidth + 2*buttonW1 + 2*margenH, 2*margenV + bannerHeight, selectW, selectH);
}

void setImageButtons(){
  iCuenta = new ImageButton (imgCuenta, 2*margenH + logoWidth + 3*selectW + buttonW2 + buttonW1 + buttonW3 + margenH*6, 2*margenV + bannerHeight, cuentaWidth, cuentaHeight);
  iBuscar = new ImageButton (imgBuscar, 2*margenH + logoWidth + 3*selectW + (buttonW2 - buttonW3) + 3*margenH, 2*margenV + bannerHeight, buttonW3, selectH);
}

void setTextField(){
   usuarioText = new TextField(550, 400, 350, buttonH1);
   contrasenaText = new TextField (550, 470, 350, buttonH1);
   buscarText = new TextField(2*margenH + 4*buttonW1 + 4*margenH, 2*margenV + bannerHeight, buttonW2, selectH);
   n = new TextField (width/4, height/2, 3*buttonW1, buttonH3);
}

void setCalendario(){
   calendario = new Calendari (400, 300, 500, 450);
}

void setCard(){
  print("abans");
  String[][] selectEventos = getInfoTablaEventos();
  printArray(selectEventos[0]);
  pc = new PagedCard(3);
  pc.setData(selectEventos);
  pc.setCards();
 
}

void setCounter(){
  c = new Counter(bInsert, bReset, width/4, height/4, buttonW1, buttonH3);
  c.setValues(0, 100);
  c.setInitialValue(0);
  c.setStepValue(1);
}
