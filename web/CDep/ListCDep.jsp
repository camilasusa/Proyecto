<%-- 
    Document   : ListCDep
    Created on : 26/08/2017, 04:15:38 PM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.CDep"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista CDep</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="CDep" class="Controlador.ControlCDep" scope="request"></jsp:useBean>
        <%! List<CDep> lista=null;%>
        <%
            try{
                lista=CDep.findCDep();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de CDep</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo CDep</th>
                    <th>Nombre CDep</th>
                </tr>
                <%while(it.hasNext()){
                    CDep cde = (CDep)it.next();
                %>
            </thead>
            <tbody>
                <tr>
                    <td><%=cde.getCodeCDep()%></td>
                    <td><%=cde.getNameCDep()%></td>
                </tr>
            </tbody>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
        <a href="CreateCDep.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>
