
package Control;

import Modelo.MComentario;
import Modelo.MEscala;
import Modelo.MExpediente;
import Modelo.MPersona;
import Modelo.MReactivo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
            this.password = "n0m3l0";
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
    
    public ArrayList<MEscala> buscarEscalas(int id_expediente){
        
        ArrayList<MEscala> escalas = new ArrayList<MEscala>();
        
        try{
            
            q = "select * from mescala natural join cnombre_escala natural join ctipo_escala where id_expediente = ?;";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, id_expediente);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                MEscala escala = new MEscala();
                escala.setId_expediente(rs.getInt("id_expediente"));
                escala.setNombre_escala(rs.getString("nombre"));
                escala.setTipo_escala(rs.getString("tipo"));
                escala.setPuntaje(rs.getInt("puntaje"));
                escala.setId_escala(rs.getInt("id_escala"));
                
                escalas.add(escala);
                
            }
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
        return escalas;
        
    }
    
    public ArrayList<MReactivo> buscarReactivos(int id_escala){
        
        ArrayList<MReactivo> reactivos = new ArrayList<MReactivo>();
        
        try{
            
            q = "select id_reactivo, pregunta, valor from mreactivo natural join mescala natrual natural join cpregutna where id_escala = ?;";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, id_escala);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                MReactivo reactivo = new MReactivo();
                reactivo.setId_reactivo(rs.getInt("id_reactivo"));
                reactivo.setPregunta(rs.getString("pregunta"));
                reactivo.setValor(rs.getInt("valor"));
                
                reactivos.add(reactivo);
                
            }
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
        return reactivos;
        
    }
    
    public ArrayList<MComentario> buscarComentario(int id_expediente){
        
        ArrayList<MComentario> comentarios = new ArrayList<MComentario>();
        
        try{
            
            q = "select * from mcomentarios where id_expediente = ?;";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, id_expediente);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                MComentario comentario = new MComentario();
                comentario.setComentario(rs.getString("comentario"));
                comentario.setId_expediente(rs.getInt("id_expediente"));
                
                comentarios.add(comentario);
                
                
            }
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
        return comentarios;
        
    }
    
    public void insertarMExpediente(MExpediente expediente){
    
        String nombre = expediente.getNombre();
        String apellido_paterno = expediente.getApellido_paterno();
        String apellido_materno = expediente.getApellido_materno();
        String fecha_nacimiento = expediente.getFecha_nacimiento();
        String sexo = expediente.getSexo();
        
        try{
            
            q = "INSERT INTO `mydb`.`mexpediente` (`nombre`, `apelldo_paterno`, `apellido_materno`, `fecha_de_nacimiento`, `id_sexo`, `id_niveles`) VALUES (?, ?, ?, ?, ?, ?);";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, nombre);
            ps.setString(2, apellido_paterno);
            ps.setString(3, apellido_materno);
            ps.setString(4, fecha_nacimiento);
            
            if (sexo.equals("Masculino")){
                
                ps.setInt(5, 1);
                
            } else {
            
                ps.setInt(5, 2);
            
            }
            
            ps.setInt(6, 1);
            
            
            
            ps.executeUpdate();
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
    }
    
    public void insertarMPersona(MPersona persona, MExpediente expediente){
    
        String correo = persona.getCorreo();
        String contra = persona.getContra();
        String nombre = expediente.getNombre();
        
        try{
            
            int id_expediente = 0;
            
            q = "select * from mexpediente where nombre = ?";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, nombre);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
            
                id_expediente = rs.getInt("id_expediente");
                
            }
            
            q = "INSERT INTO `mydb`.`mpersona` (`correo`, `contraseña`, `id_expediente`, `id_tipo_usuario`) VALUES (?, ?, ?, ?);";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, correo);
            ps.setString(2, contra);
            ps.setInt(3, id_expediente);
            ps.setInt(4, 1);
            
            
            
            ps.executeUpdate();
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
    
    }
    
    public boolean MPersonaExiste(String correo){
    
        boolean existe = false;
        
        try {
        
            q = "select * from mpersona";

            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                if (correo.equals(rs.getString("correo"))){
                    
                    existe = true;
                    return existe;
                    
                }
                
            }
        
        } catch (SQLException sql) {
        
            System.out.println("\nError al consultar mpersona");
            System.out.println(sql.getMessage());
        
        }
        
        return existe;
    
    }
    
    public void insertarEscala(MEscala escala){
        
        int puntaje = escala.getPuntaje();
        int id_expediente = escala.getId_expediente();
        String nombre_escala = escala.getNombre_escala();
        int id_nombre_escala = 0;
        String tipo_escala = escala.getTipo_escala();
        int id_tipo_escala = 0;
        
        try{
            
            q = "INSERT INTO `mydb`.`mescala` (`puntaje`, `id_expediente`, `id_nombre_escala`, `id_tipo_escala`) VALUES (?, ?, ?, ?);";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, puntaje);
            ps.setInt(2, id_expediente);
            
            if (nombre_escala.equals("Toma de Perspectiva")){
            
                id_nombre_escala = 1;
            
            } else if (nombre_escala.equals("Fantasia")){
            
                id_nombre_escala = 2;
            
            } else if (nombre_escala.equals("Malestar Personal")){
            
                id_nombre_escala = 3;
            
            } else if (nombre_escala.equals("Preocupacion Empatica")){
            
                id_nombre_escala = 4;
            
            } 
            
            ps.setInt(3, id_nombre_escala);
            
            if (tipo_escala.equals("Inicial")){
            
                id_tipo_escala = 1;
            
            } else if (tipo_escala.equals("Final")){
            
                id_tipo_escala = 2;
            
            }
            
            ps.setInt(4, id_tipo_escala);
            
            
            
            ps.executeUpdate();
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
    }
    
    public void insertarMReactivo(MReactivo reactivo, int id_escala,int id_pregunta){
    
        int valor = reactivo.getValor();
        
        try{
            
            q = "INSERT INTO `mydb`.`mreactivo` (`valor`, `id_escala`, `id_pregunta`) VALUES (?, ?, ?);";
            
            ps = con.prepareStatement(q);
            
            ps.setInt(1, valor);
            ps.setInt(2, id_escala);
            ps.setInt(3, id_pregunta);
            
            ps.executeUpdate();
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
    
    }
    
    public int ultimaEscalaInsertata(){
    
        int id_escala = 0;
        
        try {
        
            q = "select * from mescala;";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                id_escala = rs.getInt("id_escala");
                
            }
        
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
    
        return id_escala;
        
    }
    
    public void insertarComentario(MComentario comentario){
    
        String cadena = comentario.getComentario();
        int id_expediente = comentario.getId_expediente();
        
        try{
            
            q = "INSERT INTO `mydb`.`mcomentarios` (`comentario`, `id_expediente`) VALUES (?, ?);";
            
            ps = con.prepareStatement(q);
            
            ps.setString(1, cadena);
            ps.setInt(2, id_expediente);
            
            ps.executeUpdate();
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
    }
    
    public int getPromedioEscala(ArrayList<MEscala> escalas, String nombre_escala){
        
        int promedio = 0;
        ArrayList<MEscala> escalas_2 = new ArrayList<MEscala>();
        
        for (int i  = 0; i < escalas.size(); i++){
            
            MEscala escala = escalas.get(i);
            
            if (escala.getNombre_escala().equals(nombre_escala)){
                
                escalas_2.add(escala);
                
            }
            
        }
        
        for (int j = 0; j < escalas_2.size(); j++){
            
            MEscala escala_2 = escalas_2.get(j);
            
            promedio += escala_2.getPuntaje();
            
        }
        
        promedio = promedio / escalas_2.size();
        return promedio;
        
    }
    
    public ArrayList<MPersona> listaPersonas(){
        
            ArrayList<MPersona> personas = new ArrayList<MPersona>();
            
            try{
            
            q = "select * from mpersona where id_tipo_usuario = 1   ";
            
            ps = con.prepareStatement(q);
            
            rs = ps.executeQuery();
            
            while (rs.next()){
                
                MPersona persona = new MPersona();
                persona.setCorreo(rs.getString("correo"));
                persona.setContra(rs.getString("contraseña"));
                persona.setId_expediente(rs.getInt("id_expediente"));
                
                personas.add(persona);
                
                
            }
            
        } catch (SQLException sql) {
            
            System.out.println("\nError al consultar la base");
            System.out.println(sql.getMessage());
            
        }
        
        return personas;
        
    }
    
}
