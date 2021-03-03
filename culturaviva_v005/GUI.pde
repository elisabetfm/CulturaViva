
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bBuscar, bCalendario, bEnter, bIr, bAnterior, bSiguiente, bInsertar, bReset;
SelectBD s1, s2;
Select s3;
String[][] selectValues1; // = {"obras de teatro", "exposiciones de arte", "festivales", "conciertos", "ferias", "clubs de lectura"};
String[][] selectValues2;// = {"Islas: Malloca", "Menorca", "Eivissa", "Formentera", "Espacio: Exterior", "Interior"};
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "mercados artesanales", "barra", "foodtrucks", "servicio de guardería", "máximo 100 personas", "más de 100 personas", "gratuïto"};

ImageButton iCuenta, iComprar, iBuscar;

TextField usuarioText, contrasenaText, buscarText, insertarText;

Calendari calendario;

PagedCard pc;

Counter c;

void setGUI(){
  setButtons();
  setImageButtons();
  setSelect();
  setTextField();
  setCalendario();
  setPagedCard();
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
  bAnterior = new Button ("Anterior", 440, 690, 200, 30);
  bSiguiente = new Button ("Siguiente", 650, 690, 200, 30);
  bInsertar = new Button ("Insertar",  600, 600, countW, countH);
  bReset = new Button ("Reset", 750, 600, countW, countH);
}

void setSelect(){
  selectValues1 = getInfoTablaSeccion();
  s1 = new SelectBD(selectValues1, 2*margenH + logoWidth, 2*margenV + bannerHeight, selectW, selectH);
  selectValues2 = getInfoTablaLugar();
  s2 = new SelectBD (selectValues2, 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight, selectW, selectH);
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
   insertarText = new TextField (width/4, height/2, 3*countW, countH);
}

void setCalendario(){
  calendario = new Calendari (400, 300, 500, 450);
}

void setPagedCard(){
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos();
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCard(){
   pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos(s1.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void setCounter(){
  c = new Counter (imgMas, imgMenos, width/4, height/4, countW, countH);
  c.setValues(0, 100);
  c.setInitialValue(0);
  c.setStepValue(1);
}
