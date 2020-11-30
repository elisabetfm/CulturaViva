// Configuració de los elements de la GUI
// Botones, Desplegables, 

// Botones del Menú Principal
Button bIdioma, bCuenta, bSecciones, bLugares, bOtros, bConfig, bReventas, bBuscar, bCalendario, bComprar ;
// Dimensions dels botons
int buttonH = 100, buttonW1 = 300, buttonW2 = , buttonW3 = , buttonW4 = , buttonW;

// Creació dels elements de la GUI
void setGUI(){
  initButtons();
}

// Creació dels botons de la GUI
void initButtons(){
  bIdioma     = new Button("Jugar", 2*marginH, 360, buttonW, buttonH);
  bCuenta     = new Button("Punts", 2*marginH, 360 + buttonH + 2* marginV, buttonW, buttonH);
  bSecciones = new Button("Preguntes", 2*marginH, 360 + 2*buttonH + 4*marginV, buttonW, buttonH);
  bLugares    = new Button("Configuració", 2*marginH, 360 + 3*buttonH + 6*marginV, buttonW, buttonH);
  bSobre     = new Button("Sobre Trivio", 2*marginH, 360 + 4*buttonH + 8*marginV, buttonW, buttonH);
}

// Activar els botons del menú
void enableButtons(){
  bJugar.setEnabled(true);
  bPunts.setEnabled(true);
  bPreguntes.setEnabled(true);
  bConfig.setEnabled(true);
  bSobre.setEnabled(true);
}
