<%-- 
    Document   : CreatePeople
    Created on : 17/08/2017, 10:51:42 PM
    Author     : VILLAZON
--%>

<%@page import="Modelo.CDep"%>
<%@page import="Modelo.Cargo"%>
<%@page import="Modelo.Area"%>
<%@page import="Modelo.Estado"%>
<%@page import="java.util.Iterator"%>
<%@page import="DataAccess.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Personas</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="comboEstado" class="Controlador.ControlState" scope="request"></jsp:useBean>
        <jsp:useBean id="comboArea" class="Controlador.ControlArea" scope="request"></jsp:useBean>
        <jsp:useBean id="comboCargo" class="Controlador.ControlCargo" scope="request"></jsp:useBean>
        <jsp:useBean id="comboCDep" class="Controlador.ControlCDep" scope="request"></jsp:useBean>
        <%
            try{
            comboEstado.findEstado();
            Iterator itEstado = comboEstado.getListEstado().iterator();
            comboArea.findArea();
            Iterator itArea = comboArea.getListArea().iterator();
            comboCargo.findCargo();
            Iterator itCargo = comboCargo.getListCargo().iterator();
            comboCDep.findCDep();
            Iterator itCDep = comboCDep.getListCDep().iterator();
        %>
    <center>
        <h1>Registro Personas</h1>
        <hr>
    </center>
    <div class="row">
        <form class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="idPeople" type="number" class="validate" name="idPeople">
                    <label for="idPeople"><i class="zmdi zmdi-account-circle"></i>&nbsp; Codigo de Persona</label>
                </div>
                <div class="input-field col s6">
                    <input id="documentPeople" type="number" class="validate" name="documentPeople">
                    <label for="documentPeople"><i class="zmdi zmdi-account-circle"></i>&nbsp; Documento de Persona</label>
                </div>
                <div class="input-field col s6">
                    <input id="fullName" type="text" class="validate" name="fullName">
                    <label for="fullName"><i class="zmdi zmdi-account-circle"></i>&nbsp; Nombres Completo de Persona</label>
                </div>
                <div class="input-field col s6">
                    <select name="gender">
                        <option value="0" disabled selected>Seleccionar</option>
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                    </select>
                    <label>Genero</label>
                </div>
                <div class="input-field col s6">
                    <input id="phone" type="number" class="validate" name="phone">
                    <label for="phone"><i class="zmdi zmdi-phone"></i>&nbsp; Telefono de Persona</label>
                </div>
                <div class="input-field col s6">
                    <input id="address" type="text" class="validate" name="address">
                    <label for="address"><i class="zmdi zmdi-account-circle"></i>&nbsp; Dirección de Persona</label>
                </div>
                <div class="input-field col s6">
                    <input id="email" type="email" class="validate" name="email">
                    <label for="email"><i class="zmdi zmdi-email"></i>&nbsp; Correo Electronico de Persona</label>
                </div>
                <div class="input-field col s6">
                    <input id="registeredBy" type="text" class="validate" name="registeredBy">
                    <label for="registeredBy"><i class="zmdi zmdi-email"></i>&nbsp; Registrado Por</label>
                </div>
                <div class="input-field col s6">
                    <select name="codeState">
                        <option value="0" disabled selected>Seleccionar</option>
                        <%
                            while(itEstado.hasNext()){
                                Estado est = (Estado)itEstado.next();
                        %>
                        <option value="<%=est.getCodeState()%>"><%=est.getNameState()%></option>
                        <%
                            }
                        %>
                    </select>
                    <label>Estado</label>
                </div>
                <div class="input-field col s6">
                    <select name="codeArea">
                        <option value="0" disabled selected>Seleccionar</option>
                        <%
                            while(itArea.hasNext()){
                                Area are = (Area)itArea.next();
                        %>
                        <option value="<%=are.getCodeArea()%>"><%=are.getNameArea()%></option>
                        <%
                            }
                        %>
                    </select>
                    <label>Area</label>
                </div>
                <div class="input-field col s6">
                    <select name="codePosition">
                        <option value="0" disabled selected>Seleccionar</option>
                        <%
                            while(itCargo.hasNext()){
                                Cargo car = (Cargo)itCargo.next();
                        %>
                        <option value="<%=car.getCodePosition()%>"><%=car.getNamePosition()%></option>
                        <%
                            }
                        %>
                    </select>
                    <label>Cargo</label>
                </div>
                    <div class="input-field col s6">
                        <select name="codeCDep">
                            <option value="0" disabled selected>Seleccionar</option>
                            <%
                                while(itCDep.hasNext()){
                                    CDep cde = (CDep)itCDep.next();
                            %>
                            <option value="<%=cde.getCodeCDep()%>"><%=cde.getNameCDep()%></option>
                            <%
                                }
                            %>
                        </select>
                        <label>CDep</label>
                    </div>
                <div class="row">
                    <div class="col s7 offset-s5">
                        <span class="flow-text">
                            <button name="btnAgregar" id="btnAgregar" class="waves-effect waves-light btn" formaction="../ServletPersona">Agregar</button>
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
    <%
        }catch(Exception e){
        e.printStackTrace();
        }
    %>  
    </body>
</html>
