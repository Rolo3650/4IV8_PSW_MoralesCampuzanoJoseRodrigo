/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Control.BaseDeDatos;
import Modelo.MEscala;
import Modelo.MExpediente;
import Modelo.MPersona;
import Modelo.MReactivo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 52552
 */
public class EscalasIniciales extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        BaseDeDatos bd = new BaseDeDatos();
        
        int pregunta_1 = Integer.parseInt(request.getParameter("pregunta1"));
        int pregunta_2 = Integer.parseInt(request.getParameter("pregunta2"));
        int pregunta_3 = Integer.parseInt(request.getParameter("pregunta3"));
        int pregunta_4 = Integer.parseInt(request.getParameter("pregunta4"));
        int pregunta_5 = Integer.parseInt(request.getParameter("pregunta5"));
        int pregunta_6 = Integer.parseInt(request.getParameter("pregunta6"));
        int pregunta_7 = Integer.parseInt(request.getParameter("pregunta7"));
        int pregunta_8 = Integer.parseInt(request.getParameter("pregunta8"));
        int pregunta_9 = Integer.parseInt(request.getParameter("pregunta9"));
        int pregunta_10 = Integer.parseInt(request.getParameter("pregunta10"));
        int pregunta_11 = Integer.parseInt(request.getParameter("pregunta11"));
        int pregunta_12 = Integer.parseInt(request.getParameter("pregunta12"));
        int pregunta_13 = Integer.parseInt(request.getParameter("pregunta13"));
        int pregunta_14 = Integer.parseInt(request.getParameter("pregunta14"));
        int pregunta_15 = Integer.parseInt(request.getParameter("pregunta15"));
        int pregunta_16 = Integer.parseInt(request.getParameter("pregunta16"));
        int pregunta_17 = Integer.parseInt(request.getParameter("pregunta17"));
        int pregunta_18 = Integer.parseInt(request.getParameter("pregunta18"));
        int pregunta_19 = Integer.parseInt(request.getParameter("pregunta19"));
        int pregunta_20 = Integer.parseInt(request.getParameter("pregunta20"));
        int pregunta_21 = Integer.parseInt(request.getParameter("pregunta21"));
        int pregunta_22 = Integer.parseInt(request.getParameter("pregunta22"));
        int pregunta_23 = Integer.parseInt(request.getParameter("pregunta23"));
        int pregunta_24 = Integer.parseInt(request.getParameter("pregunta24"));
        int pregunta_25 = Integer.parseInt(request.getParameter("pregunta25"));
        int pregunta_26 = Integer.parseInt(request.getParameter("pregunta26"));
        int pregunta_27 = Integer.parseInt(request.getParameter("pregunta27"));
        int pregunta_28 = Integer.parseInt(request.getParameter("pregunta28"));
       
        int puntaje_toma_perspectiva = pregunta_3 + pregunta_8 + pregunta_11 + pregunta_15 + pregunta_21 + pregunta_25 + pregunta_28;
        int puntaje_fantasia = pregunta_1 + pregunta_5 + pregunta_7 + pregunta_12 + pregunta_16 + pregunta_23 + pregunta_26;
        int puntaje_preocupacion_empatica = pregunta_2 + pregunta_4 + pregunta_9 + pregunta_14 + pregunta_18 + pregunta_20 + pregunta_22;
        int puntaje_malestar_personal = pregunta_6 + pregunta_10 + pregunta_13 + pregunta_17 + pregunta_19 + pregunta_24 + pregunta_27;
        
        
        HttpSession sesionusu = request.getSession();
        //si hay sesion
        String correo = (String) sesionusu.getAttribute("correo");
        String contra = (String) sesionusu.getAttribute("contra");
        
        MPersona persona = bd.buscarPersona(correo, contra);
        MExpediente expediente = bd.buscarExpediente(persona.getId_expediente());
        
        int id_escala;
        
        MEscala escala = new MEscala();
        
        escala.setId_expediente(persona.getId_expediente());
        escala.setNombre_escala("Toma de Perspectiva");
        escala.setPuntaje(puntaje_toma_perspectiva);
        escala.setTipo_escala("Inicial");
        
        bd.insertarEscala(escala);
        id_escala = bd.ultimaEscalaInsertata();
        
        MReactivo pregunta3 = new MReactivo();
        MReactivo pregunta8 = new MReactivo();
        MReactivo pregunta11 = new MReactivo();
        MReactivo pregunta15 = new MReactivo();
        MReactivo pregunta21 = new MReactivo();
        MReactivo pregunta25 = new MReactivo();
        MReactivo pregunta28 = new MReactivo();
        
        pregunta3.setValor(pregunta_3);
        pregunta8.setValor(pregunta_8);
        pregunta11.setValor(pregunta_11);
        pregunta15.setValor(pregunta_15);
        pregunta21.setValor(pregunta_21);
        pregunta25.setValor(pregunta_25);
        pregunta28.setValor(pregunta_28);
        
        bd.insertarMReactivo(pregunta3, id_escala, 3);
        bd.insertarMReactivo(pregunta8, id_escala, 8);
        bd.insertarMReactivo(pregunta11, id_escala, 11);
        bd.insertarMReactivo(pregunta15, id_escala, 15);
        bd.insertarMReactivo(pregunta21, id_escala, 21);
        bd.insertarMReactivo(pregunta25, id_escala, 25);
        bd.insertarMReactivo(pregunta28, id_escala, 28);
        
        escala.setId_expediente(persona.getId_expediente());
        escala.setNombre_escala("Fantasia");
        escala.setPuntaje(puntaje_fantasia);
        escala.setTipo_escala("Inicial");
        
        bd.insertarEscala(escala);
        id_escala = bd.ultimaEscalaInsertata();
        
        MReactivo pregunta1 = new MReactivo();
        MReactivo pregunta5 = new MReactivo();
        MReactivo pregunta7 = new MReactivo();
        MReactivo pregunta12 = new MReactivo();
        MReactivo pregunta16 = new MReactivo();
        MReactivo pregunta23 = new MReactivo();
        MReactivo pregunta26 = new MReactivo();
        
        pregunta1.setValor(pregunta_1);
        pregunta5.setValor(pregunta_5);
        pregunta7.setValor(pregunta_7);
        pregunta12.setValor(pregunta_12);
        pregunta16.setValor(pregunta_16);
        pregunta23.setValor(pregunta_23);
        pregunta26.setValor(pregunta_26);
        
        bd.insertarMReactivo(pregunta1, id_escala, 1);
        bd.insertarMReactivo(pregunta5, id_escala, 5);
        bd.insertarMReactivo(pregunta7, id_escala, 7);
        bd.insertarMReactivo(pregunta12, id_escala, 12);
        bd.insertarMReactivo(pregunta16, id_escala, 16);
        bd.insertarMReactivo(pregunta23, id_escala, 23);
        bd.insertarMReactivo(pregunta26, id_escala, 26);
        
        escala.setId_expediente(persona.getId_expediente());
        escala.setNombre_escala("Malestar Personal");
        escala.setPuntaje(puntaje_malestar_personal);
        escala.setTipo_escala("Inicial");
        
        bd.insertarEscala(escala);
        id_escala = bd.ultimaEscalaInsertata();
        
        MReactivo pregunta2 = new MReactivo();
        MReactivo pregunta4 = new MReactivo();
        MReactivo pregunta9 = new MReactivo();
        MReactivo pregunta14 = new MReactivo();
        MReactivo pregunta18 = new MReactivo();
        MReactivo pregunta20 = new MReactivo();
        MReactivo pregunta22 = new MReactivo();
        
        pregunta2.setValor(pregunta_2);
        pregunta4.setValor(pregunta_4);
        pregunta9.setValor(pregunta_9);
        pregunta14.setValor(pregunta_14);
        pregunta18.setValor(pregunta_18);
        pregunta20.setValor(pregunta_20);
        pregunta22.setValor(pregunta_22);
        
        bd.insertarMReactivo(pregunta2, id_escala, 2);
        bd.insertarMReactivo(pregunta4, id_escala, 4);
        bd.insertarMReactivo(pregunta9, id_escala, 9);
        bd.insertarMReactivo(pregunta14, id_escala, 14);
        bd.insertarMReactivo(pregunta18, id_escala, 18);
        bd.insertarMReactivo(pregunta20, id_escala, 20);
        bd.insertarMReactivo(pregunta22, id_escala, 22);
        
        escala.setId_expediente(persona.getId_expediente());
        escala.setNombre_escala("Preocupacion Empatica");
        escala.setPuntaje(puntaje_preocupacion_empatica);
        escala.setTipo_escala("Inicial");
        
        bd.insertarEscala(escala);
        id_escala = bd.ultimaEscalaInsertata();
        
        MReactivo pregunta6 = new MReactivo();
        MReactivo pregunta10 = new MReactivo();
        MReactivo pregunta13 = new MReactivo();
        MReactivo pregunta17 = new MReactivo();
        MReactivo pregunta19 = new MReactivo();
        MReactivo pregunta24 = new MReactivo();
        MReactivo pregunta27 = new MReactivo();
        
        pregunta6.setValor(pregunta_6);
        pregunta10.setValor(pregunta_10);
        pregunta13.setValor(pregunta_13);
        pregunta17.setValor(pregunta_17);
        pregunta19.setValor(pregunta_19);
        pregunta24.setValor(pregunta_24);
        pregunta27.setValor(pregunta_27);
        
        bd.insertarMReactivo(pregunta6, id_escala, 6);
        bd.insertarMReactivo(pregunta10, id_escala, 10);
        bd.insertarMReactivo(pregunta13, id_escala, 13);
        bd.insertarMReactivo(pregunta17, id_escala, 17);
        bd.insertarMReactivo(pregunta19, id_escala, 19);
        bd.insertarMReactivo(pregunta24, id_escala, 24);
        bd.insertarMReactivo(pregunta27, id_escala, 27);
        
        response.sendRedirect("registrar_Sesion.jsp");
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
