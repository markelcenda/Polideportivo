<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.ArrayList" %>
    <%@page import="modelo.bean.Usuario" %>
    
    <%
    ArrayList<Usuario> usuarios= (ArrayList<Usuario>) request.getAttribute("usuarios");
    %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>VerUsuarios</title>
  </head>
  <body>
  <div class="container">
  
  <h1 class="text-center">Usuarios</h1>
  
  <div class="row justify-content-center text-center mt-2">
  
  <div class="col">
  
  <table class="table table-striped table-bordered">
  
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">USUARIO</th>
      <th scope="col">DNI</th>
      <th scope="col">CODIGO</th>
    </tr>
  </thead>
  
  <%for(int i=0; i<usuarios.size(); i++){
	  Usuario usuario=usuarios.get(i);
   %>
   <tr>
  <td><%=usuario.getId() %></td>
  <td><a href="verUsuario?id=<%=usuario.getId()%>"><%=usuario.getNombreApellido()%></a></td>
  <td><%=usuario.getDni() %></td>
  <td><%=usuario.getCodigo() %></td>
  </tr>
  <% } %>
  
  
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