<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Próximas 2 linhas colocadas por João Caboclo -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
  <script type="text/javascript"  src="js/functions.js"></script>

    <input type="hidden"  id="idTmp" value="" />
    
	<h2>Locations:</h2>
	
	<table class="table table-striped table-dark">
		<tr>
			<th>Id</th>
			<th>Code</th>
			<th>Name</th>
			<th>Type</th>
			<th colspan="2" align="center">Action Buttons</th>
		</tr>

		<c:forEach items="${locations}" var="location">
			<tr>
			
				<td>${location.id}</td>
				<td>${location.code}</td>
				<td>${location.name}</td>
				<td>${location.type}</td>
			
 		     	<td><A class="btn btn-primary" href="deleteLocation?id=${location.id}">Delete</A></td>
            
				<td><A class="btn btn-primary"
					href="showUpdate?id=${location.id}">Edit</A></td>
			</tr>
		</c:forEach>
	</table>

	<div class="col col-lg-12">
		<br>
		<br> <a class="btn btn-primary" href="showCreate" role="button">Add
			Location</a>
	</div>

</body>
</html>