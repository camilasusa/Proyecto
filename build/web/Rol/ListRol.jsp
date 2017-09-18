<%-- 
    Document   : ListRol
    Created on : 6/09/2017, 12:24:06 AM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Rol"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Rol</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="Rol" class="Controlador.ControlRol" scope="request"></jsp:useBean>
        <%! List<Rol> lista=null;%>
        <%
            try{
                lista=Rol.findRol();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Rol</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Rol</th>
                    <th>Nombre Rol</th>
                    <th>Modificar</th>
                </tr>
                <%while(it.hasNext()){
                    Rol rol = (Rol)it.next();
                %>
            </thead>
            <tbody>
                <tr>
                    <td><%=rol.getCodeRol()%></td>
                    <td><%=rol.getNameRol()%></td>
                    <td><a href="UpdateRol.jsp?codAre=<%=are.getCodeArea()%>&namAre=<%=are.getNameArea()%>"><i class="zmdi zmdi-rotate-right zmdi-hc-2x"></i></a></td>
                </tr>
            </tbody>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
        <a href="CreateRol.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>
