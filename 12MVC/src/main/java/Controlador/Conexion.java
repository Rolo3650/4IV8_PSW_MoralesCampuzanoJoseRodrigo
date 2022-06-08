
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    
    public static Connection getConnection(){
        String url, username, password;
        
        url = "jdbc:mysql://localhost/empresa";
        username = "root";
        password = "n0m3l0"; 
        
        Connection con = null;
        
        try{
        
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
            System.out.println("Se conecto a la BD");
            
        } catch(Exception e){
        
            System.out.println("Error al conectar con la BD");
            System.out.println(e.getMessage());
            
        }
        
        return con;
    
    }
    
}
