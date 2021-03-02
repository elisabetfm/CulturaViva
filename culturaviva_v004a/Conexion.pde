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
