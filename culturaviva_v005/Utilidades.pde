// Conversió de Time del format ENG al format EUROPEU
// "2021-03-16"  -----> "16/03/2021"


String formataFecha(String fechaEntrada){
  
  String ano = fechaEntrada.split("-")[0];
  String mes = fechaEntrada.split("-")[1];
  String dia = fechaEntrada.split("-")[2];
  
  return dia+"/"+mes+"/"+ano;
}


// Conversió de Time del format EUROPEU al format ENG
// "16/03/2021"  ----->  "2021-03-16" 

String formataFecha2(String fechaEntrada){
  
  String dia = fechaEntrada.split("/")[0];
  String mes = fechaEntrada.split("/")[1];
  String ano = fechaEntrada.split("/")[2];
  
  return ano+"-"+mes+"-"+dia;
}
