/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 52552
 */
public class ActualizarAlumno extends HttpServlet {

    private Connection con;
    private Statement set;
    private ResultSet rs;
    
    public void init(ServletConfig scg) throws ServletException{
        //se dene de establecer los elementos para la conexion con bd
        String url = "jdbc:mysql:3306//localhost/alumnos";
                   //controlador:motorBD:puerto//IP/nombreBD
        String username = "root";
        String password = "Roja161203.";
        
        try{
            //internat conectar a la bd
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://localhost/alumnos";
            con = DriverManager.getConnection(url, username, password);
            set = con.createStatement();
            
            System.out.println("Si conecto a la BD :3 *w* ");
            
        }catch(Exception e){
            System.out.println("No conecto, solo juguito contigo uwu");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        
        }
    }
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Actualizar Alumnos</title>");            
            out.println("</head>");
            out.println("<body>");
            
            try{
                //obtener los parametros para poder
                //insertarlos en la BD
                String nom, appat, apmat, tel;
                int boleta;
                
                nom = request.getParameter("nombre2");
                appat = request.getParameter("appat2");
                apmat = request.getParameter("apmat2");
                tel = request.getParameter("telefono2");
                boleta = Integer.parseInt(request.getParameter("boleta2"));
                
                System.out.println(nom);
                System.out.println(appat);
                System.out.println(apmat);
                System.out.println(tel);
                System.out.println(boleta);
                
                String q = "";
                
                if (nom != ""){
                    q = "update alumnosbatiz set nombre = '" + nom + "' where boleta = " + boleta;
                } if (appat != ""){
                    q = "update alumnosbatiz set appat = '" + appat + "' where boleta = " + boleta;
                } if (apmat != ""){
                    q = "update alumnosbatiz set apmat = '" + apmat + "' where boleta = " + boleta;
                } if (tel != ""){
                    q = "update alumnosbatiz set telefono = '" + tel + "' where boleta = " + boleta;
                }
                
                //se debe de preparar ejecutar la sentencia
                
                set.executeUpdate(q);
                out.println("<h1>Alumno actualizado con éxtio</h1>");
                System.out.println("Dato registrado");
            
            }catch(Exception e){
                
                System.out.println("No se pudo actualizar verificar los datos de entrada");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                out.println("<h1>Alumno No se pudo actualizar, hay un error</h1>");
            
            }
            
            
            
            
            out.println("<a href='ConsultarAlumnos' >Consultar Alumnos</a>");
            out.println("</body>");
            out.println("</html>");
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

    public void destroy(){
        try{
            con.close();
        }catch(Exception e){
            super.destroy();
        }
    }
    
}
