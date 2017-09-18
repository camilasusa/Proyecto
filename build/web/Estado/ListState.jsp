<%-- 
    Document   : ListState
    Created on : 25/08/2017, 11:01:47 PM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Estado"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Estado</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="State" class="Controlador.ControlState" scope="request"></jsp:useBean>
        <%! List<Estado> lista=null;%>
        <%
            try{
                lista=State.findEstado();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Estados</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Estado</th>
                    <th>Nombre Estado</th>
                </tr>
                <%while(it.hasNext()){
                    Estado est = (Estado)it.next();
                %>
            </thead>
            <tbody>
                <tr>
                    <td><%=est.getCodeState()%></td>
                    <td><%=est.getNameState()%></td>
                </tr>
            </tbody>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
        <a href="CreateState.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>
