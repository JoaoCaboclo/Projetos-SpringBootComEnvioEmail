<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Próximas 2 linhas colocadas por João Caboclo -->    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
   <title>Create Location</title>
  <link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  
  <style>
.jumbotron {
	margin-top: 20px;
	width: 600px;
	text-align: left;
	margin-left: auto;
	margin-right: auto;
	height: 350px;
}

.table {
	margin-top: 20px;
}

.form-control {
	margin-bottom: 5px;
}

.selecionado {
	background-color: yellow;
}

.negrito {
	font-weight: bold;
}

.buttondemoBasicUsage section {
	border-radius: 3px;
	text-align: center;
	margin: 1em;
	position: relative !important;
}

.buttondemoBasicUsage section .md-button {
	margin-top: 16px;
	margin-bottom: 16px;
}

.buttondemoBasicUsage .label {
	position: absolute;
	bottom: 5px;
	left: 7px;
	font-size: 14px;
	opacity: 0.54;
}
</style>

</head>
<body>
 <div class="container; jumbotron">

    <h2 align="center">Localization Registration</h2>
    <br>
   <form  action="updateLoc" method="post">
   
        <div class="col col-lg-6" >
	        <label for="id">ID</label><br>
	        <input type="text" name="id" value="${location.id}" readonly />  
	    </div>
	    
      	<div class="col col-lg-6" >
	      <label for="code">Code</label><br>
		  <input type="text" name="code" value="${location.code}"/>
		</div>
		
      	<div class="col col-lg-6" >
		  <br>
		  <label for="name">Name</label><br>
		  <input type="text" name="name" value="${location.name}"  /> 
		</div>

      	<div class="col col-lg-6" >
		  <br>
		  <label for="type">Type</label><br>
		         Urban	<input type="radio" name="type" value="URBAN" ${location.type=='URBAN'?'checked':'' }    /> 
		         Rural <input type="radio" name="type" value="RURAL"  ${location.type=='RURAL'?'checked':'' }   /> 
		   
        </div>
           
       <div class="col col-lg-12" >
        </div>
      
      <div class="col col-lg-12" >
         <br>
         <button class="btn btn-primary" type="submit">save</button>
      </div> 

   </form>
   </div>
</body>
</html>