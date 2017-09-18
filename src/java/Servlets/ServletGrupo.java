package Servlets;

import Controlador.ControlGrupo;
import Modelo.Grupo;
import Modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletGrupo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("btnAgregar")!=null){
                Grupo grupo = new Grupo();
                grupo.setIdGroup(Long.parseLong(request.getParameter("idGroup")));
                grupo.setNumberGroup(Long.parseLong(request.getParameter("numberGroup")));
                Persona persona = new Persona();
                persona.setIdPeople(Long.parseLong(request.getParameter("idPeople")));
                grupo.setPersona(persona);
                ControlGrupo control = new ControlGrupo();
                if(control.CreateGrupo(grupo))
                    response.sendRedirect("Grupo/ListGroup.jsp");
                else{
                    request.getRequestDispatcher("Grupo/CreateGroup.jsp").forward(request, response);
                }
            }
            if(request.getParameter("btnModificar")!=null){
                Grupo grupo = new Grupo();
                grupo.setIdGroup(Long.parseLong(request.getParameter("idGroup")));
                grupo.setNumberGroup(Long.parseLong(request.getParameter("numberGroup")));
                Persona persona = new Persona();
                persona.setIdPeople(Long.parseLong(request.getParameter("idPeople")));
                ControlGrupo control = new ControlGrupo();
                if(control.updateGrupo(grupo))
                    response.sendRedirect("Grupo/ListGroup.jsp");
                else{
                    request.getRequestDispatcher("Grupo/UpdateGrupo.jsp").forward(request, response);
                }
            }
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
