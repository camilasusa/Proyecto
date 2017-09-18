

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Principal</title>
        <link rel="stylesheet" href="Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="Materialize/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="Materialize/css/style.css">
        <script type="text/javascript">
            function Open(){
                $(".ventana").slideDown('slow');
            }
            function Close(){
                $(".ventana").slideUp('fast');
            }
        </script>
    </head>
    <body >
        <div id="cen"></div>  
        <header id="top" class="header">
                <div class="container-Login center-align">
                    <a href="javascript:Open();" class=" waves-light btn-lg"><img src="Images/Acceder.png" width="50px" height="45px"/></a>
                    <div class="ventana">
                        <div class="form">
                            <div class="cerrar"><a href="javascript:Close();"><i class="zmdi zmdi-close-circle"></i></a></div>
                            <div style="margin: 15px 0;">
                                <i class="zmdi zmdi-account-circle zmdi-hc-5x"></i>
                                <p>Inicio Sesión</p>
                            </div>
                            <form action="InicioSesión" method="post" id="forminicio">
                                <div class="input-field col s12">
                                    <input id="UserName" type="text" class="validate" name="numId">
                                    <label for="UserName"><i class="zmdi zmdi-account"></i>&nbsp; Numero de Documento</label>
                                </div>
                                <div class="input-field col s12">
                                    <input id="Password" type="password" class="validate" name="password">
                                    <label for="Password"><i class="zmdi zmdi-lock"></i>&nbsp; Contraseña</label>
                                </div>
                                <button class="btn waves-effect waves-light btn-flat" id="btniniciar" name="btnIngresar">Ingresar &nbsp;<i class="zmdi zmdi-sign-in"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
        </header>
        <center>
            <a href="Grupo/ListGroup.jsp">Grupo</a>
            <a href="Persona/ListPersona.jsp">Persona</a>
            <a href="Area/ListArea.jsp">Area</a>
            <a href="Estado/ListState.jsp">Estado</a>
            <a href="Cargo/ListPosition.jsp">Cargo</a>
            <a href="CDep/ListCDep.jsp">CDep</a>
            <a href="Lugar/ListLugar.jsp">Lugar</a>
            <a href="Rol/ListRol.jsp">Rol</a>
            <a href="Menús/MenuAdministrador.jsp">Menu</a>
            <a href="Actividad/ListActividad.jsp">Actividad</a>
            <a href="manual.jsp">Hola</a>
        </center>   
        <script src="Materialize/js/jquery-3.2.1.min.js"></script>
        <script src="Materialize/js/materialize.min.js"></script>
    </body>
</html>
