
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bBuscar, bCalendario, bEnter, bIr, bAnterior, bSiguiente, bInsert, bReset, bInsertaro, bEditaro, bBorraro, bBorrar;
SelectBD s1, s2, sEB;
Select s3;
String[][] selectValues1;
String[][] selectValues2;
String[][] selectValuesEB;
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "mercados artesanales", "barra", "foodtrucks", "servicio de guardería", "máximo 100 personas", "más de 100 personas", "gratuïto"};
String titulo = "¡Información!";
String mensaje1 = "Se ha actualizado la Base de Datos.";
String mensaje2 = "¿Quieres eliminar esta información?";

ImageButton iCuenta, iComprar, iBuscar;

TextField usuarioText, contrasenaText, buscarText, tituloText, descripcionText, seccionText, lugarText, fechaText;

Calendari calendario;

PagedCard pc, pc1;

Counter c;

PopUp p;

Confirm confirmar;

void setGUI(){
  setButtons();
  setImageButtons();
  setSelect();
  setTextField();
  setCalendario();
  setPagedCard();
  setPagedCard1();
  setCounter();
  setPopUp();
  setConfirm();
}

void setButtons(){
  bIdioma1     = new Button("Català", 2*margenH + logoWidth + bannerWidth - (4*buttonW1),0, buttonW1,idiomaH);
  bIdioma2     = new Button("Castellano", 2*margenH + logoWidth + bannerWidth - (3*buttonW1), 0, buttonW1, idiomaH);
  bIdioma3     = new Button("English", 2*margenH + logoWidth + bannerWidth - (2*buttonW1), 0, buttonW1, idiomaH);
  bIdioma4     = new Button("Deutsch", 2*margenH + logoWidth + bannerWidth - buttonW1, 0, buttonW1, idiomaH);
  bCalendario = new Button ("Calendario", 2*margenH + logoWidth + 3*selectW + buttonW2 + margenH*4, 2*margenV + bannerHeight, buttonW1, selectH);
  bEnter = new Button ("Aceptar", 550, 600, 350, buttonH1);
  bIr = new Button ("Ir", 1050, 320, 200, buttonH1 );
  bAnterior = new Button ("Anterior", 440, 690, 200, 30);
  bSiguiente = new Button ("Siguiente", 650, 690, 200, 30);
  bInsert = new Button ("Insert",  600, 600, countW, countH);
  bReset = new Button ("Reset", 750, 600, countW, countH);
  bInsertaro = new Button ("Insertar", 500, 450, countW, countH);
  bEditaro = new Button ("Editar", 600, 450, countW, countH);
  bBorraro = new Button ("Borrar", 700, 450, countW, countH);
  bBorrar = new Button ("Borrar", 670, 600, countW, countH); 
}

void setSelect(){
  selectValues1 = getInfoTablaSeccion();
  s1 = new SelectBD(selectValues1, 2*margenH + logoWidth, 2*margenV + bannerHeight, selectW, selectH);
  selectValues2 = getInfoTablaLugar();
  s2 = new SelectBD (selectValues2, 2*margenH + logoWidth + selectW + margenH, 2*margenV + bannerHeight, selectW, selectH);
  s3 = new Select(selectValues3, 2*margenH + logoWidth + 2*selectW + 2*margenH, 2*margenV + bannerHeight, selectW, selectH);
  selectValuesEB = getInfoTituloEventos();
  sEB = new SelectBD (selectValuesEB, 570, 350, selectW1, selectH);
}

void setImageButtons(){
  iCuenta = new ImageButton (imgCuenta, 2*margenH + logoWidth + 3*selectW + buttonW2 + buttonW1 + buttonW3 + margenH*3, 2*margenV + bannerHeight, cuentaWidth, cuentaHeight);
  iBuscar = new ImageButton (imgBuscar, 2*margenH + logoWidth + 3*selectW + (buttonW2 - buttonW3) + 3*margenH, 2*margenV + bannerHeight, buttonW3, selectH);
}

void setTextField(){
   usuarioText = new TextField(550, 400, 350, buttonH1);
   contrasenaText = new TextField (550, 470, 350, buttonH1);
   buscarText = new TextField(2*margenH + 4*selectW + 3*margenH, 2*margenV + bannerHeight, buttonW2, selectH);
   tituloText = new TextField (550, 310, 3*countW, countH);
   descripcionText = new TextField (550, 370, 3*countW, buttonH3);
   seccionText = new TextField (550, 480, 3*countW, countH);
   lugarText = new TextField (550, 540, buttonW1, countH);
   fechaText = new TextField (750, 540, buttonW1, countH);
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

void setPagedCard1(){
  pc = new PagedCard(2);
  String[][] infoCards = getInfoEventosRecientes();
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCard1(){
   pc = new PagedCard(2);
  String[][] infoCards = getInfoEventosRecientes(s1.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}


void setCounter(){
  c = new Counter (imgMas, imgMenos, 970, 280, countW, countH);
  c.setValues(0, 100);
  c.setInitialValue(0);
  c.setStepValue(1);
}

void setPopUp(){
  p = new PopUp(titulo, mensaje1, 250, 250, popW, popH);
  p.setVisible(false);
}

void setConfirm(){
  confirmar = new Confirm (titulo, mensaje2, (width/2)-400, 300, confW, confH);
  confirmar.setVisible(false);
}
