//Clase PagedCard

class PagedCard {

  String[][] cardsData;    // Datos de las Cards
  Card[] cards;            // Cards
  int numCards;            // Número total de Cards
  int numCardsPage;        // Número de Cards en 1 página
  int numPage;
  int numTotalPages;
  boolean mostrarPagina;

  // Constructor
  PagedCard(int ncp) {
    this.numCardsPage = ncp;
    this.numPage = 0;
    this.mostrarPagina=true;
  }

  // Setters
  void setData(String[][] d) {
    this.cardsData = d;
    this.numTotalPages = d.length / this.numCardsPage;
  }

  void setCards() {
    cards = new Card[this.cardsData.length];
    for (int i=0; i<cards.length; i++) {
      cards[i] = new Card(cardsData[i]);
      cards[i].setSizeTitulo(24);
      String nomImagen = cardsData[i][5];
      PImage img = loadImage("../DATA/imgs/"+nomImagen);
      cards[i].setImage(img);
    }
  }

  void setCardsSmall() {
    cards = new Card[this.cardsData.length];
    for (int i=0; i<cards.length; i++) {
      cards[i] = new Card(cardsData[i]);
      cards[i].setSizeTitulo(13);
      String nomImagen = cardsData[i][5];
      PImage img = loadImage("../DATA/imgs/"+nomImagen);
      cards[i].setImage(img);
    }
    this.mostrarPagina=false;
  }

  void setImages(PImage[] imgs) {
    for (int i=0; i<cards.length; i++) {
      cards[i].setImage(imgs[i]);
    }
  }

  void nextPage() {
    if (this.numPage<this.numTotalPages) {
      this.numPage++;
    }
  }

  void prevPage() {
    if (this.numPage>0) {
      this.numPage--;
    }
  }

  // Dibuja tabla
  void display(float x, float y, float w, float h) {
    pushStyle();

    // Dibuja Cards
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    float hCard = h / (float) numCardsPage;
    float yCard = y;
    float b = 10;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length) {
        cards[i].display(x, yCard, w, hCard, b);
        yCard += hCard + b;
      }
    }

    // Información de la página
    if (mostrarPagina) {
      fill(0);
      text("Pag: "+(this.numPage+1)+" / "+(this.numTotalPages+1), 330, 710);
    }
    popStyle();
  }

  void displayH(float x, float y, float w, float h) {

    pushStyle();

    // Dibuja Cards
    int firstCardPage = numCardsPage*numPage;
    int lastCardPage  = numCardsPage*(numPage+1) - 1;
    float wCard = w / (float) numCardsPage;
    float xCard = y;
    float b = 8;
    for (int i = firstCardPage; i <= lastCardPage; i++) {
      if (i<cards.length) {
        cards[i].display(xCard - 260, y, wCard, 3*margenH + logoHeight, b);
        xCard += wCard + 30;
      }
    }

    // Información de la página
    if (mostrarPagina) {
      fill(0); 
      text("Pag: "+(this.numPage+1)+" / "+(this.numTotalPages+1), 330, 710);
    }
    popStyle();
  }
}
