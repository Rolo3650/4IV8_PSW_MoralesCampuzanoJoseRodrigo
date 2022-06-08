
package Modelo;


public class MPersona {
    
    private String correo;
    private String contra;
    private int id_expediente;
    private int tipo_usuario;
    
    public MPersona(){
        
        correo = "";
        contra = "";
        id_expediente = 0;
        tipo_usuario= 0;
        
        
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    } 
    
    public int getId_expediente() {
        return id_expediente;
    }

    public void setId_expediente(int id_expediente) {
        this.id_expediente = id_expediente;
    }

    public int getTipo_usuario() {
        return tipo_usuario;
    }
    
    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }
    
}
