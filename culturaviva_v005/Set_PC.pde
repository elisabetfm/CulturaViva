void setPagedCard() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos();
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCard() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos(s1.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardLugar() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosLugar(s2.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardLugar() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosLugar(s2.selectedIndex);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardDescripcion() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosDescripcion(s3.selectedValue);
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardDescripcion() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosDescripcion(s3.selectedValue);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardEscrito() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosBuscar("");
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardEscrito() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosBuscar("");
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardCalendario() {
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

void updatePageCardCalendario(String fecha) {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventosCalendario(fecha);
  pc.setData(infoCards);
  pc.setCards();
}

void setPagedCardRecientes() {
  pc1 = new PagedCard(2);
  String[][] infoCards = getInfoEventosRecientes(s1.selectedIndex);
  pc1.setData(infoCards);
  pc1.setCards();
}

void updatePageCardRecientes() {
  pc1 = new PagedCard(2);
  String[][] infoCards = getInfoEventosRecientes(s1.selectedIndex);
  pc1.setData(infoCards);
  pc1.setCards();
}

void setPagedCardAleatorios() {
  pc2 = new PagedCard(4);
  String[][] infoCards = getInfoEventosAleatorios(s1.selectedIndex);
  pc2.setData(infoCards);
  pc2.setCardsSmall();
  pc2.mostrarPagina=false;
}

void updatePageCardAleatorios() {
  pc2 = new PagedCard(4);
  String[][] infoCards = getInfoEventosAleatorios(s1.selectedIndex);
  pc2.setData(infoCards);
  pc2.setCardsSmall();
}
