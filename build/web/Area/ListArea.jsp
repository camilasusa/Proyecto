<%-- 
    Document   : ListArea
    Created on : 23/08/2017, 11:29:37 AM
    Author     : SU PAPA
--%>

<%@page import="Modelo.Area"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Area</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="Area" class="Controlador.ControlArea" scope="request"></jsp:useBean>
        <%! List<Area> lista=null;%>
        <%
            try{
                lista=Area.findArea();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Areas</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Area</th>
                    <th>Nombre Area</th>
                    <th>Modificar Area</th>
                </tr>
                <%while(it.hasNext()){
                    Area are = (Area)it.next();
                %>
            </thead>
            <tbody>
                <tr>
                    <td><%=are.getCodeArea()%></td>
                    <td><%=are.getNameArea()%></td>
                    <td><a href="UpdateArea.jsp?codAre=<%=are.getCodeArea()%>&namAre=<%=are.getNameArea()%>"><i class="zmdi zmdi-rotate-right zmdi-hc-2x"></i></a></td>
                </tr>
            </tbody>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
        <a href="CreateArea.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>

