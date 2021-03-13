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

int getNumRowsEventosSeccion(int numSeccion){
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE Seccion_id_seccion='"+ numSeccion+"'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

String[][] getInfoTablaLugar(){
  
  int numRows = getNumRowsTaula("lugar");
  
  String[][] data = new String[numRows][2];
  
  int nr=0;
  msql.query( "SELECT * FROM lugar ORDER BY nombre_lugar ASC" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("id_lugar"));
      data[nr][1] = msql.getString("nombre_lugar");
      nr++;
  }
  return data;
}

String[][] getInfoTablaSeccion(){
  
  int numRows = getNumRowsTaula("seccion");
  println("Num seccions: "+numRows);
  
  String[][] data = new String[numRows][2];
  
  int nr=0;
  msql.query( "SELECT * FROM seccion ORDER BY nombre_seccion ASC" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("id_seccion"));
      data[nr][1] = msql.getString("nombre_seccion");
      nr++;
  }
  return data;
}


String[][] getInfoTablaEventos(){
  
  int numRows = getNumRowsTaula("eventos");

  print(numRows);
  
  String[][] data = new String[numRows][6];
  
  int nr=0;
  msql.query( "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar;" );
  while (msql.next()){
      data[nr][0] = msql.getString("titulo");
      data[nr][1] = msql.getString("lugar");
      data[nr][2] = msql.getString("fecha");
      data[nr][3] = msql.getString("seccion");
      data[nr][4] = msql.getString("descripcion");
      data[nr][5] = msql.getString("imagen");
      nr++;
  }
  
  printArray(data);
  return data;
}

String[][] getInfoTituloEventos(){
  
  int numRows = getNumRowsTaula("eventos");

  print(numRows);
  
  String[][] data = new String[numRows][2];
  
  int nr=0;
  msql.query( "SELECT id_Eventos, nombre_evento FROM eventos" );
  while (msql.next()){
      data[nr][0] = String.valueOf(msql.getInt("id_Eventos"));
      data[nr][1] = msql.getString("nombre_evento");
      nr++;
  }
  
  printArray(data);
  return data;
}

String[][] getInfoEventosRecientes(){
  
  int numRows = getNumRowsTaula("eventos");

  print(numRows);
  
  String[][] data = new String[numRows][6];
  
  int nr=0;
  msql.query( "SELECT  *  FROM eventos ORDER BY fecha DESC;" );
  while (msql.next()){
      data[nr][0] = msql.getString("titulo");
      data[nr][1] = msql.getString("lugar");
      data[nr][2] = msql.getString("fecha");
      data[nr][3] = msql.getString("seccion");
      data[nr][4] = msql.getString("descripcion");
      data[nr][5] = msql.getString("imagen");
      nr++;
  }
  
  printArray(data);
  return data;
}

String[][] getInfoTablaEventos( int numSeccion){
  
  int numRows = getNumRowsEventosSeccion( numSeccion);
  println("Num eventos:"+numRows+" de la sección:"+numSeccion);

  String[][] data = new String[numRows][6];
  
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND s.id_seccion='"+numSeccion+"'";
  println(q);
  int nr=0;
  msql.query(q);
  while (nr<numRows){
      msql.next();
      println("NR:"+nr);
      data[nr][0] = msql.getString("titulo");
      data[nr][1] = msql.getString("lugar");
      data[nr][2] = msql.getString("fecha");
      data[nr][3] = msql.getString("seccion");
      data[nr][4] = msql.getString("descripcion");
      data[nr][5] = msql.getString("imagen");
      nr++;
  }
  return data;
}
