
Button bInicio, bBuscar, bCalendario, bEnter, bIr, bAnterior, bSiguiente, bInsert, bReset, bInsertaro, bEditaro, bBorraro, bBorrar, bEditar, bUpdate, bFiltro; // declarar los botones
SelectBD s1, s2, sEB, sSeccion, sLugar, sSeccionEditar; // declarar los selects de BBDD
Select s3; // declarar los selects
String[][] selectValues1; // declarar los valores de los selects de BBDD
String[][] selectValues2;  // declarar los valores de los selects de BBDD
String[][] selectValuesEB;  // declarar los valores de los selects de BBDD
String[] selectValues3 = {"eventos nocturnos", "eventos diurnos", "barra", "foodtrucks", "servicio de guardería", "máximo 100 personas", "más de 100 personas", "gratis"}; // declarar los valores de los selects 
String titulo = "¡Información!";  // declarar la información de los PopUps
String mensaje1 = "Se ha actualizado la Base de Datos."; // declarar la información de los PopUps
String mensaje2 = "¿Quieres eliminar esta información?"; // declarar la información de los PopUps
String mensaje3 = "No se ha encontrado ningún resultado."; // declarar la información de los PopUps
String fecha = "2021-03-16"; // declarar la estructura de la fecha
String idUsuarioLogin="0"; 
String rutaImagen = "C:\\Users\\usuario\\Desktop\\Solución informática\\CulturaViva\\DATA\\imgs"; // Ruta del fichero imagen
String tituloImagen=""; // Nom del fitxer imatge
String rutaCopia = "C:\\Users\\usuario\\Desktop\\Solución informática\\CulturaViva\\DATA\\imgs"; // Carpeta on guardar les imatges
String idEvento = "";

ImageButton iCuenta, iBuscar, iFoto; // declarar los botones con imágenes
TextField usuarioText, contrasenaText, buscarText, tituloText, descripcionText, fechaText; // declarar los selects de BBDD
Calendario calendario; // declarar el calendario
PagedCard pc, pc1, pc2; // declarar las PagedCards
PopUp p, p1; // declarar los PopUps
Confirm confirmar; // declarar el Confirm
PImage img;

void setGUI() { // set que lamma a los demás sets
  setButtons();
  setImageButtons();
  setSelect();
  setTextField();
  setCalendario();
  setPagedCard();
  setPagedCardRecientes();
  setPagedCardAleatorios();
  setPagedCardLugar();
  setPagedCardDescripcion();
  setPagedCardEscrito();
  setPagedCardCalendario();
  setPopUp();
  setConfirm();
}

void setButtons() { // creación de los botones
  bInicio = new Button ("Inicio", margenV, margenH*2 + logoHeight, logoWidth, selectH);
  bCalendario = new Button ("Calendario", 2*margenH + logoWidth + 3*selectW + buttonW2 + margenH*4, 2*margenV + bannerHeight, buttonW1, selectH);
  bEnter = new Button ("Aceptar", 550, 600, 350, buttonH1);
  bIr = new Button ("Ir", 1050, 320, 200, buttonH1 );
  bAnterior = new Button ("Anterior", 500, 690, 200, 30);
  bSiguiente = new Button ("Siguiente", 720, 690, 200, 30);
  bInsert = new Button ("Insertar", 1050, 350, countW, selectH);
  bReset = new Button ("Reset",  1050, 580, countW, selectH);
  bInsertaro = new Button ("Insertar", 500, 450, countW, countH);
  bEditaro = new Button ("Editar", 600, 450, countW, countH);
  bBorraro = new Button ("Borrar", 700, 450, countW, countH);
  bBorrar = new Button ("Borrar",  1050, 580, countW, selectH);
  bEditar = new Button ("Editar", 1050, 580, countW, selectH);
  bUpdate = new Button ("Actualiza",  1050, 350, countW, selectH);
  bFiltro = new Button ("Filtro", 1050, 350, countW, selectH);
}

void setSelect() { //creación de los selects
  selectValues1 = getInfoTablaSeccion();
  s1 = new SelectBD(selectValues1, 2*margenH + logoWidth, 2*margenV + bannerHeight, selectW, selectH);
  selectValues2 = getInfoTablaLugar();
  s2 = new SelectBD (selectValues2, 2*margenH + logoWidth + selectW + margenH, 2*margenV + bannerHeight, selectW, selectH);
  s3 = new Select(selectValues3, 2*margenH + logoWidth + 2*selectW + 2*margenH, 2*margenV + bannerHeight, selectW, selectH);
  selectValues1 = getInfoTablaSeccion();
  sSeccion = new SelectBD (selectValues1, 550, 500, 3*countW, countH );
  selectValues2 = getInfoTablaLugar();
  sLugar = new SelectBD (selectValues2, 550, 580, buttonW1, countH);
  selectValues1 = getInfoTablaSeccion();
  sSeccionEditar = new SelectBD (selectValues1, 570, 350, selectW1, selectH);
  selectValuesEB = getInfoTituloEventos();
  sEB = new SelectBD (selectValuesEB, 570, 450, selectW1, selectH);
  sEB.enabled = false;
}

void setImageButtons() { // creación de los botones con imágenes
  iCuenta = new ImageButton (imgCuenta, 2*margenH + logoWidth + 3*selectW + buttonW2 + buttonW1 + buttonW3 + margenH*3, 2*margenV + bannerHeight, cuentaWidth, cuentaHeight);
  iBuscar = new ImageButton (imgBuscar, 2*margenH + logoWidth + 3*selectW + (buttonW2 - buttonW3) + 3*margenH, 2*margenV + bannerHeight, cuentaWidth, cuentaHeight);
  iFoto = new ImageButton (imgFoto, 690, 580, buttonW3, countH);
}

void setTextField() { // creación de los campos de textos
  usuarioText = new TextField(550, 400, 350, buttonH1);
  contrasenaText = new TextField (550, 470, 350, buttonH1);
  buscarText = new TextField(2*margenH + 4*selectW + 3*margenH, 2*margenV + bannerHeight, buttonW2, selectH);
  tituloText = new TextField (550, 310, 3*countW, countH);
  descripcionText = new TextField (550, 385, 3*countW, buttonH3);
  fechaText = new TextField (750, 580, buttonW5, countH);
}

void setCalendario() { //creación del calendario
  calendario = new Calendario (400, 300, 500, 450);
}

void setPopUp() { // creación de los PopUps
  p = new PopUp(titulo, mensaje1, (width/2)-400, 300, popW, popH);
  p.setVisible(false);
  p1 = new PopUp(titulo, mensaje3, (width/2)-400, 300, popW, popH);
}


void setConfirm() { // creación del Confirm
  confirmar = new Confirm (titulo, mensaje2, (width/2)-400, 300, confW, confH);
  confirmar.setVisible(false);
}
