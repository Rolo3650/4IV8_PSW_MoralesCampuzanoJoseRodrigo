/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Alumno
 */

import Control.Conexion;
import java.sql.*;

public class MPersona {
    
    private int persona_id;
    private int alumno_boleta;
    private int empleado_num;
    private String persona_nom;
    private String persona_appat;
    private String persona_apmat;
    private String persona_sexo;
    private String person_fechanacimiento;
    private String persona_user;
    private String persona_pass;
    private int grupo_id;
    private int rol_id;
    private int privilegio_id;
    
    public void MPersona(){
        
        
        
    }
    
    //aquí va el crud
    
    //aqui va un método para verificar al usuario
    
    /**
     * select * from mpersona where persona_user = ? and persona_pass = ?
     */

    public MPersona verificarUsuario(String user, String pass){
        
        //objeto de la persona
        MPersona persona = null;
        
        //objeto de conexion
        Connection con = null;
        
        //Preparacion de la sentencia
        PreparedStatement ps = null;
        
        //Consultas
        ResultSet rs = null;
        
        try {
            
            //establecemos conexion
            con = Conexion.getConnection();
            String q = "select * from mpersona"
                    + "inner join cprivilegio"
                    + " on(mpersona.privilegio_id = cprivilegio.privilegio_tipo)"
                    + " where persona_user = ? and persona_pass = ?";
            ps.setString(1, user);
            ps.setString(2, pass);
            
            //ejecutamos la busqueda;
            rs = ps.executeQuery(q);
            
            while (rs.next()){
                
                persona = new MPersona();
                cprivilegio pri = new cprivilegio();
                persona.setPersona_id(rs.getInt("persona_id"));
                persona.setAlumno_boleta(rs.getInt("alumno_boleta"));
                persona.setEmpleado_num(rs.getInt("empleado_num"));
                persona.setPersona_nom(rs.getString("persona_nombre"));
                persona.setPersona_appat(rs.getString("persona_appat"));
                persona.setPersona_apmat(rs.getString("persona_apmat"));
                persona.setPersona_sexo(rs.getString("persona_sexo"));
                persona.setPerson_fechanacimiento(rs.getString("persona_fechanacimiento"));
                persona.setPersona_user(rs.getString("persona_user"));
                persona.setPersona_pass(rs.getString("persona_pass"));
                persona.setGrupo_id(rs.getInt("grupo_id"));
                persona.setRol_id(rs.getInt("rol_id"));
                persona.setPrivilegio_id(rs.getInt("privilegio_id"));
                pri.setPrivilegio_tipo(rs.getString("privilegio_tipo"));
                break;
                
            }
            
        } catch (SQLException sq){
            
            System.out.println("Error al conectar con la BD");
            System.out.println(sq.getMessage());
            
        } finally{
            
            try {
                
                rs.close();
                ps.close();
                con.close();
                
            } catch (Exception ex) {
                
                System.out.println("No se encontro la clase");
                System.out.println(ex.getMessage());
                
            }
            
        }
        
        return persona;
        
    }
    
    /**
     * @return the persona_id
     */
    public int getPersona_id() {
        return persona_id;
    }

    /**
     * @param persona_id the persona_id to set
     */
    public void setPersona_id(int persona_id) {
        this.persona_id = persona_id;
    }

    /**
     * @return the alumno_boleta
     */
    public int getAlumno_boleta() {
        return alumno_boleta;
    }

    /**
     * @param alumno_boleta the alumno_boleta to set
     */
    public void setAlumno_boleta(int alumno_boleta) {
        this.alumno_boleta = alumno_boleta;
    }

    /**
     * @return the empleado_num
     */
    public int getEmpleado_num() {
        return empleado_num;
    }

    /**
     * @param empleado_num the empleado_num to set
     */
    public void setEmpleado_num(int empleado_num) {
        this.empleado_num = empleado_num;
    }

    /**
     * @return the persona_nom
     */
    public String getPersona_nom() {
        return persona_nom;
    }

    /**
     * @param persona_nom the persona_nom to set
     */
    public void setPersona_nom(String persona_nom) {
        this.persona_nom = persona_nom;
    }

    /**
     * @return the persona_appat
     */
    public String getPersona_appat() {
        return persona_appat;
    }

    /**
     * @param persona_appat the persona_appat to set
     */
    public void setPersona_appat(String persona_appat) {
        this.persona_appat = persona_appat;
    }

    /**
     * @return the persona_apmat
     */
    public String getPersona_apmat() {
        return persona_apmat;
    }

    /**
     * @param persona_apmat the persona_apmat to set
     */
    public void setPersona_apmat(String persona_apmat) {
        this.persona_apmat = persona_apmat;
    }

    /**
     * @return the persona_sexo
     */
    public String getPersona_sexo() {
        return persona_sexo;
    }

    /**
     * @param persona_sexo the persona_sexo to set
     */
    public void setPersona_sexo(String persona_sexo) {
        this.persona_sexo = persona_sexo;
    }

    /**
     * @return the person_fechanacimiento
     */
    public String getPerson_fechanacimiento() {
        return person_fechanacimiento;
    }

    /**
     * @param person_fechanacimiento the person_fechanacimiento to set
     */
    public void setPerson_fechanacimiento(String person_fechanacimiento) {
        this.person_fechanacimiento = person_fechanacimiento;
    }

    /**
     * @return the persona_user
     */
    public String getPersona_user() {
        return persona_user;
    }

    /**
     * @param persona_user the persona_user to set
     */
    public void setPersona_user(String persona_user) {
        this.persona_user = persona_user;
    }

    /**
     * @return the persona_pass
     */
    public String getPersona_pass() {
        return persona_pass;
    }

    /**
     * @param persona_pass the persona_pass to set
     */
    public void setPersona_pass(String persona_pass) {
        this.persona_pass = persona_pass;
    }

    /**
     * @return the grupo_id
     */
    public int getGrupo_id() {
        return grupo_id;
    }

    /**
     * @param grupo_id the grupo_id to set
     */
    public void setGrupo_id(int grupo_id) {
        this.grupo_id = grupo_id;
    }

    /**
     * @return the rol_id
     */
    public int getRol_id() {
        return rol_id;
    }

    /**
     * @param rol_id the rol_id to set
     */
    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    /**
     * @return the privilegio_id
     */
    public int getPrivilegio_id() {
        return privilegio_id;
    }

    /**
     * @param privilegio_id the privilegio_id to set
     */
    public void setPrivilegio_id(int privilegio_id) {
        this.privilegio_id = privilegio_id;
    }
     
}
