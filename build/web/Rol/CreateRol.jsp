<%-- 
    Document   : CreateRol
    Created on : 6/09/2017, 12:27:22 AM
    Author     : home
--%>
<%@page import="Modelo.Rol"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Rol</title>
        <link rel="stylesheet" href="../Material/css/bootstrap-material-design.min.css">
        <link rel="stylesheet" href="../Material/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Material/css/main.css">
        <link rel="stylesheet" href="../Material/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="../Material/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="../Material/css/ripples.min.css">
    </head>
    <body>
    	<!-- SideBar -->
        <section class="full-box cover dashboard-sideBar">
            <div class="full-box dashboard-sideBar-bg btn-menu-dashboard"></div>
            <div class="full-box dashboard-sideBar-ct">
            <!--SideBar Title -->
            <div class="full-box text-uppercase text-center text-titles dashboard-sideBar-title">
                Sistema Actividades <i class="zmdi zmdi-close btn-menu-dashboard visible-xs"></i>
            </div>
            <!-- SideBar User info -->
            <div class="full-box dashboard-sideBar-UserInfo">
                <figure class="full-box">
                    <img src="../Images/avatar-male.png" alt="UserIcon">
                    <figcaption class="text-center text-titles">Nombre Usuario</figcaption>
                </figure>
                <ul class="full-box list-unstyled text-center">
                    <li><a href="#!"><i class="zmdi zmdi-power"></i></a></li>
		</ul>
            </div>
                <!-- SideBar Menu -->
                <ul class="list-unstyled full-box dashboard-sideBar-Menu">
                    <li><a href="#"><i class="zmdi zmdi-account-box"></i> Rol</a></li>
                    <li><a href="#"><i class="zmdi zmdi-male-alt"></i> Cargo</a></li>
                </ul>
            </div>
        </section>
        <!-- Content page-->
        <section class="full-box dashboard-contentPage">
            <!-- NavBar -->
            <nav class="full-box dashboard-Navbar">
                <ul class="full-box list-unstyled text-right">
                    <li class="pull-left"><a href="#" class="btn-menu-dashboard"><i class="zmdi zmdi-more-vert"></i></a></li>
                    <li><a href="#!" class="btn-Notifications-area"><i class="zmdi zmdi-notifications"></i></a></li>
                </ul>
            </nav>
            <!-- Content page -->
            <div class="container-fluid">
                <div class="page-header">
                    <h1 class="text-titles"><i class="zmdi zmdi-account-box zmdi-hc-fw"></i> Rol <small>Registro</small></h1>
                </div>
                <p class="lead">En esta sección se permite el registro y consulta de los roles que tiene el sistema.</p>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <ul class="nav nav-tabs" style="margin-bottom: 15px;">
                            <li class="active"><a href="#new" data-toggle="tab">Nuevo</a></li>
                            <li><a href="#list" data-toggle="tab">Lista</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade active in" id="new">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-10 col-md-offset-1">
                                            <form>
                                                <div class="form-group label-floating">
                                                    <label class="control-label"><i class="zmdi zmdi-key"></i>&nbsp; Código Rol</label>
                                                    <input class="form-control" type="number" id="codeRol" name="codeRol">
                                                </div>
                                                <div class="form-group label-floating">
                                                    <label class="control-label"><i class="zmdi zmdi-font"></i>&nbsp; Nombre Rol</label>
                                                    <input class="form-control" type="text" id="nameRol" name="nameRol">
                                                </div>
                                                <p class="text-center">
                                                    <button id="btnAgregar" name="btnAgregar" class="btn btn-info btn-raised btn-sm" formaction="../ServletRol"><i class="zmdi zmdi-floppy"></i> Guardar</button>
                                                </p>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="list">
                                <div class="table-responsive">
                                    <jsp:useBean id="Rol" class="Controlador.ControlRol" scope="request"></jsp:useBean>
                                    <%! List<Rol> lista=null;%>
                                    <%
                                        try{
                                            lista=Rol.findRol();
                                            Iterator it=lista.iterator();
                                    %>
                                    <table class="table table-hover center">
                                        <thead>
                                            <tr>
                                                <th>Código Cargo</th>
                                                <th>Nombre Cargo</th>
                                                <th>Modificar</th>
                                            </tr>
                                            <%while(it.hasNext()){
                                              Rol rol = (Rol)it.next();   
                                            %>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><%=rol.getCodeRol()%></td>
                                                <td><%=rol.getNameRol()%> </td>
                                                <td><a href="#!" class="btn btn-success btn-raised btn-xs"><i class="zmdi zmdi-edit zmdi-hc-2x"></i></a></td>
                                            </tr>
                                        </tbody>
                                        <%}
                                            }catch(Exception e){
                                            e.printStackTrace();
                                          }
                                        %>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>						
	<!--====== Scripts -->
        <script src="../Material/js/jquery-3.2.1.min.js"></script>
	<script src="../Material/js/bootstrap.min.js"></script>
	<script src="../Material/js/material.min.js"></script>
	<script src="../Material/js/ripples.min.js"></script>
	<script src="../Material/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="../Material/js/main.js"></script>
	<script>
            $.material.init();
	</script>
    </body>
</html>
