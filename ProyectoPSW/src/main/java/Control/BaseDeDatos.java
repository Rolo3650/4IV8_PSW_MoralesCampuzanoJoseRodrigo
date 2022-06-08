/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;

import Modelo.MPersona;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 52552
 */
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
         
            this.url = "jdbc:mysql://localhost/maquinasbatiz";
            this.user = "root";
            this.password = "Roja161203.";
            this.driver = "com.mysql.jdbc.Driver";
            
            Class.forName(driver);
            con = DriverManager.getConnection(url,user,password);
            
        } catch (Exception ex) {
            
            System.out.println("\nError al conectar con la clase Base De Datos");
            System.out.println(ex.getMessage());
            
        }
        
    }
    
        public MPersona buscarPersona(String usuario, String contra){
        
            MPersona persona = new MPersona();
            
        try {
            
            q = "select * from mpersona natural join cgrupo natural join crol natural join cprivilegio where persona_user = ? and persona_pass = ?";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, usuario);
            ps.setString(2, contra);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                persona.setId_persona(rs.getInt("persona_id"));
                persona.setNombre(rs.getString("persona_nombre"));
                persona.setAppat(rs.getString("persona_appat"));
                persona.setApmat(rs.getString("persona_apmat"));
                persona.setSexo(rs.getString("persona_sexo"));
                persona.setFecha(rs.getString("persona_fechaNacimiento"));
                persona.setUsuario(rs.getString("persona_user"));
                persona.setContra(rs.getString("persona_pass"));
                persona.setId_grupo(rs.getInt("grupo_id"));
                persona.setId_rol(rs.getInt("rol_id"));
                persona.setId_privilegio(rs.getInt("privilegio_id"));
                if (persona.getId_rol() == 1){
                    
                    persona.setBoleta(rs.getInt("alumno boleta"));
                    
                } else{
                    
                    persona.setBoleta(rs.getInt("empleado_num"));
                    
                }
                persona.setGrupo(rs.getString("grupo_tipo"));
                persona.setRol(rs.getString("rol_tipo"));
                persona.setPrivilegio(rs.getString("privilegio_tipo"));
                
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
        
        public MPersona buscarPersonaID(int id_persona){
        
            MPersona persona = new MPersona();
            
        try {
            
            q = "select * from mpersona natural join cgrupo natural join crol natural join cprivilegio where persona_id = ?";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, id_persona);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                persona.setId_persona(rs.getInt("persona_id"));
                persona.setNombre(rs.getString("persona_nombre"));
                persona.setAppat(rs.getString("persona_appat"));
                persona.setApmat(rs.getString("persona_apmat"));
                persona.setSexo(rs.getString("persona_sexo"));
                persona.setFecha(rs.getString("persona_fechaNacimiento"));
                persona.setUsuario(rs.getString("persona_user"));
                persona.setContra(rs.getString("persona_pass"));
                persona.setId_grupo(rs.getInt("grupo_id"));
                persona.setId_rol(rs.getInt("rol_id"));
                persona.setId_privilegio(rs.getInt("privilegio_id"));
                if (persona.getId_rol() == 1){
                    
                    persona.setBoleta(rs.getInt("alumno boleta"));
                    
                } else{
                    
                    persona.setBoleta(rs.getInt("empleado_num"));
                    
                }
                persona.setGrupo(rs.getString("grupo_tipo"));
                persona.setRol(rs.getString("rol_tipo"));
                persona.setPrivilegio(rs.getString("privilegio_tipo"));
                
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
    
}
