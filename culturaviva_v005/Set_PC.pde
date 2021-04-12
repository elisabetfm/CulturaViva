void setPagedCard() { //creación del paged card
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos();
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCard() { //actualización de la PagedCard
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos(s1.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardLugar() {  //creación de los PagedCard a partir del lugar de los eventos
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosLugar(s2.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardLugar() { //actualización de los PagedCard a partir del lugar de los eventos
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosLugar(s2.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardDescripcion() {  //creación de los PagedCard a partir de la descripción de los eventos
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosDescripcion(s3.selectedValue);
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardDescripcion() {  //actualización de los PagedCard a partir de la descripción de los eventos
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosDescripcion(s3.selectedValue);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardEscrito() {  //creación de los PagedCard a partir del escrito en el campo de tecto "buscar"
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosBuscar("");
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardEscrito() {  //actualizar de los PagedCard a partir del escrito en el campo de tecto "buscar"
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosBuscar("");
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardCalendario() {  //creación de los PagedCard a partir de la fecha seleccionada en el calendario
  pc = new PagedCard(3);

  Calendar cTemp = Calendar.getInstance();
  int anyTemp = cTemp.get(Calendar.YEAR);
  int mesTemp = cTemp.get(Calendar.MONTH) + 1;
  int diaTemp = cTemp.get(Calendar.DATE);
  String fechaHoy = diaTemp+"/"+mesTemp+"/"+anyTemp;

  String[][] infoCards = getInfoTablaEventosCalendario(fechaHoy);
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardCalendario(String fecha) {  //actualizar de los PagedCard a partir de la fecha seleccionada en el calendario
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosCalendario(fecha);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardRecientes() {  //creación de los PagedCard a partir de la fecha en orden ascendente
  pc1 = new PagedCard(2);
  String[][] infoCards = getInfoEventosRecientes(s1.selectedIndex);
  pc1.setData(infoCards);
  pc1.setCards();
}

void updatePageCardRecientes() { //actualización de los PagedCard a partir de la fecha en orden ascendente
  pc1 = new PagedCard(2);
  String[][] infoCards = getInfoEventosRecientes(s1.selectedIndex);
  pc1.setData(infoCards);
  pc1.setCards();
}

void setPagedCardAleatorios() { //creación de los PagedCard de manera aleatoria
  pc2 = new PagedCard(4);
  String[][] infoCards = getInfoEventosAleatorios(s1.selectedIndex);
  pc2.setData(infoCards);
  pc2.setCardsSmall();
  pc2.mostrarPagina=false;
}

void updatePageCardAleatorios() { //actualización de los PagedCard de manera aleatoria
  pc2 = new PagedCard(4);
  String[][] infoCards = getInfoEventosAleatorios(s1.selectedIndex);
  pc2.setData(infoCards);
  pc2.setCardsSmall();
}
