<%-- 
    Document   : UpdateArea
    Created on : 23/08/2017, 11:35:45 AM
    Author     : ESTUDIANTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Area</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <%!String codeArea,nameArea;%>
        <%
            codeArea=request.getParameter("codAre");
            nameArea=request.getParameter("namAre");
        %>
        <center>
                <h1>Modificar Areas</h1>
                <hr>
        </center>
        <div class="row">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <input id="codeArea" type="number" class="validate" name="codeArea" value="<%=codeArea%>">
                        <label for="codeArea"><i class="zmdi zmdi-key"></i>&nbsp; Codigo de Area</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="nameArea" type="text" class="validate" name="nameArea" value="<%=nameArea%>">
                        <label for="nameArea"><i class="zmdi zmdi-account-circle"></i>&nbsp; Nombre de Area</label>
                    </div>
                    <div class="row">
                        <div class="col s7 offset-s5">
                            <span class="flow-text">
                                <button name="btnModificar" id="btnModificar" class="waves-effect waves-light btn" formaction="../ServletArea">Modificar</button>
                            </span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script src="../Materialize/js/jquery-3.2.1.min.js"></script>
        <script src="../Materialize/js/materialize.min.js"></script>
    </body>
</html>
