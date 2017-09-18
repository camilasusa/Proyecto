<%-- 
    Document   : CreateState
    Created on : 25/08/2017, 10:51:37 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Estado</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
    <center>
        <h1>Registro Estado</h1>
        <hr>
    </center>
    <div class="row">
        <form class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="codeState" type="number" class="validate" name="codeState">
                    <label for="codeState"><i class="zmdi zmdi-key"></i>&nbsp; Codigo de Estado</label>
                </div>
                <div class="input-field col s6">
                    <input id="nameState" type="text" class="validate" name="nameState">
                    <label for="nameState"><i class="zmdi zmdi-key"></i>&nbsp; Nombre de Estado</label>
                </div>
                <div class="row">
                    <div class="col s7 offset-s5">
                        <span class="flow-text">
                            <button name="btnAgregar" id="btnAgregar" class="waves-effect waves-light btn" formaction="../ServletState">Agregar</button>
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
