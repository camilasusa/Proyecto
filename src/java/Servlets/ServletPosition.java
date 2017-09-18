package Servlets;

import Controlador.ControlCargo;
import Modelo.Cargo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletPosition extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         if(request.getParameter("btnAgregar")!=null){
                Cargo cargo = new Cargo();
                cargo.setCodePosition(Long.parseLong(request.getParameter("codePosition")));
                cargo.setNamePosition(request.getParameter("namePosition"));
                ControlCargo control = new ControlCargo();
                if(control.CreateCargo(cargo))
                    response.sendRedirect("Cargo/ListPosition.jsp");
                else{
                    request.getRequestDispatcher("Cargo/CreatePosition.jsp").forward(request, response);
                }
            }
            if(request.getParameter("btnModificar")!=null){
                Cargo cargo = new Cargo();
                cargo.setCodePosition(Long.parseLong(request.getParameter("codePosition")));
                cargo.setNamePosition(request.getParameter("namePosition"));
                ControlCargo control = new ControlCargo();
                if(control.UpdateCargo(cargo))
                    response.sendRedirect("Cargo/ListPosition.jsp");
                else{
                    request.getRequestDispatcher("Cargo/UpdatePosition.jsp").forward(request, response);
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
