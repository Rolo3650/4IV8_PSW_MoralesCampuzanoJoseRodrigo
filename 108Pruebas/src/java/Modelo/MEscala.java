
package Modelo;

public class MEscala {
    
    private int puntaje;
    private int id_expediente;
    private String nombre_escala;
    private String tipo_escala;
    
    public MEscala(){
        
        puntaje = 0;
        id_expediente = 0;
        nombre_escala = "";
        tipo_escala = "";
        
    }

    public int getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(int puntaje) {
        this.puntaje = puntaje;
    }

    public int getId_expediente() {
        return id_expediente;
    }

    public void setId_expediente(int id_expediente) {
        this.id_expediente = id_expediente;
    }

    public String getNombre_escala() {
        return nombre_escala;
    }

    public void setNombre_escala(String nombre_escala) {
        this.nombre_escala = nombre_escala;
    }

    public String getTipo_escala() {
        return tipo_escala;
    }

    public void setTipo_escala(String tipo_escala) {
        this.tipo_escala = tipo_escala;
    }
       
}
