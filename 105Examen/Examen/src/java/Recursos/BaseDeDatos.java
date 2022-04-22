
package Recursos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseDeDatos {

    Connection con = null;
    Statement set = null;
    ResultSet re= null;
    
    String username, url, password, driver;
    
    public BaseDeDatos(){
    
        this.url = "jdbc:mysql://localhost/mydb";
        this.username = "root";
        this.password = "Roja161203.";
        this.driver = "com.mysql.jdbc.Driver";

        try {

            Class.forName(driver);
            con = DriverManager.getConnection(url,username,password);

        } catch (Exception e){

            System.out.println("Error al conectar");
            System.out.println(e.getMessage());

        }
    
    }
    
    public int BuscarEntero(String q, String nombre_entero){
        
        try {
        
            set = con.createStatement();
            re = set.executeQuery(q);
            
            while (re.next()){
            
                return re.getInt(nombre_entero);
            
            }
            
            
        
        } catch (SQLException e){
            
            System.out.println("Error al consultar la base");
            System.out.println(e.getMessage());
            
        }
        return 0;
        
        
    }
    
    public String BuscarCadena(String q, String nombre_cadena){
        
        try {
        
            set = con.createStatement();
            re = set.executeQuery(q);
            
            while (re.next()){
            
                return re.getString(nombre_cadena);
            
            }
            
            
        
        } catch (SQLException e){
            
            System.out.println("Error al consultar la base");
            System.out.println(e.getMessage());
            
        }
        return "";
        
        
    }
    
    public String InsertarCadenaYObtenerID(String q, String k, String nombre_id){
        
        try {
        
            set = con.createStatement();
            set.executeUpdate(q);
            
            re = set.executeQuery(k);
            
            while (re.next()){
            
                return re.getString(nombre_id);
            
            }
            
            
        
        } catch (SQLException e){
            
            System.out.println("Error al consultar la base");
            System.out.println(e.getMessage());
            
        }
        return "";
        
        
    }
    
    public int InsertarEnteroYObtenerID(String q, String k, String nombre_id){
        
        try {
        
            int id = 0;
            set = con.createStatement();
            set.executeUpdate(q);
            
            re = set.executeQuery(k);
            
            while (re.next()){
            
                 id = re.getInt(nombre_id);
            
            }
            
            return id;
        
        } catch (SQLException e){
            
            System.out.println("Error al consultar la base");
            System.out.println(e.getMessage());
            
        }
        return 0;
        
        
    }
                        
}
