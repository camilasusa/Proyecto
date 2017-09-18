<%-- 
    Document   : UpdateRol
    Created on : 6/09/2017, 12:32:20 AM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Rol</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <%!String codeRol,nameRol;%>
        <%
            codeRol=request.getParameter("codRol");
            nameRol=request.getParameter("namRol");
        %>
        <center>
                <h1>Modificar Rol</h1>
                <hr>
        </center>
        <div class="row">
        <form class="col s12">
            <div class="row">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="input-field col s6">
                            <input id="codeRol" type="number" class="validate" name="codeRol" value="<%=codeRol%>">
                            <label for="codeRol"><i class="zmdi zmdi-key"></i>&nbsp; Codigo de Rol</label>
                        </div>
                        <div class="input-field col s6">
                            <input id="nameRol" type="text" class="validate" name="nameRol" value="<%=nameRol%>">
                            <label for="nameRol"><i class="zmdi zmdi-font"></i>&nbsp; Nombre de Rol</label>
                        </div>
                        <div class="row">
                            <div class="col s7 offset-s5">
                                <span class="flow-text">
                                    <button name="btnModificar" id="btnModificar" class="waves-effect waves-light btn" formaction="../ServletRol">Modificar</button>
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
