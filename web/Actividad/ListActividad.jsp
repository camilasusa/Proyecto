<%-- 
    Document   : ListActividad
    Created on : 5/09/2017, 08:14:23 PM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Actividad"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Actividad</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="Actividad" class="Controlador.ControlActividad" scope="request"></jsp:useBean>
        <%! List<Actividad> lista=null;%>
        <%
            try{
                lista=Actividad.findActividad();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Actividades</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Actividad</th>
                    <th>Nombre Actividad</th>
                    <th>Nombre Lugar</th>
                    <th>Descripción Actividad</th>
                    <th>Fecha Inicial</th>
                    <th>Fecha Final</th>
                    <th>Hora Inicio</th>
                    <th>Hora Finalización</th>
                    <th>Tipo Actividad</th>
                    <th>Estado Actividad</th>
                </tr>
                <%while(it.hasNext()){
                    Actividad act = (Actividad)it.next();
                %>
            </thead>
            <tbody>
                <tr>
                    <td><%=act.getCodeActivity()%></td>
                    <td><%=act.getNameActivity()%></td>
                    <td><%=act.getLugar().getNamePlace()%></td>
                    <td><%=act.getDescriptionActivity()%></td>
                    <td><%=act.getStartDate()%></td>
                    <td><%=act.getEndDate()%></td>
                    <td><%=act.getStartTime()%></td>
                    <td><%=act.getEndTime()%></td>
                    <td><%=act.getTypeActivity() %></td>
                    <td><%=act.getEstado().getNameState()%></td>
                </tr>
            </tbody>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
        <a href="CreateActividad.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>
