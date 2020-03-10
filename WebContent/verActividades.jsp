<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.ArrayList" %>
    <%@page import="modelo.bean.Actividad" %>
    
    <%
    ArrayList<Actividad> actividades= (ArrayList<Actividad>)request.getAttribute("actividades");
    %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Actividades</title>
  </head>
  <body>
  <div class="container">
  
  <h1 class="text-center">Actividades</h1>
  
  <div class="row justify-content-center mt-2 text-center">
  <div class="col">
  
 <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">NOMBRE</th>
      <th scope="col">FECHA INICIO</th>
      <th scope="col">DIAS SEMANA</th>
      <th scope="col">ACCIONES</th>
    </tr>
  </thead>
  <tbody>
  
  <%for(int i=0; i<actividades.size(); i++) {
  Actividad actividad=actividades.get(i);
  %>
  
    <tr>
      <th><%=actividad.getNombre() %></th>
      <td><%=actividad.getFecha_inicio() %></td>
      <td><%=actividad.getDias() %></td>
      <td>
      <a class="btn btn-primary btn-md" href="verActividad?id=<%=actividad.getId()%>">VER</a>
       <a class="btn btn-danger btn-md" href="EliminarActividad?id=<%=actividad.getId()%>" role="button">Borrar</a> 
      </td>
      
      
    </tr>
    
    <%} %>
  
  </tbody>
</table>
  
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