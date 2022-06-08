/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Control.BaseDeDatos;
import Modelo.MExpediente;
import Modelo.MPersona;
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
public class RegistrarNuevoUsuario extends HttpServlet {

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
        
        MExpediente expediente = new MExpediente();
        MPersona persona = new MPersona();
        
        String nombre = request.getParameter("nombre");
        String appat = request.getParameter("appat");
        String apmat = request.getParameter("apmat");
        String correo = request.getParameter("correo");
        String contra = request.getParameter("contra1");
        String fecha = request.getParameter("fecha");
        String sexo = request.getParameter("sexo");
        
        expediente.setNombre(nombre);
        expediente.setApellido_paterno(appat);
        expediente.setApellido_materno(apmat);
        expediente.setSexo(sexo);
        expediente.setFecha_nacimiento(fecha);
        
        persona.setCorreo(correo);
        persona.setContra(contra);
        
        boolean existe = bd.MPersonaExiste(persona.getCorreo());
        
        if (existe == true){
            
            response.sendRedirect("index.html");
            
        } else {
            
            bd.insertarMExpediente(expediente);
            bd.insertarMPersona(persona, expediente);
            
            persona = bd.buscarPersona(correo, contra);
            if (persona.getCorreo()!= ""){
                
                HttpSession sesionusu = request.getSession(true);
                sesionusu.setAttribute("usuario", persona.getCorreo());
                
                HttpSession sesionparametro = request.getSession();
                sesionparametro.setAttribute("correo", persona.getCorreo());
                sesionparametro.setAttribute("contra", persona.getContra());
                
                response.sendRedirect("cuestionario.jsp");
                
            }
            
        }
        
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
