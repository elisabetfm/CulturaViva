
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bCuenta, bSecciones, bLugares, bOtros, bReventas, bBuscar, bCalendario, bComprar;
Select s1, s2, s3;
String[] selectValues1 = {"obras de teatro", "exposiciones de arte", "festivales", "conciertos", "ferias", "clubs de lectura"};
String[] selectValues2 = {"Islas: Malloca", "Menorca", "Eivissa", "Formentera", "Espacio: Exterior", "Interior"};
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "mercados artesanales", "merchandising", "barra", "foodtrucks o comida para picar", "servicio de guardería", "aforo de personas: máximo 50 personas", "máximo 100 personas", "más de 100 personas", "gratuïto"};

float selectW = 130;
float selectH = 50;

void setGUI(){
  setBotons();
  setSelect();
}

void setBotons(){
  bIdioma1     = new Button("Català", 2*margenH + logoWidth + bannerWidth - (4*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma2     = new Button("Castellano", 2*margenH + logoWidth + bannerWidth - (3*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma3     = new Button("English", 2*margenH + logoWidth + bannerWidth - (2*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma4     = new Button("Deutsch", 2*margenH + logoWidth + bannerWidth - buttonW1, 2*margenV, buttonW1, buttonH2);
  bCuenta     = new Button( "Cuenta", 2*margenH + logoWidth + bannerWidth - buttonW4, 2*margenV + (bannerHeight - buttonW4), buttonW4, buttonH3);
  bBuscar     = new Button("Acontecimientos, compañías, grupos, otros.", 2*margenH + logoWidth + 4*buttonW1 + margenH, 2*margenV + bannerHeight, buttonW2, buttonH1);
  bCalendario = new Button ("Calendario", 2*margenH + logoWidth + 4*buttonW1 + buttonW2 + margenH,  2*margenV + bannerHeight, buttonW1, buttonH1);
  bComprar    = new Button ("Compra", 2*margenH + logoWidth + 5*buttonW1 + buttonW2 + margenH, 2*margenV + bannerHeight, buttonW3, buttonH1);
}

void setSelect(){
  s1 = new Select(selectValues1, 2*margenH + logoWidth + margenH, 2*margenV + bannerHeight + margenV, selectW, selectH);
  s2 = new Select(selectValues2, 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight + margenV, selectW, selectH);
  s3 = new Select(selectValues3, 2*margenH + logoWidth + 2*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, selectW, selectH);
}
