
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alumno
 */
public class SeguimientoSesion extends HttpServlet {

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
            
            HttpSession sesionCliente = request.getSession(true);
            
            //obtenemos los datos del cliente de esa sesion
            
            String idSesion = sesionCliente.getId();
            long fechaCreacion = sesionCliente.getCreationTime();
            long ultimoAcceso = sesionCliente.getLastAccessedTime();
            
            /*
            se debe de crear un objeto que sea capaz de oider integrar los elementos de la sesion
            */
            
            Integer cuenta = (Integer)sesionCliente.getAttribute("sesion.ss"); 
            if (cuenta == null) {
            
                //es la primera vez que entro
                cuenta = new Integer(1);
            
            } else {
                
                cuenta = new Integer(cuenta.intValue() + 1);
                sesionCliente.setAttribute("sesion.ss", cuenta);
                
            }
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SeguimientoSesion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SeguimientoSesion at " + request.getContextPath() + "</h1>"
            
                    + "<br>"
                    + "Id de la sesion " + idSesion
                    +"<br>" 
                    + "Sesion creada en: " + (new Date(fechaCreacion).toString())
                    + "<br>" 
                    + "Fecha de ultima vez de acceso " + (new Date(ultimoAcceso).toString())
                    + "<br>"
                    + "Vamos a obtener los atributos de la sesion:"
                    
            );
            
            Enumeration nombresParametros = sesionCliente.getAttributeNames();
            
            while (nombresParametros.hasMoreElements()){
                
                String nombre = (String)nombresParametros.nextElement();
                Object valor = sesionCliente.getAttribute(nombre);
                out.println("Objeto: " + nombre + " valor: " + valor.toString() + "<br>");
                
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }


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
        processRequest(request, response);
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
