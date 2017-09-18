<%-- 
    Document   : CreatePosition
    Created on : 25/08/2017, 11:46:12 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Cargo</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="../Materialize/css/styleM.css">
        <link rel="stylesheet" href="../Materialize/css/styleTa.css">
    </head>
    <body>
        <section class="NavLateral full-width">
            <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
            <div class="NavLateral-content full-width">
                <header class="NavLateral-title full-width center-align">
                    Menú Administrador<i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
                </header>
                <figure class="full-width NavLateral-logo">
                    <img src="../Images/logo.png" alt="material-logo" class="responsive-img center-box">
                    <figcaption class="center-align">Sistema Actividades</figcaption>
                </figure>
                <div class="NavLateral-Nav">
                    <ul class="full-width">
                        <li>
                            <a href="#" class="waves-effect waves-light"><i class="zmdi zmdi-calendar zmdi-hc-fw"></i>Actividades</a>
                        </li>
                        <li class="NavLateralDivider"></li>
                        <li>
                            <a href="#" class="waves-effect waves-light"><i class="zmdi zmdi-account-box zmdi-hc-fw"></i>Rol Persona</a>
                        </li>
                        <li class="NavLateralDivider"></li>
                        <li>
                            <a href="../Cargo/ListPosition.jsp" class="waves-effect waves-light"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>Cargo</a>
                        </li>
                        <li class="NavLateralDivider"></li>
                        <li>
                            <a href="#" class="waves-effect waves-light"><i class="zmdi zmdi-home zmdi-hc-fw"></i>Área</a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="ContentPage full-width">
            <div class="ContentPage-Nav full-width">
            <ul class="full-width">
                <li class="btn-MobileMenu ShowHideMenu"><a href="#" class="tooltipped waves-effect waves-light" data-position="bottom" data-delay="50" data-tooltip="Menu"><i class="zmdi zmdi-more-vert"></i></a></li>
                <li><figure><img src="../Images/user.png" alt="UserImage"></figure></li>
                <li style="padding:0 5px;">Nombre Usuario</li>
                <li><a href="#" class="tooltipped waves-effect waves-light btn-Cerrar Sesión" data-position="bottom" data-delay="50" data-tooltip="Cerrar Sesión"><i class="zmdi zmdi-power"></i></a></li>
                <li><a href="#" class="tooltipped waves-effect waves-light btn-Notificación" data-position="bottom" data-delay="50" data-tooltip="Notificación"><i class="zmdi zmdi-notifications"></i></a>
            </ul>
            </div>
            <center>
                <section>
                    <div class="row">
                        <h3>Registrar Cargo</h3>
                        <hr class="style">
                    </div>
                </section>
            </center>
            <div class="row">
                <form class="col s12">
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="zmdi zmdi-key prefix"></i>
                            <input id="codePosition" type="number" class="validate" name="codePosition">
                            <label for="codePosition">Código Cargo</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="zmdi zmdi-font prefix"></i>
                            <input id="namePosition" type="text" class="validate" name="namePosition">
                            <label for="namePosition">Nombre Cargo*</label>
                       </div>
                    </div>
                    <div class="input-field">
                        <div class="col-md-12 center">
                            <button id="btnAgregar" name="btnAgregar" class="waves-effect waves-light btn" formaction="../ServletPosition">Registrar</button>
                        </div>
                    </div>
                </form>
            </div>                      
        </section>
    <script src="../Materialize/js/jquery-3.2.1.min.js"></script>
    <script src="../Materialize/js/materialize.min.js"></script>
    <script src="../Materialize/js/main.js"></script>
    </body>
</html>
