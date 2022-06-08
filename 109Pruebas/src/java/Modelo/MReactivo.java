/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author 52552
 */
public class MReactivo {
    
    private String pregunta;
    private int valor;
    private  int id_reactivo;
    
    public MReactivo(){
        
        pregunta = "";
        valor = 0;
        id_reactivo = 0;
        
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getValor() {
        return valor;
    }
    
    public void setValor(int valor) {
        this.valor = valor;
    }    

    public int getId_reactivo() {
        return id_reactivo;
    }

    public void setId_reactivo(int id_reactivo) {
        this.id_reactivo = id_reactivo;
    }
    
}
