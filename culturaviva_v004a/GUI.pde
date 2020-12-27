
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bBuscar, bCalendario, bEnter, bIr;
Select s1, s2, s3;
String[] selectValues1 = {"obras de teatro", "exposiciones de arte", "festivales", "conciertos", "ferias", "clubs de lectura"};
String[] selectValues2 = {"Islas: Malloca", "Menorca", "Eivissa", "Formentera", "Espacio: Exterior", "Interior"};
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "mercados artesanales", "merchandising", "barra", "foodtrucks o comida para picar", "servicio de guardería", "aforo de personas: máximo 50 personas", "máximo 100 personas", "más de 100 personas", "gratuïto"};

float selectW = 130;
float selectH = 50;

ImageButton iCuenta, iComprar, iBuscar;

TextField usuarioText, contrasenaText, buscarText;

Calendari calendario;

void setGUI(){
  setButtons();
  setImageButtons();
  setSelect();
  setTextField();
  setCalendario();
}

void setButtons(){
  bIdioma1     = new Button("Català", 2*margenH + logoWidth + bannerWidth - (4*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma2     = new Button("Castellano", 2*margenH + logoWidth + bannerWidth - (3*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma3     = new Button("English", 2*margenH + logoWidth + bannerWidth - (2*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma4     = new Button("Deutsch", 2*margenH + logoWidth + bannerWidth - buttonW1, 2*margenV, buttonW1, buttonH2);
  bCalendario = new Button ("Calendario", 2*margenH + logoWidth + 3*selectW + buttonW2 + margenH*3, 2*margenV + bannerHeight, buttonW1, buttonH1);
  bEnter = new Button ("Aceptar", 550, 600, 350, buttonH1);
  bIr = new Button ("Ir", 1050, 320, 200, buttonH1 );
}

void setSelect(){
  s1 = new Select(selectValues1, 2*margenH + logoWidth + margenH, 2*margenV + bannerHeight, selectW, selectH);
  s2 = new Select(selectValues2, 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight, selectW, selectH);
  s3 = new Select(selectValues3, 2*margenH + logoWidth + 2*buttonW1 + margenH, 2*margenV + bannerHeight, selectW, selectH);
}

void setImageButtons(){
  iCuenta = new ImageButton (imgCuenta, 2*margenH + logoWidth + (bannerWidth- margenH-cuentaWidth), 2*margenV + idiomaHeight, cuentaWidth, cuentaHeight);
  iComprar = new ImageButton (imgComprar,  2*margenH + logoWidth + 3*selectW + buttonW2 + buttonW1 + margenH*5, 2*margenV + bannerHeight, buttonW3, buttonH1); 
  iBuscar = new ImageButton (imgBuscar, 2*margenH + logoWidth + 3*selectW + (buttonW2 - buttonW3) + 2*margenH, 2*margenV + bannerHeight, buttonW3, buttonH1);
}

void setTextField(){
   usuarioText = new TextField(550, 350, 350, buttonH1);
   contrasenaText = new TextField (550, 550, 350, buttonH1);
   buscarText = new TextField(2*margenH + 4*buttonW1 + 3*margenH, 2*margenV + bannerHeight, buttonW2, buttonH1);
}

void setCalendario(){
calendario = new Calendari (400, 300, 500, 450);
}
