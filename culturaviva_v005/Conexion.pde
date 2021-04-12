//Libreria de MySQL y Processing
import de.bezier.data.sql.*;

//Objeto de connexión a la BBDD
MySQL msql;

void conexion() {       //Parámetros de la connexión
  String user = "root";
  String pass = "";
  String database = "culturaviva";

  //Establecer la connexión
  msql = new MySQL (this, "localhost", database, user, pass);

  //Si la connexión se ha establecido
  if (msql.connect()) {
    //La conexión ha funcionado
    println("Connected to database");
  } else {
    //La connexión a fallado
    println ("Connection failed");
  }
}

//Inserta los datos en la tabla Eventos
void insertInfoTablaEventos(String titulo, String descripcion, String fecha, String seccion, String lugar, String usuario, String foto) {
  String q = "INSERT INTO eventos (nombre_evento, descripcion_evento, fecha, Seccion_id_seccion, Lugar_id_lugar, Usuario_id_usuario, imagen) VALUES ('"+titulo+"','"+descripcion+"', '"+fecha+"', '"+seccion+"', '"+lugar+"', '"+usuario+"', '"+foto+"')";
  println(q);
  msql.query(q);
}

// Obtener el número de filas de la tabla
int getNumRowsTaula(String nomTaula) {
  msql.query( "SELECT COUNT(*) AS n FROM %s", nomTaula );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtener el número de filas de las query
int getNumRowsQuery(String query) {
  msql.query(query );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtener el número de filas de las secciones
int getNumRowsEventosSeccion(int numSeccion) {
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE Seccion_id_seccion='"+ numSeccion+"'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtener el número de filas del lugar
int getNumRowsEventosLugar(int numLugar) {
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE Lugar_id_lugar='"+ numLugar+"'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtener el número de filas de la descripción
int getNumRowsEventosDescripcion(String descripcion) {
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE descripcion_evento LIKE '%"+ descripcion +"%'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtener el número de filas de la fecha
int getNumRowsEventosFecha(int fecha) {
  msql.query( "SELECT COUNT(*) AS n FROM eventos WHERE fecha = '"+ fecha +"'" );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtener la información de la tabla Lugar
String[][] getInfoTablaLugar() {

  int numRows = getNumRowsTaula("lugar");

  String[][] data = new String[numRows][2];

  int nr=0;
  msql.query( "SELECT * FROM lugar ORDER BY nombre_lugar ASC" );
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("id_lugar"));
    data[nr][1] = msql.getString("nombre_lugar");
    nr++;
  }
  return data;
}

// Obtener la información de la tabla Sección
String[][] getInfoTablaSeccion() {

  int numRows = getNumRowsTaula("seccion");
  println("Num seccionws: "+numRows);

  String[][] data = new String[numRows][2];

  int nr=0;
  msql.query( "SELECT * FROM seccion ORDER BY nombre_seccion ASC" );
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("id_seccion"));
    data[nr][1] = msql.getString("nombre_seccion");
    nr++;
  }
  return data;
}

// Obtener la información de la tabla Eventos
String[][] getInfoTablaEventos() {

  int numRows = getNumRowsTaula("eventos");

  print(numRows);

  String[][] data = new String[numRows][6];

  int nr=0;
  msql.query( "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar;" );
  while (msql.next()) {
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

// Obtener la información de la columna "titulo_Eventos" de la tabla eventos
String[][] getInfoTituloEventos() {

  int numRows = getNumRowsTaula("eventos");

  print(numRows);

  String[][] data = new String[numRows][2];

  int nr=0;
  msql.query( "SELECT id_Eventos, nombre_evento FROM eventos" );
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("id_Eventos"));
    data[nr][1] = msql.getString("nombre_evento");
    nr++;
  }
  return data;
}

// Obtener la información de la columna "Sección" de la tabla eventos
String[][] getInfoFiltroEventos(String idTipo) {

  int numRows = getNumRowsQuery("SELECT COUNT(*) AS n FROM eventos WHERE Seccion_id_seccion='"+idTipo+"'");

  print(numRows);

  String[][] data = new String[numRows][2];

  int nr=0;
  msql.query( "SELECT id_Eventos, nombre_evento FROM eventos WHERE Seccion_id_seccion='"+idTipo+"'" );
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("id_Eventos"));
    data[nr][1] = msql.getString("nombre_evento");
    nr++;
  }
  return data;
}

// Obtener la información de la tabla eventos más recientes
String[][] getInfoEventosRecientes(int idCategoria) {

  int numRows = getNumRowsTaula("eventos");

  print(numRows);

  String[][] data = new String[numRows][6];

  int nr=0;
  msql.query( "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar ORDER BY fecha DESC;" );
  while (msql.next()) {
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

// Obtener la información la tabla eventos de manera aleatoria
String[][] getInfoEventosAleatorios(int idCategoria) {

  int numRows = getNumRowsTaula("eventos");

  print(numRows);

  String[][] data = new String[numRows][6];

  int nr=0;
  msql.query( "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar ORDER BY RAND();" );
  while (msql.next()) {
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

// Obtener la información de la columna "nick_usuario" y "constrasena_usuario" de la tabla eventos
String[][] getInfoUsuarioContrasena() {
  int numRows = getNumRowsTaula("usuario");

  String[][] data = new String[numRows][3];
  int nr=0;
  msql.query( "SELECT `nick_usuario` as usuario, `contrasena_usuario` as contrasena, `id_Usuario` as idUsuario FROM `usuario` u;" );
  while (msql.next()) {
    data[nr][0] = msql.getString("usuario");
    data[nr][1] = msql.getString("contrasena");
    data[nr][2] = msql.getString("idUsuario");
    nr++;
  }
  return data;
}

// Obtener la información de la tabla eventos dependiendo del evento
String[] getInfoEvento(String idEvento) {

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

// Obtener la información de la tabla eventos dependiendo de la sección
String[][] getInfoTablaEventos(int numSeccion) {

  int numRows = getNumRowsEventosSeccion( numSeccion);
  String[][] data = new String[numRows][6];

  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND s.id_seccion='"+numSeccion+"'";
  int nr=0;
  msql.query(q);
  while (nr<numRows) {
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

// Obtener la información de la tabla eventos dependiendo del lugar
String[][] getInfoTablaEventosLugar(int numLugar) {

  int numRows = getNumRowsEventosLugar(numLugar);
  String[][] data = new String[numRows][6];

  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND l.id_lugar='"+numLugar+"'";
  int nr=0;
  msql.query(q);
  while (nr<numRows) {
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

// Obtener la información de la tabla eventos dependiendo de la descripción
String[][] getInfoTablaEventosDescripcion(String descripcion) {

  int numRows = getNumRowsEventosDescripcion(descripcion);
  String[][] data = new String[numRows][6];

  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND e.descripcion_evento LIKE '%"+descripcion+"%'";
  int nr=0;
  msql.query(q);
  while (nr<numRows) {
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

// Obtener la información de la tabla eventos lo que está escrito en el campo de texto
String[][] getInfoTablaEventosBuscar(String escrito) {

  String query = "SELECT COUNT(*) AS n FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND UPPER(e.nombre_evento) LIKE '%"+escrito+"%'";
  int numRows = getNumRowsQuery(query);
  String[][] data = new String[numRows][6];

  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND UPPER(e.nombre_evento) LIKE '%"+escrito+"%'";
  println(q);
  int nr=0;
  msql.query(q);
  while (nr<numRows) {
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

// Obtener la información de la tabla eventos dependiendo de la fecha
String[][] getInfoTablaEventosCalendario(String fecha) {
  String fecha2 = formataFecha2(fecha);
  println(fecha2);
  String query = "SELECT COUNT(*) AS n FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND e.fecha= '"+fecha2+"'";
  int numRows = getNumRowsQuery(query);
  String[][] data = new String[numRows][6];
  String q = "SELECT e.`nombre_evento` as titulo, l.nombre_lugar as lugar, e.`fecha` as fecha, s.nombre_seccion as seccion, e.`descripcion_evento` as descripcion, e.`imagen` as imagen FROM `eventos` e, lugar l, seccion s WHERE e.`Seccion_id_seccion`=s.id_seccion AND e.`Lugar_id_lugar`=l.id_lugar AND e.fecha='"+fecha2+"'";
  println(q);
  int nr=0;
  msql.query(q);
  while (nr<numRows) {
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

// Borrar la información de la tabla eventos
void deleteInfoTablaEventos(String id) {
  String q = ("DELETE FROM eventos WHERE id_Eventos='"+id+"' ");
  println(q);
  msql.query(q);
}

// Actualizar la información de la tabla eventos
void updateInfoTablaEventos(String id, String titulo, String descripcion, String lugar, String seccion, String fecha, String foto) {
  String q = ("UPDATE eventos SET nombre_evento='"+titulo+"', descripcion_evento='"+descripcion+"', Lugar_id_lugar='"+lugar+"', Seccion_id_seccion='"+seccion+"', fecha= '"+fecha+"', imagen = '"+foto+"' WHERE id_Eventos='"+id+"'");
  println(q);
  msql.query(q);
}
