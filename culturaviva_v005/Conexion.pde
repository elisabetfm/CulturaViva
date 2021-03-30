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

//Inserta los datos en la tabla Eventos
void insertInfoTablaEventos(String titulo, String descripcion, String fecha, String seccion, String lugar, String usuario){
  String q = "INSERT INTO eventos (nombre_evento, descripcion_evento, fecha, Seccion_id_seccion, Lugar_id_lugar, Usuario_id_usuario) VALUES ('"+titulo+"','"+descripcion+"', '"+fecha+"', '"+seccion+"', '"+lugar+"', '"+usuario+"')";
  println(q);
  msql.query(q);
}

//Reset formulari


// Obtener el número de filas de la tabla
int getNumRowsTaula(String nomTaula){
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

int getNumRowsQuery(String query){
  msql.query(query );
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

int getNumRowsEventosLugar(int numLugar){
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE Lugar_id_lugar='"+ numLugar+"'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

int getNumRowsEventosDescripcion(String descripcion){
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE descripcion_evento LIKE '%"+ descripcion +"%'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

int getNumRowsEventosFecha(int fecha){
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE fecha = '"+ fecha +"'" );
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

void deleteInfoTablaEventos(String id){
  String q = ("DELETE FROM eventos WHERE id_Eventos='"+id+"' ");
  println(q);
  msql.query(q);
}

void updateInfoTablaEventos(String id, String num, String nombre){
  String q = ("UPDATE eventos SET numero='"+num+"', nom='"+nombre+"' WHERE numero='"+id+"'");
  println(q);
  msql.query(q);
}

String[][] getInfoEventosRecientes(int idCategoria){
  
  int numRows = getNumRowsTaula("eventos");

  print(numRows);
  
  String[][] data = new String[numRows][6];
  
  int nr=0;
  msql.query( "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar ORDER BY fecha DESC;" );
  while (msql.next()){
      data[nr][0] = msql.getString("titulo");
      data[nr][1] = msql.getString("lugar");
      data[nr][2] = msql.getString("fecha");
      data[nr][3] = msql.getString("seccion");
      data[nr][4] = msql.getString("descripcion");
      data[nr][5] = msql.getString("imagen");
      nr++;
  }
  
 // printArray(data);
  return data;
}

String[][] getInfoEventosAleatorios(int idCategoria){
  
  int numRows = getNumRowsTaula("eventos");

  print(numRows);
  
  String[][] data = new String[numRows][6];
  
  int nr=0;
  msql.query( "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar ORDER BY RAND();" );
  while (msql.next()){
      data[nr][0] = msql.getString("titulo");
      data[nr][1] = msql.getString("lugar");
      data[nr][2] = msql.getString("fecha");
      data[nr][3] = msql.getString("seccion");
      data[nr][4] = msql.getString("descripcion");
      data[nr][5] = msql.getString("imagen");
      nr++;
  }
  
  //printArray(data);
  return data;
}

String[][] getInfoUsuarioContrasena(){
   int numRows = getNumRowsTaula("usuario");
  
  String[][] data = new String[numRows][3];
  int nr=0;
  msql.query( "SELECT `nick_usuario` as usuario, `contrasena_usuario` as contrasena, `id_Usuario` as idUsuario FROM `usuario` u;" );
  while (msql.next()){
      data[nr][0] = msql.getString("usuario");
      data[nr][1] = msql.getString("contrasena");
      data[nr][2] = msql.getString("idUsuario");
      nr++;
  }
  
  //printArray(data);
  return data;
}

String[] getInfoEvento(String idEvento){
  
  String[] data = new String[6];
  
  String q = "SELECT id_Eventos, nombre_evento, descripcion_evento, Lugar_id_lugar, Seccion_id_seccion, fecha FROM `eventos`  WHERE id_Eventos='"+idEvento+"'";
  int nr=0;
  msql.query(q);
      msql.next();
      println("NR:"+nr);
      data[0] = msql.getString("id_Eventos");
      data[1] = msql.getString("nombre_evento");
      data[2] = msql.getString("descripcion_evento");
      data[3] = msql.getString("Lugar_id_lugar");
      data[4] = msql.getString("Seccion_id_seccion");
      data[5] = msql.getString("fecha");

  return data;
}

String[][] getInfoTablaEventos(int numSeccion){
  
  int numRows = getNumRowsEventosSeccion( numSeccion);
  String[][] data = new String[numRows][6];
  
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND s.id_seccion='"+numSeccion+"'";
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


String[][] getInfoTablaEventosLugar(int numLugar){
  
  int numRows = getNumRowsEventosLugar(numLugar);
  String[][] data = new String[numRows][6];
  
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND l.id_lugar='"+numLugar+"'";
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

String[][] getInfoTablaEventosDescripcion(String descripcion){
  
  int numRows = getNumRowsEventosDescripcion(descripcion);
  String[][] data = new String[numRows][6];
  
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND e.descripcion_evento LIKE '%"+descripcion+"%'";
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

String[][] getInfoTablaEventosBuscar(String escrito){
  
  String query = "SELECT COUNT(*) AS n FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND UPPER(e.nombre_evento) LIKE '%"+escrito+"%'";
  int numRows = getNumRowsQuery(query);
  String[][] data = new String[numRows][6];
  
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND UPPER(e.nombre_evento) LIKE '%"+escrito+"%'";
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

String[][] getInfoTablaEventosCalendario(String fecha){
  String fecha2 = formataFecha2(fecha);
  println(fecha2);
  String query = "SELECT COUNT(*) AS n FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND e.fecha= '"+fecha2+"'";
  int numRows = getNumRowsQuery(query);
  String[][] data = new String[numRows][6];
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND e.fecha='"+fecha2+"'";
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
