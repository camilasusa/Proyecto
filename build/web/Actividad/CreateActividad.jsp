<%-- 
    Document   : CreateActividad
    Created on : 10/09/2017, 12:37:44 AM
    Author     : home
--%>

<%@page import="Modelo.Estado"%>
<%@page import="Modelo.Lugar"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Actividad</title>
        <link rel="stylesheet" href="../Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="../Materialize/css/material-design-iconic-font.min.css">
    </head>
    <body>
        <jsp:useBean id="comboLugar" class="Controlador.ControlLugar" scope="request"></jsp:useBean>
    <jsp:useBean id="comboEstado" class="Controlador.ControlState" scope="request"></jsp:useBean>
    <%
            try{
                comboLugar.findLugar();
                Iterator itLugar = comboLugar.getListLugar().iterator();
                comboEstado.findEstado();
                Iterator itEstado = comboEstado.getListEstado().iterator();
        %>
    <center>
        <h1>Registro Area</h1>
        <hr>
    </center>
    <div class="row">
        <form class="col s12">
            <div class="row">
                <div class="input-field col s6">
                    <input id="codeActivity" type="number" class="validate" name="codeActivity">
                    <label for="codeActivity"><i class="zmdi zmdi-key"></i>&nbsp; Codigo de Actividad</label>
                </div>
                <div class="input-field col s6">
                    <input id="nameActivity" type="text" class="validate" name="nameActivity">
                    <label for="nameActivity"><i class="zmdi zmdi-font"></i>&nbsp; Nombre de Actividad</label>
                </div>
            </div>
            <div class="input-field col s6">
                    <select name="codePlace">
                        <option value="0" disabled selected>Seleccionar</option>
                        <%
                            while(itLugar.hasNext()){
                                Lugar lug = (Lugar)itLugar.next();
                        %>
                        <option value="<%=lug.getCodePlace()%>"><%=lug.getNamePlace()%></option>
                        <%
                            }
                        %>
                    </select>
                    <label>Lugar</label>
            </div>
                <div class="input-field col s6">
                    <textarea id="descriptionActivity" class="validate" name="descriptionActivity"></textarea>
                    <label for="descriptionActivity"><i class="zmdi zmdi-mail"></i>&nbsp; Descipción de Actividad</label>
                </div>
                <div class="inút-field col s6">
                    <input id="startDate" type="date" class="validate" name="startDate"> 
                </div>
                <div class="inút-field col s6">
                    <input id="endDate" type="date" class="validate" name="endDate"> 
                </div>
                <div class="inút-field col s6">
                    <input id="startTime" type="time" class="validate" name="startTime"> 
                </div>
                <div class="inút-field col s6">
                    <input id="endTime" type="time" class="validate" name="endTime"> 
                </div>
                <div class="input-field col s6">
                    <select name="typeActivity">
                        <option value="0" disabled selected>Seleccionar</option>
                        <option value="Publica">Publica</option>
                        <option value="Privada">Privada</option>
                    </select>
                    <label>Tipo Actividad</label>
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
                <div class="row">
                    <div class="col s7 offset-s5">
                        <span class="flow-text">
                            <button name="btnAgregar" id="btnAgregar" class="waves-effect waves-light btn" formaction="../ServletActividad">Agregar</button>
                        </span>
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
        <script src="../Materialize/materialize.min.js"></script>
        <script src="../Materialize/jquery-3.2.1.min.js"></script>
    </body>
</html>
