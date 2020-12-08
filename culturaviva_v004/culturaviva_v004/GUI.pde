// Configuració de los elements de la GUI
// Botones, Desplegables, 

// Botones del Menú Principal
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bCuenta, bSecciones, bLugares, bOtros, bReventas, bBuscar, bCalendario, bComprar;
// Dimensions dels botons
int buttonH = 50, buttonW1 = 130, buttonW2 = 400, buttonW3 = 50, buttonW4 = 80;

// Creació dels elements de la GUI
void setGUI(){
  initButtons();
}

// Creació dels botons de la GUI
void initButtons(){
  bIdioma1     = new Button("Català", 2*margenH + logoWidth + bannerWidth - (4*buttonW1), 2*margenV, buttonW1, buttonH);
  bIdioma2     = new Button("Castellano", 2*margenH + logoWidth + bannerWidth - (3*buttonW1), 2*margenV, buttonW1, buttonH);
  bIdioma3     = new Button("English", 2*margenH + logoWidth + bannerWidth - (2*buttonW1), 2*margenV, buttonW1, buttonH);
  bIdioma4     = new Button("Deutsch", 2*margenH + logoWidth + bannerWidth - buttonW1, 2*margenV, buttonW1, buttonH);
  bCuenta     = new Button( ".", 2*margenH + logoWidth + bannerWidth - buttonW4, 2*margenV + logoHeight - buttonW4, buttonW4, buttonH);
  bSecciones  = new Button("Secciones", 2*margenH + logoWidth + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH);
  bLugares    = new Button("Lugares", 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH);
  bOtros      = new Button("Otros", 2*margenH + logoWidth + 2*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH);
  bReventas   = new Button("Reventas", 2*margenH + logoWidth + 3*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH);
  bBuscar     = new Button("Acontecimientos, compañías, grupos, otros.", 2*margenH + logoWidth + 4*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW2, buttonH);
  bCalendario = new Button (".", 2*margenH + logoWidth + 4*buttonW1 + buttonW2 + margenH,  2*margenV + bannerHeight + margenV, buttonW1, buttonH);
  bComprar    = new Button (".", 2*margenH + logoWidth + 5*buttonW1 + buttonW2 + margenH, 2*margenV + bannerHeight + margenV, buttonW3, buttonH);
}

// Activar els botons del menú
void enableButtons(){
  bIdioma1.setEnabled(true);
  bIdioma2.setEnabled(true);
  bIdioma3.setEnabled(true);
  bIdioma4.setEnabled(true);
  bCuenta.setEnabled(true);
  bSecciones.setEnabled(true);
  bLugares.setEnabled(true);
  bOtros.setEnabled(true);
  bReventas.setEnabled(true);
  bBuscar.setEnabled(true);
  bCalendario.setEnabled(true);
  bComprar.setEnabled(true);
}
