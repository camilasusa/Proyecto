
package Servlets;

import Controlador.ControlActividad;
import Modelo.Actividad;
import Modelo.Estado;
import Modelo.Lugar;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletActividad extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("btnAgregar")!=null){
                Actividad actividad = new Actividad();
            actividad.setCodeActivity(Long.parseLong(request.getParameter("codeActivity")));
            actividad.setNameActivity(request.getParameter("nameActivity"));
            Lugar lugar = new Lugar();
            lugar.setCodePlace(Long.parseLong(request.getParameter("codePlace")));
            actividad.setLugar(lugar);
            actividad.setDescriptionActivity(request.getParameter("descriptionActivity"));
            actividad.setStartDate(request.getParameter("startDate"));
            actividad.setEndDate(request.getParameter("endDate"));
            actividad.setStartTime(request.getParameter("startTime"));
            actividad.setEndTime(request.getParameter("endTime"));
            actividad.setTypeActivity(request.getParameter("typeActivity"));
            Estado estado = new Estado();
            estado.setCodeState(Long.parseLong(request.getParameter("codeState")));
            actividad.setEstado(estado);
            
            ControlActividad control = new ControlActividad();
            if(control.CreateActividad(actividad))
                response.sendRedirect("Actividad/ListActividad.jsp");
            else{
                request.getRequestDispatcher("Actividad/CreateActividad.jsp").forward(request, response);
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
