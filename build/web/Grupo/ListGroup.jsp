<%-- 
    Document   : ListGroup
    Created on : 16/08/2017, 11:24:47 AM
    Author     : ESTUDIANTE
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Grupo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Fichas</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="Grupo" class="Controlador.ControlGrupo" scope="request"></jsp:useBean>
        <%! List<Grupo> lista=null;%>
        <%
            try{
                lista=Grupo.findGrupo();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Fichas</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Grupo</th>
                    <th>Numero Ficha</th>
                    <th>Encargado Ficha</th>
                    <th>Modificar Grupo</th>
                </tr>
                <%while(it.hasNext()){
                    Grupo grupo=(Grupo)it.next();
                %>
            <tbody>
                <tr>
                    <td><%=grupo.getIdGroup()%></td>
                    <td><%=grupo.getNumberGroup()%></td>
                    <td><%=grupo.getPersona().getFullName()%></td>
                    <td><a href="UpdateGrupo.jsp?idGro=<%=grupo.getIdGroup()%>&numGro=<%=grupo.getNumberGroup()%>&idPeop=<%=grupo.getPersona().getFullName()%>"><i class="zmdi zmdi-rotate-right zmdi-hc-2x"></i></a></td>
                </tr>
            </tbody>
            </thead>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
    <a href="CreateGroup.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>
