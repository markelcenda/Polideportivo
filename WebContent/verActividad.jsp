<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="modelo.bean.Actividad" %>
    
    <% Actividad actividad= (Actividad) request.getAttribute("actividad"); %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>VerActividad</title>
  </head>
  <body>
  <div class="container">
  
<div class="row justify-content-center mt-5 text-light text-center">

            <div class="col-12">

                <div class="jumbotron bg-info">

                    <div class="row vertical align-items-center">

                        <div class="col">
                            <h1><%=actividad.getNombre() %></h1>
                        </div>

                        <div class="col">
                            <h3>FECHA INICIO: <%=actividad.getFecha_inicio() %></h3>
                        </div>

                    </div>

                    <hr class="my-2 bg-white">
                    <div class="textua text-justify">
                        <h5>Dias semana: <%=actividad.getDias() %></h5>
                        <h5>Horas: <%=actividad.getHoras() %></h5>
                        <h5>Participantes Maximos: <%=actividad.getMaxParticipantes() %></h5>
                        <h5>Precio: <%=actividad.getPrecio() %></h5>
                    </div>
                                      
                        <a class="btn btn-primary btn-lg" href="#" role="button">Editar</a>
                        <a class="btn btn-primary btn-lg" href="#" role="button">Borrar</a>                         

                </div>
            </div>
            
            <div class="col-12">
            <a class="btn btn-primary btn-lg text-center" href="VerActividades" role="button">Volver</a>
            </div>
        </div>
  
  </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>