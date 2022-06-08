
package Controlador;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Empleados;

public class AccionesEmpleado {
    
    //CRUD
    
    //registro
    public  static int registroEmpleado(Empleados e){
        
        int estatus = 0;
        
        try {
            
            //establecer la conexion con la BD
            Connection con = Conexion.getConnection();
            String q = "INSERT INTO `empresa`.`empleados` (`nombre`, `password`, `email`, `pais`) VALUES (?, ?, ?, ?);";
            
            //preparar la sentencia
            PreparedStatement ps = con.prepareStatement(q);
            
            //objeto del empleado
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPais());
            
            //ejecutar la query
            estatus = ps.executeUpdate();
            
            System.out.println("Registro exitoso");
            con.close();
            
        } catch(Exception ex){
            
            System.out.println("Error al registrar empleado");
            System.out.println(ex.getMessage());
            
            
        }
        
        return estatus;
        
    }
    
    //consultar todos los empleasdos
    public static List<Empleados> getAllEmpleados(){
    
        //primero declarar el arralist
        List<Empleados> lista = new ArrayList<Empleados>();
        
        try {
        
            //establecer la conexion
            Connection con = Conexion.getConnection();
            
            String q = "select * from empleados";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
            
                //donde se crea el objeto de empleado
                Empleados e = new Empleados();
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setPais(rs.getString(5));
                
                lista.add(e);
                
            }
            
            System.out.println("Se consluto empleado");
            con.close(); 
        
        } catch (Exception ex){
        
            System.out.println("No se pudo consultar la base de datos");
            System.out.println(ex.getMessage());
            
        }
        
        return lista; 
        
    }
    
    //buscar empleado por id
    public static Empleados buscarEmpleadoID(int id){
    
        //primero declarar el empleado
        Empleados e = new Empleados();
        
        try {
        
            //establecer la conexion
            Connection con = Conexion.getConnection();
            
            String q = "select * from empleados where id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
            
                //donde se crea el objeto de empleado
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setPais(rs.getString(5));
                
            }
            
            System.out.println("Se consluto empleado");
            con.close(); 
        
        } catch (Exception ex){
        
            System.out.println("No se pudo consultar la base de datos");
            System.out.println(ex.getMessage());
            
        }
        
        return e; 
        
    }
    
    //buscar empleado por nombre
    public static Empleados buscarEmpleadoNombre(String id){
    
        //primero declarar el empleado
        Empleados e = new Empleados();
        
        try {
        
            //establecer la conexion
            Connection con = Conexion.getConnection();
            
            String q = "select * from empleados where nombre = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
            
                //donde se crea el objeto de empleado
                e.setId(rs.getInt(1));
                e.setNombre(rs.getString(2));
                e.setPassword(rs.getString(3));
                e.setEmail(rs.getString(4));
                e.setPais(rs.getString(5));
                
            }
            
            System.out.println("Se consluto empleado");
            con.close(); 
        
        } catch (Exception ex){
        
            System.out.println("No se pudo consultar la base de datos");
            System.out.println(ex.getMessage());
            
        }
        
        return e; 
        
    }
    
    //borrar empleado por id
    public static int eliminarEmpleadoID(int id){
    
        int estatus = 0;
        
        try {
        
            //establecer la conexion
            Connection con = Conexion.getConnection();
            
            String q = "delete from empleados where id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setInt(1, id);
            
            estatus = ps.executeUpdate();
            
            System.out.println("Se elimino empleado");
            con.close(); 
        
        } catch (Exception ex){
        
            System.out.println("No se pudo consultar la base de datos");
            System.out.println(ex.getMessage());
            
        }
        
        return estatus; 
        
    }
    
    //buscar empleado por id
    public static int actualizarEmpleadoID(Empleados e){
    
        //primero declarar el empleado
        int estatus = 0;
        
        try {
        
            //establecer la conexion
            Connection con = Conexion.getConnection();
            
            String q = "update empleados set nombre = ?, password = ?, email = ?, pais = ? where id = ?";
            
            PreparedStatement ps = con.prepareStatement(q);
            
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getPassword());
            ps.setString(3, e.getEmail());
            ps.setString(4, e.getPais());
            ps.setInt(5, e.getId());
            
            estatus = ps.executeUpdate();
            
            System.out.println("Se consluto empleado");
            con.close(); 
        
        } catch (Exception ex){
        
            System.out.println("No se pudo consultar la base de datos");
            System.out.println(ex.getMessage());
            
        }
        
        return estatus; 
        
    }
}
