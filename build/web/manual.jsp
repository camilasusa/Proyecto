

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Materialize/css/materialize.min.css">
        <link rel="stylesheet" href="Materialize/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="Materialize/css/style.css">
        <title>Manual</title>
    </head>
    <body>
        <div class="container">
        <section>
                       

      <center><h2>Manual al usuario</h2></center> 
        <p>
            <div class="row">
                
                
<!--                <div class="col s12 ">
                  <div class="card-panel teal">
                    <span class="white-text">Tenga en cuenta que: Para poder asignar tareas a personas,
                        primero deben existir o haber registrado datos de personas y tareas,
                        para asignar programas de formación a las áreas, primero deben existir o haber registrado datos de áreas y programas de formación, 
                        para asignar roles a una persona, primero deben existir o haber registrado datos de personas y roles.
                        Para crear una persona necesita dependencia, el cargo y el área, para crear un grupo, necesita personas,
                        para crear una actividad necesita un estado y un lugar, luego podrá asignar la actividad a la persona encargada,
                        para generar un reporte debe exister la asistencia a un evento.
                    </span>
                  </div>
                 </div>
                
                 <div class="col s12 ">
                  <div class="card-panel teal">
                    <span class="white-text">Procure seguir el siguiente orden, si no existen los datos, debe registrar: 
                        Roles, Tareas, Cargos, Dependencias, Áreas, Programas de Formación, Personas, Lugares, Estados, 
                        usted podrà administrar Personas, asignación de áreas a programas de formación, asignación de tareas a personas, 
                        asignación de roles a personas, actividades, asignación de actividades, invitaciones, asistencias y reportes.
                    </span>
                  </div>
                </div>-->

                <div class="col s5">

                    <div class="card">
                        <div class="card-content" id="test1">
                          <p>Usted podrá administrar los roles los cuales seran asignados a los usuarios que tendrán acceso al sistema.</p>
                        </div>
                        <div class="card-content" id="test2">
                          <p>Usted podrá administrar las tareas existentes bajo las cuales estarán asociadas las personas que tengan acceso al sistema.</p>
                        </div>
                        <div class="card-content" id="test3">
                          <p>Usted podrá administrar los cargos existentes los cuales serán asociados a la información de las personas que se almacena en el sistema. </p>
                        </div>

                        <div class="card-tabs">
                          <ul class="tabs tabs-fixed-width">
                            <li class="tab"><a class="active" href="#test1">Rol</a></li>
                            <li class="tab"><a href="#test2">Tareas</a></li>
                            <li class="tab"><a href="#test3">Cargo</a></li>
                          </ul>
                        </div>

                        <div class="card-content grey lighten-4">
                            <a id="test1" href="ListRol.jsp">   -  Ir a Rol...   </a>  <a id="test2" href="ListTask.jsp">   -  Ir a Tareas...   </a>  <a id="test3" href="ListPosition.jsp">   -  Ir a Cargo...</a> 
                        </div>
                   </div> 
            
               </div>  
                
                
                <div class="col s1"></div>
                
                
                <div class="col s5">

                    <div class="card">
                        <div class="card-content" id="test4">
                          <p>Usted podrá administrar una dependencia, de la cual puede hacer parte una persona.</p>
                        </div>
                        <div class="card-content" id="test5">
                          <p>Usted podrá administrar un estado, al cual hará referencia como se encuentra una actividad.</p>
                        </div>
                        <div class="card-content" id="test6">
                          <p>Usted podrá administrar un lugar, en el cual se podrán realizar las distintas actividades propuestas en el Sena</p>
                        </div>

                        <div class="card-tabs">
                          <ul class="tabs tabs-fixed-width">
                            <li class="tab"><a class="active" href="#test4">Dependencia</a></li>
                            <li class="tab"><a href="#test5">Estado</a></li>
                            <li class="tab"><a href="#test6">Lugar</a></li>
                          </ul>
                        </div>

                        <div class="card-content grey lighten-4">
                            <a id="test4" href="ListCDep.jsp">   -  Ir a Dependencia...   </a>  <a id="test5" href="ListState.jsp">   -  Ir a Estado...   </a>  <a id="test6" href="ListPlace.jsp">   -  Ir a Lugar...</a> 
                        </div>
                   </div> 
            
               </div> 
                
                
                 <div class="col s5">

                    <div class="card">
                        <div class="card-content" id="test7">
                          <p>Usted podrá administrar las áreas en las que hace enfásis el CGMLTI.</p>
                        </div>
                        <div class="card-content" id="test8">
                          <p>Usted podrá administrar los programas de formación en los cuales hacen enfásis en el CGMLTI.</p>
                        </div>
                        <div class="card-content" id="test9">
                          <p>Usted podrá administrar las fichas, pertenecientes a los programas de formación, recuerde que debió registrar o existir personas. </p>
                        </div>

                        <div class="card-tabs">
                          <ul class="tabs tabs-fixed-width">
                            <li class="tab"><a class="active" href="#test7">Áreas</a></li>
                            <li class="tab"><a href="#test8">Programas de Formación</a></li>
                            <li class="tab"><a href="#test9">Fichas</a></li>
                          </ul>
                        </div>

                        <div class="card-content grey lighten-4">
                            <a id="test7" href="ListArea.jsp">   -  Ir a Áreas...   </a>  <a id="test8" href="ListPF.jsp">   -  Ir a Programas de Formación...   </a>  <a id="test9" href="ListGroup.jsp">   -  Ir a Fichas...</a> 
                        </div>
                   </div> 
            
               </div>  
                
                
                <div class="col s1"></div>
                
                
                <div class="col s5">

                    <div class="card">
                        <div class="card-content" id="test10">
                          <p>Usted podra asignar los programas de formación correpondientes a las áreas. Recuerde que deben existir o registrar programas de formación y áreas.</p>
                        </div>
                        <div class="card-content" id="test11">
                          <p>Usted podrá administrar las personas pertenecientes al CGMLTI. Recuerde que deben existir o registrar cargo dependencia y àrea.</p>
                        </div>
                        <div class="card-content" id="test12">
                           <p>Usted podrá asignar las tareas a las personas.  Recuerde que deben existir o registrar personas y tareas.</p>
                        </div>
                        <div class="card-content" id="test13">
                           <p>Usted podrá asignar los roles a los usuarios del sistema.  Recuerde que deben existir o registrar roles y personas.</p>
                        </div>

                        <div class="card-tabs">
                          <ul class="tabs tabs-fixed-width">
                            <li class="tab"><a class="active" href="#test10">Asignación de Áreas a Programas</a></li>
                            <li class="tab"><a href="#test11">Personas</a></li>
                            <li class="tab"><a href="#test12">Asignación de Tarea a Personas</a></li>
                            <li class="tab"><a href="#test13">Asignación de Roles a  Usuarios</a></li>
                          </ul>
                        </div>

                        <div class="card-content grey lighten-4">
                            <a id="test10" href="ListRol.jsp">   -  Ir a Asignación de Áreas a Programas de Formación...   </a>  <a id="test11" href="ListPeople.jsp">   -  Ir a Personas...   </a>  <a id="test12" href="ListCargo.jsp">   -  Ir a Asignación de Tarea a Personas...</a>  <a id="test12" href="ListCargo.jsp">   -  Ir a Asignación de Roles a  Usuarios...</a> 
                        </div>
                   </div> 
            
               </div> 
                
                 <div class="col s5">

                    <div class="card">
                        <div class="card-content" id="test14">
                          <p>Usted podrá administrar las actividades en el CGMLTI.  Recuerde que deben existir o registrar estado y lugares.</p>
                        </div>
                        <div class="card-content" id="test15">
                          <p>Usted podrá administrar la asignación de actividades, de acuerdo a la persona que crea a la actividad.  Recuerde que deben existir personas y actividades.</p>
                        </div>
                        <div class="card-content" id="test16">
                          <p>Usted podrá administrar las invitaciones que son enviadas a los correos electrónicos.  Recuerde que deben existir o registrar actividades.</p>
                        </div>

                        <div class="card-tabs">
                          <ul class="tabs tabs-fixed-width">
                            <li class="tab"><a class="active" href="#test14">Actividades</a></li>
                            <li class="tab"><a href="#test15">Asignación de Actividades</a></li>
                            <li class="tab"><a href="#test16">Invitaciones de las Actividades</a></li>
                          </ul>
                        </div>

                        <div class="card-content grey lighten-4">
                            <a id="test14" href="ListActivities.jsp">   -  Ir a Actividades...   </a>  <a id="test15" href="ListTareas.jsp">   -  Ir a Asignación de Actividades...   </a>  <a id="test16" href="ListCargo.jsp">   -  Ir a Invitaciones de las Actividades...</a> 
                        </div>
                   </div> 
            
               </div>  
                
                
                <div class="col s1"></div>
                
                
                <div class="col s5">

                    <div class="card">
                        <div class="card-content" id="test17">
                          <p>Usted podrá verificar la asistencia de las personas que confirmaròn, para que posteriormente se imprima la lista y las personas firmen.  Recuerde que deben existir o registrar personas y actividades.</p>
                        </div>
                        <div class="card-content" id="test18">
                          <p>Usted podrá generar reportes a partir de filtraciones.  Recuerde que deben existir o registrar asistencias.</p>
                        </div>


                        <div class="card-tabs">
                          <ul class="tabs tabs-fixed-width">
                            <li class="tab"><a class="active" href="#test17">Asistencia</a></li>
                            <li class="tab"><a href="#test18">Reportes</a></li>
                          </ul>
                        </div>

                        <div class="card-content grey lighten-4">
                            <a id="test17" href="ListInvitation.jsp">   -  Ir a Asistencia...   </a>  <a id="test18" href="ListReport.jsp">   -  Ir a Reportes...   </a>  
                        </div>
                   </div> 
            
               </div> 
                
           </div> 
        </p>
        
        <div class="card-action"> </div>
  
        </section>
        </div>
        
        <script src="Materialize/js/jquery-3.2.1.min.js"></script>
        <script src="Materialize/js/materialize.min.js"></script>
    </body>
</html>
