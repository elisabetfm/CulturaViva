
Button bIdioma1, bIdioma2, bIdioma3, bIdioma4, bCuenta, bSecciones, bLugares, bOtros, bReventas, bBuscar, bCalendario, bComprar;

void setGUI(){
  setBotons();
}

void setBotons(){
  bIdioma1     = new Button("Català", 2*margenH + logoWidth + bannerWidth - (4*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma2     = new Button("Castellano", 2*margenH + logoWidth + bannerWidth - (3*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma3     = new Button("English", 2*margenH + logoWidth + bannerWidth - (2*buttonW1), 2*margenV, buttonW1, buttonH2);
  bIdioma4     = new Button("Deutsch", 2*margenH + logoWidth + bannerWidth - buttonW1, 2*margenV, buttonW1, buttonH2);
  bCuenta     = new Button( ".", 2*margenH + logoWidth + bannerWidth - buttonW4, 2*margenV + logoHeight - buttonW4, buttonW4, buttonH1);
  bSecciones  = new Button("Secciones", 2*margenH + logoWidth + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH1);
  bLugares    = new Button("Lugares", 2*margenH + logoWidth + buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH1);
  bOtros      = new Button("Otros", 2*margenH + logoWidth + 2*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH1);
  bReventas   = new Button("Reventas", 2*margenH + logoWidth + 3*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW1, buttonH1);
  bBuscar     = new Button("Acontecimientos, compañías, grupos, otros.", 2*margenH + logoWidth + 4*buttonW1 + margenH, 2*margenV + bannerHeight + margenV, buttonW2, buttonH1);
  bCalendario = new Button (".", 2*margenH + logoWidth + 4*buttonW1 + buttonW2 + margenH,  2*margenV + bannerHeight + margenV, buttonW1, buttonH1);
  bComprar    = new Button (".", 2*margenH + logoWidth + 5*buttonW1 + buttonW2 + margenH, 2*margenV + bannerHeight + margenV, buttonW3, buttonH1);
}
