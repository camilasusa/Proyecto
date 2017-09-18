<%-- 
    Document   : ListPosition
    Created on : 25/08/2017, 11:48:13 PM
    Author     : home
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Cargo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Cargo</title>
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
            <jsp:useBean id="Cargo" class="Controlador.ControlCargo" scope="request"></jsp:useBean>
            <%! List<Cargo> lista=null;%>
            <%
                try{
                    lista=Cargo.findCargo();
                    Iterator it=lista.iterator();
            %>
            <center>
                <section>
                    <div class="row">
                        <h3>Consulta Cargo</h3>
                        <hr class="style">
                    </div>
                </section>
            </center>
            <table id="example" class="bordered highlight listado">
                <thead>
                    <tr>
                        <th><h1>Código Cargo</h1></th>
			<th><h1>Nombre Cargo</h1></th>
                        <th><h1>Opción Modificar</h1></th>
                    </tr>
                    <%while(it.hasNext()){
                        Cargo car = (Cargo)it.next();
                    %>
                </thead>
		<tbody>
                    <tr>
			<td><%=car.getCodePosition()%></td>
			<td><%=car.getNamePosition()%></td>
                        <td><a href="UpdatePosition.jsp?codPosi=<%=car.getCodePosition()%>&namPosi=<%=car.getNamePosition()%>"><span class="zmdi zmdi-edit zmdi-hc-2x"></span></a></td>	
                    </tr>
		</tbody>
                <%}
                }catch(Exception e){
                    e.printStackTrace();
                }
                %>
            </table>
            <br>
            <div class="row">
                <div class="col s7 offset-s5">
                    <span class="flow-text">
                        <a type="button" href="CreatePosition.jsp" class="waves-effect waves-light"><img src="../Images/registrar.png" width="40" height="40"></a>
                    </span>
                </div>
            </div>
        </section>
    <script src="../Materialize/js/jquery-3.2.1.min.js"></script>
    <script src="../Materialize/js/materialize.min.js"></script>
    <script src="../Materialize/js/main.js"></script>    
    </body>
</html>

