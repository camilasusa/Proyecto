<%-- 
    Document   : ListLugar
    Created on : 5/09/2017, 10:23:21 PM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Lugar"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Lugar</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="Lugar" class="Controlador.ControlLugar" scope="request"></jsp:useBean>
        <%! List<Lugar> lista=null;%>
        <%
            try{
                lista=Lugar.findLugar();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Lugares</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Lugar</th>
                    <th>Nombre Lugar</th>
                    <th>Dirección Lugar</th>
                    <th>Modificar Area</th>
                </tr>
                <%while(it.hasNext()){
                    Lugar lug = (Lugar)it.next();
                %>
            </thead>
            <tbody>
                <tr>
                    <td><%=lug.getCodePlace()%></td>
                    <td><%=lug.getNamePlace()%></td>
                    <td><%=lug.getAddressPlace()%></td>
                    <td><a href="UpdateLugar.jsp?codPla=<%=lug.getCodePlace()%>&namPla=<%=lug.getNamePlace()%>&addPla=<%=lug.getAddressPlace()%>"><i class="zmdi zmdi-rotate-right zmdi-hc-2x"></i></a></td>
                </tr>
            </tbody>
            <% }
               }catch(Exception e){
                e.printStackTrace();
            }
            %>
        </table>
    </center>
        <a href="CreateLugar.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>
