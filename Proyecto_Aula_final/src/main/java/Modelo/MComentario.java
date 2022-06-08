    
package Modelo;

public class MComentario {
    
    private String comentario;
    private int id_expediente;
    
    public MComentario(){
        
        comentario = "";
        id_expediente = 0;
        
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public int getId_expediente() {
        return id_expediente;
    }

    public void setId_expediente(int id_expediente) {
        this.id_expediente = id_expediente;
    }

}
