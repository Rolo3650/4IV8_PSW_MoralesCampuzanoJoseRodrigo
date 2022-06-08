
package Control;

import Modelo.MExpediente;
import Modelo.MPersona;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDeDatos {

    String url;
    String user;
    String password;
    String driver;
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    private String q;
    
    
    public BaseDeDatos(){

        try {
         
            this.url = "jdbc:mysql://localhost/mydb";
            this.user = "root";
            this.password = "Roja161203.";
            this.driver = "com.mysql.jdbc.Driver";
            
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,password);
            
        } catch (Exception ex) {
            
            System.out.println("\nError al conectar con la clase");
            System.out.println(ex.getMessage());
            
        }
        
    }
    
    public MPersona buscarPersona(String correo,String contra){
        
        MPersona persona = new MPersona();
        
        try {
            
            q = "select * from mpersona where correo = ? and contraseña = ? ";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, correo);
            ps.setString(2, contra);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                persona.setCorreo(rs.getString("correo"));
                persona.setContra(rs.getString("contraseña"));
                persona.setId_expediente(rs.getInt("id_expediente"));
                persona.setTipo_usuario(rs.getInt("id_tipo_usuario"));
                
            }
            
            q = "";
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al conectar con la base de datos");
            System.out.println(sql.getMessage());
            
        } catch (Exception ex) {
            
            System.out.println("\nError en la clase");
            System.out.println(ex.getMessage());
            
        }
        
        return persona;
        
    }
    
    public MExpediente buscarExpediente(int id_expediente){
        
        MExpediente expediente = new MExpediente();
        
        try {
            
            q = "select * from mexpediente natural join csexo natural join mniveles where id_expediente = ? ";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, id_expediente);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                expediente.setId_expediente(rs.getInt("id_expediente"));
                expediente.setNombre(rs.getString("nombre"));
                expediente.setApellido_paterno(rs.getString("apelldo_paterno"));
                expediente.setApellido_materno(rs.getString("apellido_materno"));
                expediente.setFecha_nacimiento(rs.getString("fecha_de_nacimiento"));
                expediente.setSexo(rs.getString("sexo"));
                expediente.setNiveles(rs.getInt("niveles_completados"));
                
                
            }
            
            q = "";
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al conectar con la base de datos");
            System.out.println(sql.getMessage());
            
        } catch (Exception ex) {
            
            System.out.println("\nError en la clase");
            System.out.println(ex.getMessage());
            
        }
        
        return expediente;
        
    }
    
    
    
}
