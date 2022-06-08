/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author 52552
 */
public class MReporteEquipo {
    
    private int id_reporte;
    private int id_equipo_reportado;
    private int id_equipo;
    private int id_persona_reporte;
    private int id_persona;
    private int id_prioridad;
    private String prioridad;
    private int id_estado_reporte;
    private String estado_reporte;
    private int id_cantidad_reporte;
    private int cantidad_reporte;
    private int id_asignatura;
    private String asignatura;
    private String fecha;
    private String hora;
    private String descripcion;

    public MReporteEquipo() {
        
    id_reporte = 0;
    id_equipo_reportado = 0;
    id_equipo = 0;
    id_persona_reporte = 0;
    id_persona = 0;
    id_prioridad  = 0;
    prioridad = "";
    id_estado_reporte = 0;
    estado_reporte = "";
    id_cantidad_reporte = 0;
    cantidad_reporte = 0;
    id_asignatura = 0;
    asignatura = "";
    fecha  = "";
    hora = "";
    descripcion = "";    
        
    }

    /**
     * @return the id_reporte
     */
    public int getId_reporte() {
        return id_reporte;
    }

    /**
     * @param id_reporte the id_reporte to set
     */
    public void setId_reporte(int id_reporte) {
        this.id_reporte = id_reporte;
    }

    /**
     * @return the id_equipo_reportado
     */
    public int getId_equipo_reportado() {
        return id_equipo_reportado;
    }

    /**
     * @param id_equipo_reportado the id_equipo_reportado to set
     */
    public void setId_equipo_reportado(int id_equipo_reportado) {
        this.id_equipo_reportado = id_equipo_reportado;
    }

    /**
     * @return the id_equipo
     */
    public int getId_equipo() {
        return id_equipo;
    }

    /**
     * @param id_equipo the id_equipo to set
     */
    public void setId_equipo(int id_equipo) {
        this.id_equipo = id_equipo;
    }

    /**
     * @return the id_persona_reporte
     */
    public int getId_persona_reporte() {
        return id_persona_reporte;
    }

    /**
     * @param id_persona_reporte the id_persona_reporte to set
     */
    public void setId_persona_reporte(int id_persona_reporte) {
        this.id_persona_reporte = id_persona_reporte;
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
     * @return the id_prioridad
     */
    public int getId_prioridad() {
        return id_prioridad;
    }

    /**
     * @param id_prioridad the id_prioridad to set
     */
    public void setId_prioridad(int id_prioridad) {
        this.id_prioridad = id_prioridad;
    }

    /**
     * @return the prioridad
     */
    public String getPrioridad() {
        return prioridad;
    }

    /**
     * @param prioridad the prioridad to set
     */
    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    /**
     * @return the id_estado_reporte
     */
    public int getId_estado_reporte() {
        return id_estado_reporte;
    }

    /**
     * @param id_estado_reporte the id_estado_reporte to set
     */
    public void setId_estado_reporte(int id_estado_reporte) {
        this.id_estado_reporte = id_estado_reporte;
    }

    /**
     * @return the estado_reporte
     */
    public String getEstado_reporte() {
        return estado_reporte;
    }

    /**
     * @param estado_reporte the estado_reporte to set
     */
    public void setEstado_reporte(String estado_reporte) {
        this.estado_reporte = estado_reporte;
    }

    /**
     * @return the id_cantidad_reporte
     */
    public int getId_cantidad_reporte() {
        return id_cantidad_reporte;
    }

    /**
     * @param id_cantidad_reporte the id_cantidad_reporte to set
     */
    public void setId_cantidad_reporte(int id_cantidad_reporte) {
        this.id_cantidad_reporte = id_cantidad_reporte;
    }

    /**
     * @return the cantidad_reporte
     */
    public int getCantidad_reporte() {
        return cantidad_reporte;
    }

    /**
     * @param cantidad_reporte the cantidad_reporte to set
     */
    public void setCantidad_reporte(int cantidad_reporte) {
        this.cantidad_reporte = cantidad_reporte;
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

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the hora
     */
    public String getHora() {
        return hora;
    }

    /**
     * @param hora the hora to set
     */
    public void setHora(String hora) {
        this.hora = hora;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
