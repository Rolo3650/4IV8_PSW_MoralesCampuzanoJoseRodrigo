/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author 52552
 */
public class MEquipo {
    
    private int id_etiqueta_equipo;
    private int id_laboratorio;
    private String laboratorio;
    private int id_marca;
    private String marca;
    private int serial_cpu;
    private String cpu_descripcion;
    private int id_accesorios;
    private String mouse_descripcion;
    private String teclado_descripcion;
    private int id_monitor;
    private String monitor_descripcion;
    private int id_config;
    private String config_descripcion;
    private int id_estado_equipo;
    private String estado_equipo;
    private String problema;
    
    private MEquipo(){
        
    id_etiqueta_equipo = 0;
    id_laboratorio = 0;
    laboratorio = "";
    id_marca = 0;
    marca = "";
    serial_cpu = 0;
    cpu_descripcion = "";
    id_accesorios = 0;
    mouse_descripcion = "";
    teclado_descripcion = "";
    id_monitor = 0;
    monitor_descripcion = "";
    id_config = 0;
    config_descripcion = "";
    id_estado_equipo = 0;
    estado_equipo = "";
    problema = ""; 
        
    }

    /**
     * @return the id_etiqueta_equipo
     */
    public int getId_etiqueta_equipo() {
        return id_etiqueta_equipo;
    }

    /**
     * @param id_etiqueta_equipo the id_etiqueta_equipo to set
     */
    public void setId_etiqueta_equipo(int id_etiqueta_equipo) {
        this.id_etiqueta_equipo = id_etiqueta_equipo;
    }

    /**
     * @return the id_laboratorio
     */
    public int getId_laboratorio() {
        return id_laboratorio;
    }

    /**
     * @param id_laboratorio the id_laboratorio to set
     */
    public void setId_laboratorio(int id_laboratorio) {
        this.id_laboratorio = id_laboratorio;
    }

    /**
     * @return the laboratorio
     */
    public String getLaboratorio() {
        return laboratorio;
    }

    /**
     * @param laboratorio the laboratorio to set
     */
    public void setLaboratorio(String laboratorio) {
        this.laboratorio = laboratorio;
    }

    /**
     * @return the id_marca
     */
    public int getId_marca() {
        return id_marca;
    }

    /**
     * @param id_marca the id_marca to set
     */
    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    /**
     * @return the marca
     */
    public String getMarca() {
        return marca;
    }

    /**
     * @param marca the marca to set
     */
    public void setMarca(String marca) {
        this.marca = marca;
    }

    /**
     * @return the serial_cpu
     */
    public int getSerial_cpu() {
        return serial_cpu;
    }

    /**
     * @param serial_cpu the serial_cpu to set
     */
    public void setSerial_cpu(int serial_cpu) {
        this.serial_cpu = serial_cpu;
    }

    /**
     * @return the cpu_descripcion
     */
    public String getCpu_descripcion() {
        return cpu_descripcion;
    }

    /**
     * @param cpu_descripcion the cpu_descripcion to set
     */
    public void setCpu_descripcion(String cpu_descripcion) {
        this.cpu_descripcion = cpu_descripcion;
    }

    /**
     * @return the id_accesorios
     */
    public int getId_accesorios() {
        return id_accesorios;
    }

    /**
     * @param id_accesorios the id_accesorios to set
     */
    public void setId_accesorios(int id_accesorios) {
        this.id_accesorios = id_accesorios;
    }

    /**
     * @return the mouse_descripcion
     */
    public String getMouse_descripcion() {
        return mouse_descripcion;
    }

    /**
     * @param mouse_descripcion the mouse_descripcion to set
     */
    public void setMouse_descripcion(String mouse_descripcion) {
        this.mouse_descripcion = mouse_descripcion;
    }

    /**
     * @return the teclado_descripcion
     */
    public String getTeclado_descripcion() {
        return teclado_descripcion;
    }

    /**
     * @param teclado_descripcion the teclado_descripcion to set
     */
    public void setTeclado_descripcion(String teclado_descripcion) {
        this.teclado_descripcion = teclado_descripcion;
    }

    /**
     * @return the id_monitor
     */
    public int getId_monitor() {
        return id_monitor;
    }

    /**
     * @param id_monitor the id_monitor to set
     */
    public void setId_monitor(int id_monitor) {
        this.id_monitor = id_monitor;
    }

    /**
     * @return the monitor_descripcion
     */
    public String getMonitor_descripcion() {
        return monitor_descripcion;
    }

    /**
     * @param monitor_descripcion the monitor_descripcion to set
     */
    public void setMonitor_descripcion(String monitor_descripcion) {
        this.monitor_descripcion = monitor_descripcion;
    }

    /**
     * @return the id_config
     */
    public int getId_config() {
        return id_config;
    }

    /**
     * @param id_config the id_config to set
     */
    public void setId_config(int id_config) {
        this.id_config = id_config;
    }

    /**
     * @return the config_descripcion
     */
    public String getConfig_descripcion() {
        return config_descripcion;
    }

    /**
     * @param config_descripcion the config_descripcion to set
     */
    public void setConfig_descripcion(String config_descripcion) {
        this.config_descripcion = config_descripcion;
    }

    /**
     * @return the id_estado_equipo
     */
    public int getId_estado_equipo() {
        return id_estado_equipo;
    }

    /**
     * @param id_estado_equipo the id_estado_equipo to set
     */
    public void setId_estado_equipo(int id_estado_equipo) {
        this.id_estado_equipo = id_estado_equipo;
    }

    /**
     * @return the estado_equipo
     */
    public String getEstado_equipo() {
        return estado_equipo;
    }

    /**
     * @param estado_equipo the estado_equipo to set
     */
    public void setEstado_equipo(String estado_equipo) {
        this.estado_equipo = estado_equipo;
    }

    /**
     * @return the problema
     */
    public String getProblema() {
        return problema;
    }

    /**
     * @param problema the problema to set
     */
    public void setProblema(String problema) {
        this.problema = problema;
    }
    
    
    
}
