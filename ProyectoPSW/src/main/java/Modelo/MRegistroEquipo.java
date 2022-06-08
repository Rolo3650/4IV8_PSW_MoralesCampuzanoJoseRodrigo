/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author 52552
 */
public class MRegistroEquipo {
    
    private int id_registro_equipo;
    private int id_detalle_equipo_etiqueta;
    private int id_persona;
    private int id_asignatura;
    private String asignatura;

    public MRegistroEquipo() {
        
        id_registro_equipo = 0;
        id_detalle_equipo_etiqueta = 0;
        id_persona = 0;
        id_asignatura = 0;
        asignatura = "";
        
    }

    /**
     * @return the id_registro_equipo
     */
    public int getId_registro_equipo() {
        return id_registro_equipo;
    }

    /**
     * @param id_registro_equipo the id_registro_equipo to set
     */
    public void setId_registro_equipo(int id_registro_equipo) {
        this.id_registro_equipo = id_registro_equipo;
    }

    /**
     * @return the id_detalle_equipo_etiqueta
     */
    public int getId_detalle_equipo_etiqueta() {
        return id_detalle_equipo_etiqueta;
    }

    /**
     * @param id_detalle_equipo_etiqueta the id_detalle_equipo_etiqueta to set
     */
    public void setId_detalle_equipo_etiqueta(int id_detalle_equipo_etiqueta) {
        this.id_detalle_equipo_etiqueta = id_detalle_equipo_etiqueta;
    }

    /**
     * @return the id_persona
     */
    public int getId_persona() {
        return id_persona;
    }

    /**
     * @param id_persona the id_persona to set
     */
    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    /**
     * @return the id_asignatura
     */
    public int getId_asignatura() {
        return id_asignatura;
    }

    /**
     * @param id_asignatura the id_asignatura to set
     */
    public void setId_asignatura(int id_asignatura) {
        this.id_asignatura = id_asignatura;
    }

    /**
     * @return the asignatura
     */
    public String getAsignatura() {
        return asignatura;
    }

    /**
     * @param asignatura the asignatura to set
     */
    public void setAsignatura(String asignatura) {
        this.asignatura = asignatura;
    }
    
}
