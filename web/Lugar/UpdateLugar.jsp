<%-- 
    Document   : UpdateLugar
    Created on : 5/09/2017, 11:04:19 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Lugar</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <%!String codePlace,namePlace,addressPlace;%>
        <%
            codePlace=request.getParameter("codPla");
            namePlace=request.getParameter("namPla");
            addressPlace=request.getParameter("addPla");
        %>
        <center>
                <h1>Modificar Lugar</h1>
                <hr>
        </center>
    <div class="row">
        <form class="col s12">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="input-field col s6">
                            <input id="codePlace" type="number" class="validate" name="codePlace" value="<%=codePlace%>">
                            <label for="codePlace"><i class="zmdi zmdi-key"></i>&nbsp; Codigo de Lugar</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="namePlace" type="text" class="validate" name="namePlace" value="<%=namePlace%>">
                            <label for="namePlace"><i class="zmdi zmdi-font"></i>&nbsp; Nombre de Lugar</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="addressPlace" type="text" class="validate" name="addressPlace" value="<%=addressPlace%>">
                            <label for="addressPlace"><i class="zmdi zmdi-gps-dot"></i>&nbsp; Direccion de Lugar</label>
                        </div>
                         <div class="row">
                            <div class="col s7 offset-s5">
                                <span class="flow-text">
                                    <button name="btnModificar" id="btnModificar" class="waves-effect waves-light btn" formaction="../ServletLugar">Modificar</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>     
            </div>
        </form>
    </div>
    <script src="../Materialize/js/jquery-3.2.1.min.js"></script>
    <script src="../Materialize/js/materialize.min.js"></script>
    </body>
</html>
