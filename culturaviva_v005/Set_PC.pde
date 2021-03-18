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

void setPagedCardMallorca() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos();
  pc.setData(infoCards);
  pc.setCards();
}

void updatePageCardMallorca() {
  pc = new PagedCard(3);
  String[][] infoCards = getInfoTablaEventos(s1.selectedIndex);
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
}

void updatePageCardAleatorios() {
  pc2 = new PagedCard(4);
  String[][] infoCards = getInfoEventosAleatorios(s1.selectedIndex);
  pc2.setData(infoCards);
  pc2.setCardsSmall();
}
