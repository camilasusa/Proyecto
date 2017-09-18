package Servlets;

import Controlador.ControlPersona;
import Modelo.Area;
import Modelo.CDep;
import Modelo.Cargo;
import Modelo.Estado;
import Modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletPersona extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("btnAgregar")!=null){
                Persona persona = new Persona();
            persona.setIdPeople(Long.parseLong(request.getParameter("idPeople")));
            persona.setDocumentPeople(Long.parseLong(request.getParameter("documentPeople")));
            persona.setFullName(request.getParameter("fullName"));
            persona.setGender(request.getParameter("gender"));
            persona.setPhone(Long.parseLong(request.getParameter("phone")));
            persona.setAddress(request.getParameter("address"));
            persona.setEmail(request.getParameter("email"));
            persona.setRegisteredBy(request.getParameter("registeredBy"));
            Estado estado = new Estado();
            estado.setCodeState(Long.parseLong(request.getParameter("codeState")));
            persona.setEstado(estado);
            Area area = new Area();
            area.setCodeArea(Long.parseLong(request.getParameter("codeArea")));
            persona.setArea(area);
            Cargo cargo = new Cargo();
            cargo.setCodePosition(Long.parseLong(request.getParameter("codePosition")));
            persona.setCargo(cargo);
            CDep cdep = new CDep();
            cdep.setCodeCDep(Long.parseLong(request.getParameter("codeCDep")));
            persona.setCdep(cdep);
            ControlPersona control = new ControlPersona();
            if(control.CreatePersona(persona))
                response.sendRedirect("Persona/ListPersona.jsp");
            else{
                request.getRequestDispatcher("Persona/CreatePeople.jsp").forward(request, response);
            }
        }
            if(request.getParameter("btnModificar")!=null){
                Persona persona = new Persona();
            persona.setIdPeople(Long.parseLong(request.getParameter("idPeople")));
            persona.setDocumentPeople(Long.parseLong(request.getParameter("documentPeople")));
            persona.setFullName(request.getParameter("fullName"));
            persona.setGender(request.getParameter("gender"));
            persona.setPhone(Long.parseLong(request.getParameter("phone")));
            persona.setAddress(request.getParameter("address"));
            persona.setEmail(request.getParameter("email"));
            persona.setRegisteredBy(request.getParameter("registeredBy"));
            Estado estado = new Estado();
            estado.setCodeState(Long.parseLong(request.getParameter("codeState")));
            persona.setEstado(estado);
            Area area = new Area();
            area.setCodeArea(Long.parseLong(request.getParameter("codeArea")));
            persona.setArea(area);
            Cargo cargo = new Cargo();
            cargo.setCodePosition(Long.parseLong(request.getParameter("codePosition")));
            persona.setCargo(cargo);
            CDep cdep = new CDep();
            cdep.setCodeCDep(Long.parseLong(request.getParameter("codeCDep")));
            persona.setCdep(cdep);
            ControlPersona control = new ControlPersona();
            if(control.UpdatePersona(persona))
                response.sendRedirect("Persona/ListPersona.jsp");
            else{
                request.getRequestDispatcher("Persona/UpdatePersona.jsp").forward(request, response);
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
