//Libreria de MySQL y Processing
import de.bezier.data.sql.*;

//Objeto de connexión a la BBDD
MySQL msql;

void conexion(){
 // size (100, 100);
  //Parámetros de la connexión
  String user = "root";
  String pass = "";
  String database = "culturaviva";
  
  //Establecemos la connexión
  msql = new MySQL (this, "localhost", database, user, pass);
  
  //Si la connexión se ha establecido
  if (msql.connect()){
    //La conexión ha funcionado
    println("Connected to database");
  }
  else {
    //La connexión a fallado
    println ("Connection failed");
  }
}

// Obté el número de files de la taula
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

String[][] getInfoTablaLugar(){
  
  int numRows = getNumRowsTaula("lugar");
  
  String[][] data = new String[numRows][2];
  
  int nr=0;
  msql.query( "SELECT * FROM lugar" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("id_lugar"));
      data[nr][1] = msql.getString("nombre_lugar");
      nr++;
  }
  return data;
}

String[][] getInfoTablaEventos(){
  
  int numRows = getNumRowsTaula("eventos");
  
  String[][] data = new String[numRows][2];
  
  int nr=0;
  msql.query( "SELECT * FROM eventos" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("id_Eventos"));
      data[nr][1] = msql.getString("nombre_evento");
      data[nr][2] = msql.getString("descripción_evento");
      data[nr][3] = msql.getString("Sección_id_sección");
      data[nr][4] = msql.getString("Lugar_id_lugar");
      nr++;
  }
  return data;
}
