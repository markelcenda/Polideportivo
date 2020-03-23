<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>ActualizarActividad</title>
  </head>
  <body>
  <div class="container">
  
  <h1 class="text-center">Actualizar actividad</h1>
  
  <div class="row justify-content-center">
  
  <div class="col-8">
  
  <form action="ModificarActividad" method="POST">
  
  	<input type="hidden" name="id" value="${actividad.getId()}">
  	
  	 <div class="form-group">
    	<label for="nombre">Nombre Actividad:</label>
    	<input type="text" class="form-control" id="nombre" name="nombre" value="${actividad.getNombre()}">
    </div>
    
    <div class="form-group">
    	<label for="fecha_inicio">Fecha inicio:</label>
    	<input type="text" class="form-control" id="fecha_inicio" name="fecha_inicio" value="${actividad.getFecha_inicio()}" placeholder="yyyy//MM/dd">
    </div>
    
    <div class="form-group">
    	<label for="dias_semana">Dias semana:</label>
    	<input type="text" class="form-control" id="dias_semana" name="dias_semana" value="${actividad.getDias()}">
    </div>
    
    <div class="form-group">
    	<label for="horas">Duracion (Horas):</label>
    	<input type="text" class="form-control" id="horas" name="horas" value="${actividad.getHoras()}">
    </div>
    
    <div class="form-group">
    	<label for="max_participantes">Maximo numero de participantes:</label>
    	<input type="text" class="form-control" id="max_participantes" name="max_participantes" value="${actividad.getMaxParticipantes()}">
    </div>
    
    <div class="form-group">
    	<label for="precio">Precio:</label>
    	<input type="text" class="form-control" id="precio" name="precio" value="${actividad.getPrecio()}">
  	</div>
    
    
  	<button type="submit" class="btn btn-primary">Submit</button>
  	<a type="submit" href="VerActividades" class="btn btn-success">Cancelar</a>
  
  </form>
  
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