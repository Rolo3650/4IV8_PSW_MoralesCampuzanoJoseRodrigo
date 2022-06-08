/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Control.BaseDeDatos;
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
public class IniciarSesion extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
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
        
        String usuario = request.getParameter("Usuario");
        String contra = request.getParameter("Contra");
        
        MPersona persona = bd.buscarPersona(usuario, contra);
        
        if (persona.getId_privilegio() == 0){
            
            response.sendRedirect("usuario_no_encontrado.jsp");
            
        } else if (persona.getId_privilegio() == 1 || persona.getId_privilegio() == 2){
               
            HttpSession sesionusu = request.getSession(true);
            sesionusu.setAttribute("usuario", persona.getUsuario());

            HttpSession sesionparametro = request.getSession();
            sesionparametro.setAttribute("usuario", persona.getUsuario());
            sesionparametro.setAttribute("contra", persona.getContra());
            
            response.sendRedirect("InicioAlumno.jsp");
            
        } else if (persona.getId_privilegio() <= 3){
            
            HttpSession sesionusu = request.getSession(true);
            sesionusu.setAttribute("usuario", persona.getUsuario());

            HttpSession sesionparametro = request.getSession();
            sesionparametro.setAttribute("usuario", persona.getUsuario());
            sesionparametro.setAttribute("contra", persona.getContra());
            
            response.sendRedirect("InicioDocente.jsp");
            
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
