<%-- 
    Document   : ListPersona
    Created on : 27/08/2017, 04:36:46 PM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Persona</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="Persona" class="Controlador.ControlPersona" scope="request"></jsp:useBean>
        <%! List<Persona> lista=null;%>
        <%
            try{
                lista=Persona.findPersona();
                Iterator it=lista.iterator();
        %>
    <center>
        <h1>Listado de Personas</h1>
        <hr>
        <br>
        <table>
            <thead>
                <tr>
                    <th>Codigo Persona</th>
                    <th>Documento Persona</th>
                    <th>Nombres Completos</th>
                    <th>Genero</th>
                    <th>Telefono</th>
                    <th>Direccion</th>
                    <th>Correo Electronico</th>
                    <th>Registrado Por</th>
                    <th>Estado</th>
                    <th>Area</th>
                    <th>Cargo</th>
                    <th>CDep</th>
                    <th>Modificar Personas</th>
                </tr>
                <%while(it.hasNext()){
                    Persona per=(Persona)it.next();
                %>
            <tbody>
                <tr>
                    <td><%=per.getIdPeople()%></td>
                    <td><%=per.getDocumentPeople()%></td>
                    <td><%=per.getFullName()%></td>
                    <td><%=per.getGender()%></td>
                    <td><%=per.getPhone()%></td>
                    <td><%=per.getAddress()%></td>
                    <td><%=per.getEmail()%></td>
                    <td><%=per.getRegisteredBy()%></td>
                    <td><%=per.getEstado().getNameState()%></td>
                    <td><%=per.getArea().getNameArea()%></td>
                    <td><%=per.getCargo().getNamePosition()%></td>
                    <td><%=per.getCdep().getNameCDep()%></td>
                    <td><a href="UpdatePersona.jsp?idPeo=<%=per.getIdPeople()%>&docuPeo=<%=per.getDocumentPeople()%>&fullNa=<%=per.getFullName()%>&gen=<%=per.getGender()%>&pho=<%=per.getPhone()%>&add=<%=per.getAddress()%>&ema=<%=per.getEmail()%>&regisBy=<%=per.getRegisteredBy()%>&codSta=<%=per.getEstado().getNameState()%>&codAre=<%=per.getArea().getNameArea()%>&codPosi=<%=per.getCargo().getNamePosition()%>&codCDe=<%=per.getCdep().getNameCDep()%>"><i class="zmdi zmdi-rotate-right zmdi-hc-2x"></i></a></td>
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
    <a href="CreatePeople.jsp"><i class="zmdi zmdi-plus-circle-o zmdi-hc-2x"></i></a>
    </body>
</html>