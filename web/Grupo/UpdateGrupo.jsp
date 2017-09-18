<%-- 
    Document   : UpdateGrupo
    Created on : 17-ago-2017, 7:31:33
    Author     : Estudiante
--%>

<%@page import="Modelo.Persona"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Ficha</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
         <jsp:useBean id="combo" class="Controlador.ControlPersona" scope="request"></jsp:useBean>
        <%
            try{
            combo.findPersona();
            Iterator itPersona = combo.getListPersona().iterator();
        %>
        <%!String idGrupo,numberGroup,idPeople;%>
        <%
            idGrupo=request.getParameter("idGro");
            numberGroup=request.getParameter("numGro");
            idPeople=request.getParameter("idPeop"); 
        %>
        <center>
                <h1>Modificar Fichas</h1>
                <hr>
        </center>
        <div class="row">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <input id="idGroup" type="number" class="validate" name="idGroup" value="<%=idGrupo%>">
                        <label for="idGroup"><i class="zmdi zmdi-accounts-alt"></i>&nbsp; Codigo de Grupo</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="numberGroup" type="number" class="validate" name="numberGroup" value="<%=numberGroup%>">
                        <label for="numberGroup"><i class="zmdi zmdi-accounts-alt"></i>&nbsp; Numero de Ficha</label>
                    </div>
                    <div class="input-field col s6">
                        <select name="idPeople">
                            <option value="<%=idPeople%>">Seleccione</option>
                            <%
                                while(itPersona.hasNext()){
                                Persona p = (Persona)itPersona.next();
                            %>
                            <option value="<%=p.getIdPeople()%>"><%=p.getFullName()%></option>
                            <%
                                }
                            %>
                        </select>
                        <label>Encargado Ficha</label>
                    </div>
                            <%
                                }catch(Exception e){
                                e.printStackTrace();
                                }
                            %>
                    <div class="row">
                        <div class="col s7 offset-s5">
                            <span class="flow-text">
                                <button name="btnModificar" id="btnModificar" class="waves-effect waves-light btn" formaction="../ServletGrupo">Modificar</button>
                            </span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script src="../Materialize/js/jquery-3.2.1.min.js"></script>
        <script src="../Materialize/js/materialize.min.js"></script>
        <script>
            $(document).ready(function() {
            $('select').material_select();
            });
        </script>
    </body>
</html>
