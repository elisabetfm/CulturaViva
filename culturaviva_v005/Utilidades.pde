//Libreria de Processing
import java.io.IOException;
import java.nio.file.*;

// Conversión de Time del formato ENG al formato EUROPEO
// "2021-03-16"  -----> "16/03/2021"
String formataFecha(String fechaEntrada) {

  String ano = fechaEntrada.split("-")[0];
  String mes = fechaEntrada.split("-")[1];
  String dia = fechaEntrada.split("-")[2];

  return dia+"/"+mes+"/"+ano;
}

// Conversión de Time del formato EUROPEO al formato ENG
// "16/03/2021"  ----->  "2021-03-16" 
String formataFecha2(String fechaEntrada) {

  String dia = fechaEntrada.split("/")[0];
  String mes = fechaEntrada.split("/")[1];
  String ano = fechaEntrada.split("/")[2];

  return ano+"-"+mes+"-"+dia;
}

//ImageCopy
void copiar(String rutaOriginal, String rutaCopia, String titol) {
  Path original = Paths.get(rutaOriginal);
  Path copia    = Paths.get(rutaCopia+"/"+titol);
  try {
    Files.copy(original, copia);
    println("OK: imagen copiada a la carpeta.");
  } 
  catch (IOException e) {
    println("ERROR: No se ha podido copiar la imagen.");
    println(e.getMessage());
  }
}

//Folder
void fileSelected(File selection) {
  if (selection == null) {
    println("No se ha seleccionado ningún fichero.");
  } else {

    // Obtener la ruta del fichero seleccionado
    rutaImagen = selection.getAbsolutePath();
    println("ruta Imagen: " + rutaImagen);
    img = loadImage(rutaImagen);  // Actualiza la imagen    
    tituloImagen = selection.getName();  // Actualiza el título
  }
}
